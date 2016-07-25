# atom-reverser

[![Plugin installs](https://img.shields.io/apm/dm/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)
[![Package version](https://img.shields.io/apm/v/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)

Atom package that reverses your current selections; e.g. false to true etc.

![Atom Reverser in action](https://i.imgur.com/YawGVsN.gif)

## Install

```sh
apm install atom-reverser
```

## List of reversible keywords

### Array
| Keyword 1 | Keyword 2   |
|:----------|:------------|
| join      | split       |
| push      | pop         |
| reduce    | reduceRight |
| shift     | unshift     |

### Boolean
| Keyword 1 | Keyword 2 |
|:----------|:----------|
| and       | nand      |
| false     | true      |
| or        | nor       |
| xnor      | xor       |

### Brackets
| Keyword 1 | Keyword 2 |
|:----------|:----------|
| (         | )         |
| [         | ]         |
| {         | }         |
| <         | >         |

### DOM
| Keyword 1      | Keyword 2            |
|:---------------|:---------------------|
| getElementById | getElementsByTagName |

### Events
| Keyword 1    | Keyword 2    |
|:-------------|:-------------|
| audioEnd     | audioStart   |
| blur         | focus        |
| drag         | drop         |
| dragEnter    | dragLeave    |
| keyDown      | keyUp        |
| mouseDown    | mouseUp      |
| mouseEnter   | mouseLeave   |
| mouseOut     | mouseOver    |
| onMouseDown  | onMouseUp    |
| onMouseEnter | onMouseLeave |
| onMouseOut   | onMouseOver  |
| pageHide     | pageShow     |
| speechEnd    | speechStart  |
| touchEnd     | touchStart   |

### HTML
| Keyword 1 | Keyword 2 |
|:----------|:----------|
| body      | head      |
| del       | ins       |
| footer    | header    |
| noScript  | script    |
| ol        | ul        |
| tFoot     | tHead     |

### JSON
| Keyword 1  | Keyword 2      |
|:-----------|:---------------|
| JSON.parse | JSON.stringify |
| parse      | stringify      |

### Math
| Keyword 1 | Keyword 2  |
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
| Keyword 1 | Keyword 2  |
|:----------|:-----------|
| 0.0.0.0   | 127.0.0.1  |
| address   | port       |
| client    | server     |
| connect   | disconnect |
| offline   | online     |

### Number
| Keyword 1                | Keyword 2                |
|:-------------------------|:-------------------------|
| MAX_SAFE_INTEGER         | MIN_SAFE_INTEGER         |
| MAX_VALUE                | MIN_VALUE                |
| NEGATIVE_INFINITY        | POSITIVE_INFINITY        |
| Number.MAX_SAFE_INTEGER  | Number.MIN_SAFE_INTEGER  |
| Number.MAX_VALUE         | Number.MIN_VALUE         |
| Number.NEGATIVE_INFINITY | Number.POSITIVE_INFINITY |
| Number.parseInt          | Number.parseFloat        |
| parseInt                 | parseFloat               |

### Operators
| Keyword 1 | Keyword 2    |
|:----------|:-------------|
| !         | ~            |
| *         | /            |
| *=        | /=           |
| &         | &#124;       |
| &&        | &#124;&#124; |
| &=        | &#124;=      |
| +         | -            |
| ++        | --           |
| +=        | -=           |
| <<        | >>           |
| <<=       | >>=          |
| <=        | >=           |
| ==        | !=           |
| ===       | !==          |

### Positions
| Keyword 1 | Keyword 2 |
|:----------|:----------|
| bottom    | top       |
| down      | up        |
| left      | right     |

### React
| Keyword 1         | Keyword 2            |
|:------------------|:---------------------|
| addChangeListener | removeChangeListener |
| componentDidMount | componentWillUnmount |
| dehydrate         | hydrate              |
| getState          | setState             |

### Single Characters
| Keyword 1 | Keyword 2 |
|:----------|:----------|
| '         | "         |
| 0         | 1         |
| x         | y         |

### Other
| Keyword 1   | Keyword 2   |
|:------------|:------------|
| []          | {}          |
| activate    | deactivate  |
| add         | remove      |
| after       | before      |
| available   | unavailable |
| background  | foreground  |
| black       | white       |
| child       | parent      |
| close       | open        |
| column      | row         |
| const       | let         |
| delete      | insert      |
| destination | source      |
| enabled     | disabled    |
| export      | import      |
| exports     | imports     |
| external    | internal    |
| first       | last        |
| file        | folder      |
| from        | to          |
| get         | set         |
| height      | width       |
| hidden      | visible     |
| hide        | show        |
| high        | low         |
| in          | out         |
| input       | output      |
| install     | uninstall   |
| key         | value       |
| large       | small       |
| largest     | smallest    |
| link        | unlink      |
| load        | unload      |
| long        | short       |
| major       | minor       |
| next        | previous    |
| no          | yes         |
| off         | on          |
| open        | close       |
| over        | under       |
| pause       | resume      |
| prefix      | suffix      |
| primary     | secondary   |
| print       | println     |
| public      | private     |
| req         | res         |
| request     | response    |
| serial      | parallel    |
| start       | stop        |
| that        | this        |

### Usage

| OS X                                             | Windows / Linux                               | Description |
|:-------------------------------------------------|:----------------------------------------------|:------------|
| <kbd>Command</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | Toggle      |
