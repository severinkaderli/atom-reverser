# atom-reverser
Atom package that reverses your current selections; e.g. `false` to `true` etc.

![Atom Reverser in action](https://imgur.com/TrhwQz9.gif)

## Install

```sh
apm install atom-reverser
```

## Usage

| macOS                                            | Windows / Linux                               | Description |
| :----------------------------------------------- | :-------------------------------------------- | :---------- |
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
| \(       | \)       |
| \[       | \]       |
| {        | }        |
| &lt;     | &gt;     |

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
| addEventListener | removeEventListener |
| audioEnd         | audioStart          |
| blur             | focus               |
| drag             | drop                |
| dragEnter        | dragLeave           |
| keyDown          | keyUp               |
| mouseDown        | mouseUp             |
| mouseEnter       | mouseLeave          |
| mouseOut         | mouseOver           |
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
| login     | logout       |
| offline   | online       |
| password  | username     |

### Number

| Keyword1                  | Keyword2                  |
|:--------------------------|:--------------------------|
| MAX\_SAFE\_INTEGER        | MIN\_SAFE\_INTEGER        |
| MAX\_VALUE                | MIN\_VALUE                |
| NEGATIVE\_INFINITY        | POSITIVE\_INFINITY        |
| Number.MAX\_SAFE\_INTEGER | Number.MIN\_SAFE\_INTEGER |
| Number.MAX\_VALUE         | Number.MIN\_VALUE         |
| Number.NEGATIVE\_INFINITY | Number.POSITIVE\_INFINITY |
| Number.parseFloat         | Number.parseInt           |
| parseFloat                | parseInt                  |

### Operators

| Keyword1  | Keyword2     |
|:----------|:-------------|
| \-        | \+           |
| \-\-      | \+\+         |
| \-=       | \+=          |
| !         | ~            |
| !=        | ==           |
| !==       | ===          |
| \*        | /            |
| \*=       | /=           |
| &         | &#124;       |
| &&        | &#124;&#124; |
| &=        | &#124;=      |
| &lt;&lt;  | &gt;&gt;     |
| &lt;&lt;= | &gt;&gt;=    |
| &lt;=     | &gt;=        |

### Other

| Keyword1    | Keyword2    |
|:------------|:------------|
| \[\]        | {}          |
| activate    | deactivate  |
| active      | passive     |
| add         | remove      |
| after       | before      |
| argc        | argv        |
| available   | unavailable |
| background  | foreground  |
| black       | white       |
| child       | parent      |
| close       | open        |
| column      | row         |
| const       | let         |
| delete      | insert      |
| destination | source      |
| disable     | enable      |
| disabled    | enabled     |
| export      | import      |
| exports     | imports     |
| external    | internal    |
| file        | folder      |
| first       | last        |
| from        | to          |
| get         | set         |
| height      | width       |
| hidden      | visible     |
| hide        | show        |
| high        | low         |
| impossible  | possible    |
| in          | out         |
| input       | output      |
| install     | uninstall   |
| invalid     | valid       |
| key         | value       |
| large       | small       |
| largest     | smallest    |
| link        | unlink      |
| load        | unload      |
| long        | short       |
| major       | minor       |
| negative    | positive    |
| next        | previous    |
| no          | yes         |
| off         | on          |
| over        | under       |
| parallel    | serial      |
| pause       | resume      |
| prefix      | suffix      |
| primary     | secondary   |
| print       | println     |
| private     | public      |
| req         | res         |
| request     | response    |
| start       | stop        |
| that        | this        |

### Positions

| Keyword1   | Keyword2 |
|:-----------|:---------|
| bottom     | top      |
| down       | up       |
| horizontal | vertical |
| inner      | outer    |
| left       | right    |

### React

| Keyword1          | Keyword2             |
|:------------------|:---------------------|
| addChangeListener | removeChangeListener |
| componentDidMount | componentWillUnmount |
| dehydrate         | hydrate              |
| getState          | setState             |

### Single Characters

| Keyword1 | Keyword2 |
|:---------|:---------|
| '        | "        |
| 0        | 1        |
| x        | y        |

