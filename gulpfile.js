const gulp = require("gulp")
const replace = require("gulp-replace")
const escape = require("markdown-escape")
const keywords = require("./lib/keywords.json")

/**
 * This gulp task updates README.md with the current keyword list. The
 * keywords are taken directly from the keywords.json file.
 */
gulp.task('readme', () => {
    let output = `## List of keywords\n\n`

    Object
      .keys(keywords)
      .sort()
      .forEach(category => {
        const values = keywords[category]

        // sort b: a => a: b

        const sortedByKey = Object
          .keys(values)
          .map(firstKeyword => {
            let secondKeyword = keywords[category][firstKeyword]

            if (firstKeyword.localeCompare(secondKeyword) > 0) {
              // sort keywords if not sorted
              [firstKeyword, secondKeyword] = [secondKeyword, firstKeyword]
              console.warn(`unsorted keyword in category ${category}: ${secondKeyword} <=> ${firstKeyword}`)
            }

            return [firstKeyword, secondKeyword]
          })

        // sort by first keyword

        const sortedByKeyword = sortedByKey
          .sort(([first,], [second,]) => first.localeCompare(second) > 0)
          .map(([ // escape keywords
            firstKeyword,
            secondKeyword
          ]) => [
            escape(firstKeyword),
            escape(secondKeyword)
          ])

        // calculate proper length for padding

        const [firstLength, secondLength] = sortedByKeyword.reduce((
          [previousA, previousB],
          [currentA, currentB]
        ) => [ // find maximum length
          Math.max(previousA, currentA.length),
          Math.max(previousB, currentB.length)
        ], [ // initial values, from table-header
          8,
          8
        ])

        // write table header

        output += `### ${escape(category)}\n`
        output += '\n'
        output += `| Keyword1${' '.repeat(firstLength - 8)} | Keyword2${' '.repeat(secondLength - 8)} |\n`
        output += `|:${'-'.repeat(firstLength)}-|:${'-'.repeat(secondLength)}-|\n`

        // write table body

        output += sortedByKeyword
          .map(([first, second]) => `| ${first}${' '.repeat(firstLength - first.length)} | ${second}${' '.repeat(secondLength - second.length)} |`)
          .join('\n')

        // close block

        output += '\n\n'
      })

    gulp.src(["./README.md"])
      .pipe(replace(/## List of keywords[\s\S]*$/, output))
      .pipe(gulp.dest("./",{"overwrite": true}))
})
