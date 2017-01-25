# atom-reverser

[![Plugin installs](https://img.shields.io/apm/dm/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)
[![Package version](https://img.shields.io/apm/v/atom-reverser.svg?style=flat-square)](https://atom.io/packages/atom-reverser)

Atom package that reverses your current selections; e.g. false to true etc.

![Atom Reverser in action](https://i.imgur.com/YawGVsN.gif)

## Install

```sh
apm install atom-reverser
```

## Contribution
If you want to add new keywords just add them to ./lib/keywords.json and then run
```sh
gulp readme
```
to update README.md with the new keywords. Then you can open a pull request and I will most likely merge it.
## Usage

| OS X                                             | Windows / Linux                               | Description |
|:-------------------------------------------------|:----------------------------------------------|:------------|
| <kbd>Command</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | Toggle      |


## List of keywords
### Arrays
| Keyword1 | Keyword2 |
|:---------|:---------|
| split | join |
| push | pop |
| reduceRight | reduce |
| unshift | shift |

### Boolean
| Keyword1 | Keyword2 |
|:---------|:---------|
| nand | and |
| true | false |
| or | nor |
| xor | xnor |

### Brackets
| Keyword1 | Keyword2 |
|:---------|:---------|
| \) | \( |
| \] | \[ |
| } | { |
| &gt; | &lt; |

### CSS
| Keyword1 | Keyword2 |
|:---------|:---------|
| relative | absolute |

### Crypto
| Keyword1 | Keyword2 |
|:---------|:---------|
| decipher | cipher |
| encrypt | decrypt |
| encrypted | decrypted |
| verify | sign |

### DOM
| Keyword1 | Keyword2 |
|:---------|:---------|
| decipher | cipher |
| encrypt | decrypt |
| encrypted | decrypted |
| verify | sign |

### Events
| Keyword1 | Keyword2 |
|:---------|:---------|
| removeEventListener | addEventListener |
| audioStart | audioEnd |
| focus | blur |
| drop | drag |
| dragLeave | dragEnter |
| keyUp | keyDown |
| mouseUp | mouseDown |
| mouseLeave | mouseEnter |
| mouseOver | mouseOut |
| onMouseUp | onMouseDown |
| onMouseLeave | onMouseEnter |
| onMouseOver | onMouseOut |
| pageShow | pageHide |
| speechStart | speechEnd |
| touchStart | touchEnd |

### HTML
| Keyword1 | Keyword2 |
|:---------|:---------|
| head | body |
| ins | del |
| header | footer |
| script | noScript |
| ul | ol |
| tHead | tFoot |

### JSON
| Keyword1 | Keyword2 |
|:---------|:---------|
| JSON.stringify | JSON.parse |
| stringify | parse |

### Math
| Keyword1 | Keyword2 |
|:---------|:---------|
| tan | atan |
| floor | ceil |
| sin | cos |
| Math.tan | Math.atan |
| Math.floor | Math.ceil |
| Math.sin | Math.cos |
| Math.log | Math.exp |
| Math.min | Math.max |
| min | max |

### Network
| Keyword1 | Keyword2 |
|:---------|:---------|
| 127.0.0.1 | 0.0.0.0 |
| port | address |
| server | client |
| disconnect | connect |
| disconnected | connected |
| online | offline |

### Number
| Keyword1 | Keyword2 |
|:---------|:---------|
| MIN\_SAFE\_INTEGER | MAX\_SAFE\_INTEGER |
| MIN\_VALUE | MAX\_VALUE |
| POSITIVE\_INFINITY | NEGATIVE\_INFINITY |
| Number.MIN\_SAFE\_INTEGER | Number.MAX\_SAFE\_INTEGER |
| Number.MIN\_VALUE | Number.MAX\_VALUE |
| Number.POSITIVE\_,INFINITY | Number.NEGATIVE\_INFINITY |
| Number.parseFloat | Number.parseInt |
| parseFloat | parseInt |

### Operators
| Keyword1 | Keyword2 |
|:---------|:---------|
| ~ | ! |
| / | \* |
| /= | \*= |
| &#124; | & |
| &#124;&#124; | && |
| &#124;= | &= |
| \- | \+ |
| \-\- | \+\+ |
| \-= | \+= |
| &gt;&gt; | &lt;&lt; |
| &gt;&gt;= | &lt;&lt;= |
| &gt;= | &lt;= |
| != | == |
| !== | === |

### positions
| Keyword1 | Keyword2 |
|:---------|:---------|
| top | bottom |
| up | down |
| vertical | horizontal |
| outer | inner |
| right | left |

### react
| Keyword1 | Keyword2 |
|:---------|:---------|
| removeChangeListener | addChangeListener |
| componentWillUnmount | componentDidMount |
| hydrate | dehydrate |
| setState | getState |

### Single characters
| Keyword1 | Keyword2 |
|:---------|:---------|
| 1 | 0 |
| " | ' |
| y | x |

### Other
| Keyword1 | Keyword2 |
|:---------|:---------|
| {} | \[\] |
| deactivate | activate |
| passive | active |
| remove | add |
| before | after |
| argv | argc |
| unavailable | available |
| foreground | background |
| white | black |
| parent | child |
| open | close |
| row | column |
| let | const |
| insert | delete |
| source | destination |
| disable | enable |
| disabled | enabled |
| import | export |
| imports | exports |
| internal | external |
| folder | file |
| last | first |
| to | from |
| set | get |
| width | height |
| visible | hidden |
| show | hide |
| low | high |
| possible | impossible |
| out | in |
| output | input |
| uninstall | install |
| valid | invalid |
| value | key |
| small | large |
| smallest | largest |
| unlink | link |
| unload | load |
| short | long |
| minor | major |
| positive | negative |
| previous | next |
| yes | no |
| on | off |
| under | over |
| resume | pause |
| suffix | prefix |
| secondary | primary |
| println | print |
| private | public |
| res | req |
| response | request |
| parallel | serial |
| stop | start |
| this | that |

