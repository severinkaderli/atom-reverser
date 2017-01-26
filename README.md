# atom-reverser

[![Plugin installs](https://img.shields.io/apm/dm/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)
[![Package version](https://img.shields.io/apm/v/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)

Atom package that reverses your current selections; e.g. `false` to `true` etc.

![Atom Reverser in action](https://i.imgur.com/YawGVsN.gif)

## Install

```sh
apm install atom-reverser
```

## Contribution

If you want to add new keywords just add them to [./lib/keywords.json](./lib/keywords.json) and then run

```sh
gulp readme
```

to update `README.md` with the new keywords. Then you can open a pull request and I will most likely merge it.

## Usage

| macOS                                            | Windows / Linux                               | Description |
|:-------------------------------------------------|:----------------------------------------------|:------------|
| <kbd>Command</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | Toggle      |


## List of keywords

### Arrays

| Keyword1 | Keyword2    |
|:---------|:------------|
| join     | split       |
| pop      | push        |
| reduce   | reduceRight |
| shift    | unshift     |

### Boolean

| Keyword1 | Keyword2 |
|:---------|:---------|
| and      | nand     |
| false    | true     |
| nor      | or       |
| xnor     | xor      |

### Brackets

| Keyword1 | Keyword2 |
|:---------|:---------|
| (        | )        |
| [        | ]        |
| {        | }        |
| <        | >        |

### CSS

| Keyword1 | Keyword2 |
|:---------|:---------|
| absolute | relative |

### Crypto

| Keyword1  | Keyword2  |
|:----------|:----------|
| cipher    | decipher  |
| decrypt   | encrypt   |
| decrypted | encrypted |
| sign      | verify    |

### DOM

| Keyword1  | Keyword2  |
|:----------|:----------|
| cipher    | decipher  |
| decrypt   | encrypt   |
| decrypted | encrypted |
| sign      | verify    |

### Events

| Keyword1         | Keyword2            |
|:-----------------|:--------------------|
| mouseEnter       | mouseLeave          |
| addEventListener | removeEventListener |
| mouseOut         | mouseOver           |
| blur             | focus               |
| audioEnd         | audioStart          |
| drag             | drop                |
| dragEnter        | dragLeave           |
| keyDown          | keyUp               |
| mouseDown        | mouseUp             |
| onMouseDown      | onMouseUp           |
| onMouseEnter     | onMouseLeave        |
| onMouseOut       | onMouseOver         |
| pageHide         | pageShow            |
| speechEnd        | speechStart         |
| touchEnd         | touchStart          |

### HTML

| Keyword1 | Keyword2 |
|:---------|:---------|
| body     | head     |
| del      | ins      |
| footer   | header   |
| noScript | script   |
| ol       | ul       |
| tFoot    | tHead    |

### JSON

| Keyword1   | Keyword2       |
|:-----------|:---------------|
| JSON.parse | JSON.stringify |
| parse      | stringify      |

### Math

| Keyword1  | Keyword2   |
|:----------|:-----------|
| atan      | tan        |
| ceil      | floor      |
| cos       | sin        |
| Math.atan | Math.tan   |
| Math.ceil | Math.floor |
| Math.cos  | Math.sin   |
| Math.exp  | Math.log   |
| Math.max  | Math.min   |
| max       | min        |

### Network

| Keyword1  | Keyword2     |
|:----------|:-------------|
| 0.0.0.0   | 127.0.0.1    |
| address   | port         |
| client    | server       |
| connect   | disconnect   |
| connected | disconnected |
| offline   | online       |

### Number

| Keyword1                 | Keyword2                  |
|:-------------------------|:--------------------------|
| MAX_SAFE_INTEGER         | MIN_SAFE_INTEGER          |
| MAX_VALUE                | MIN_VALUE                 |
| NEGATIVE_INFINITY        | POSITIVE_INFINITY         |
| Number.MAX_SAFE_INTEGER  | Number.MIN_SAFE_INTEGER   |
| Number.MAX_VALUE         | Number.MIN_VALUE          |
| Number.NEGATIVE_INFINITY | Number.POSITIVE_,INFINITY |
| Number.parseFloat        | Number.parseInt           |
| parseFloat               | parseInt                  |

### Operators

| Keyword1 | Keyword2 |
|:---------|:---------|
| --       | ++       |
| !        | ~        |
| -=       | +=       |
| -        | +        |
| !=       | ==       |
| !==      | ===      |
| *        | /        |
| *=       | /=       |
| &        | |        |
| &&       | ||       |
| &=       | |=       |
| <<       | >>       |
| <<=      | >>=      |
| <=       | >=       |

### Other

| Keyword1    | Keyword2    |
|:------------|:------------|
| high        | low         |
| []          | {}          |
| impossible  | possible    |
| active      | passive     |
| activate    | deactivate  |
| input       | output      |
| argc        | argv        |
| add         | remove      |
| after       | before      |
| invalid     | valid       |
| child       | parent      |
| available   | unavailable |
| background  | foreground  |
| black       | white       |
| large       | small       |
| destination | source      |
| close       | open        |
| column      | row         |
| const       | let         |
| delete      | insert      |
| load        | unload      |
| file        | folder      |
| disable     | enable      |
| disabled    | enabled     |
| export      | import      |
| exports     | imports     |
| external    | internal    |
| next        | previous    |
| hide        | show        |
| hidden      | visible     |
| height      | width       |
| first       | last        |
| get         | set         |
| from        | to          |
| over        | under       |
| key         | value       |
| in          | out         |
| install     | uninstall   |
| prefix      | suffix      |
| long        | short       |
| largest     | smallest    |
| link        | unlink      |
| print       | println     |
| no          | yes         |
| negative    | positive    |
| major       | minor       |
| off         | on          |
| parallel    | serial      |
| pause       | resume      |
| primary     | secondary   |
| private     | public      |
| req         | res         |
| request     | response    |
| start       | stop        |
| that        | this        |

### Single characters

| Keyword1 | Keyword2 |
|:---------|:---------|
| '        | "        |
| 0        | 1        |
| x        | y        |

### positions

| Keyword1   | Keyword2 |
|:-----------|:---------|
| bottom     | top      |
| down       | up       |
| horizontal | vertical |
| inner      | outer    |
| left       | right    |

### react

| Keyword1          | Keyword2             |
|:------------------|:---------------------|
| addChangeListener | removeChangeListener |
| componentDidMount | componentWillUnmount |
| dehydrate         | hydrate              |
| getState          | setState             |
