const gulp = require("gulp");
const replace = require("gulp-replace");
const _ = require("lodash");
const keywords = require("./lib/keywords.json");

/**
 * This gulp task updates README.md with the current keyword list. The
 * keywords are taken directly from the keywords.json file.
 */
gulp.task('readme', function() {
    let output = `## List of keywords\n`;

    _.forEach(keywords, (values, category) => {
      output += `### ${category}\n`;
      output += `| Keyword1 | Keyword2 |\n`;
      output += `|:----------|:---------|\n`;

      _.forEach(values, (firstKeyword, secondKeyword) => {
        output += `| ${firstKeyword} | ${secondKeyword} |\n`;
      });
      output += `\n`;
    });

    gulp.src(["./README.md"])
      .pipe(replace(/## List of keywords[\s\S]*$/, output))
      .pipe(gulp.dest("./",{"overwrite": true}));
});
