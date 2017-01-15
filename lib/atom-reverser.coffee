{CompositeDisposable} = require 'atom'

module.exports = AtomReverser =
    subscriptions: null
    keywords:
        # array
        "join": "split"
        "pop": "push"
        "reduce": "reduceRight"
        "shift": "unshift"
        # boolean
        "and": "nand"
        "false": "true"
        "nor": "or"
        "xnor": "xor"
        # brackets
        "(": ")"
        "[": "]"
        "{": "}"
        "<": ">"
        # css
        "absolute": "relative"
        # crypto
        "cipher": "decipher"
        "decrypt": "encrypt"
        "decrypted": "encrypted"
        "sign": "verify"
        # dom
        "getElementById": "getElementsByTagName"
        # events
        "addEventListener": "removeEventListener"
        "audioEnd": "audioStart"
        "blur": "focus"
        "drag": "drop"
        "dragEnter": "dragLeave"
        "keyDown": "keyUp"
        "mouseDown": "mouseUp"
        "mouseEnter": "mouseLeave"
        "mouseOut": "mouseOver"
        "onMouseDown": "onMouseUp"
        "onMouseEnter": "onMouseLeave"
        "onMouseOut": "onMouseOver"
        "pageHide": "pageShow"
        "speechEnd": "speechStart"
        "touchEnd": "touchStart"
        # html
        "body": "head"
        "del": "ins"
        "footer": "header"
        "noScript": "script"
        "ol": "ul"
        "tFoot": "tHead"
        # json
        "JSON.parse": "JSON.stringify"
        "parse": "stringify"
        # math
        "atan": "tan"
        "ceil": "floor"
        "cos": "sin"
        "Math.atan": "Math.tan"
        "Math.ceil": "Math.floor"
        "Math.cos": "Math.sin"
        "Math.exp": "Math.log"
        "Math.max": "Math.min"
        "max": "min"
        # network
        "0.0.0.0": "127.0.0.1"
        "address": "port"
        "client": "server"
        "connect": "disconnect"
        "connected": "disconnected"
        "offline": "online"
        # number
        "MAX_SAFE_INTEGER": "MIN_SAFE_INTEGER"
        "MAX_VALUE": "MIN_VALUE"
        "NEGATIVE_INFINITY": "POSITIVE_INFINITY"
        "Number.MAX_SAFE_INTEGER": "Number.MIN_SAFE_INTEGER"
        "Number.MAX_VALUE": "Number.MIN_VALUE"
        "Number.NEGATIVE_INFINITY": "Number.POSITIVE_INFINITY"
        "Number.parseInt": "Number.parseFloat"
        "parseInt": "parseFloat"
        # operators
        "!": "~"
        "*": "/"
        "*=": "/="
        "&": "|"
        "&&": "||"
        "&=": "|="
        "+": "-"
        "++": "--"
        "+=": "-="
        "<<": ">>"
        "<<=": ">>="
        "<=": ">="
        "==": "!="
        "===": "!=="
        # positions
        "bottom": "top"
        "down": "up"
        "horizontal": "vertical"
        "inner": "outer"
        "left": "right"
        # react
        "addChangeListener": "removeChangeListener"
        "componentDidMount": "componentWillUnmount"
        "dehydrate": "hydrate"
        "getState": "setState"
        # single characters
        "'": "\""
        "0": "1"
        "x": "y"
        # other
        "[]": "{}"
        "activate": "deactivate"
        "active": "passive"
        "add": "remove"
        "after": "before"
        "argc": "argv"
        "available": "unavailable"
        "background": "foreground"
        "black": "white"
        "child": "parent"
        "close": "open"
        "column": "row"
        "const": "let"
        "delete": "insert"
        "destination": "source"
        "enabled": "disabled"
        "export": "import"
        "exports": "imports"
        "external": "internal"
        "file": "folder"
        "first": "last"
        "from": "to"
        "get": "set"
        "height": "width"
        "hidden": "visible"
        "hide": "show"
        "high": "low"
        "impossible": "possible"
        "in": "out"
        "input": "output"
        "install": "uninstall"
        "invalid": "valid"
        "key": "value"
        "large": "small"
        "largest": "smallest"
        "link": "unlink"
        "load": "unload"
        "long": "short"
        "major": "minor"
        "negative": "positive"
        "next": "previous"
        "no": "yes"
        "off": "on"
        "over": "under"
        "pause": "resume"
        "prefix": "suffix"
        "primary": "secondary"
        "print": "println"
        "public": "private"
        "req": "res"
        "request": "response"
        "serial": "parallel"
        "start": "stop"
        "that": "this"

    activate: (state) ->
        # Also add reversed keywords
        @keywords[value] = key for key, value of @keywords

        # Register command that toggles this view
        @subscriptions = new CompositeDisposable
        @subscriptions.add atom.commands.add 'atom-workspace',
            'atom-reverser:reverse': => @reverse()

    deactivate: ->
        @subscriptions.dispose()

    getActiveEditor: ->
        atom.workspace.getActiveTextEditor()

    invertString: (string) ->
        for key, value of @keywords
            if key.toLowerCase() == string
                return value

        return false

    detectCase: (string) ->
        if string.toLowerCase() == string
            return 'lowercase'
        else if string.toUpperCase() == string
            return 'UPPERCASE'
        else if string[0].toLowerCase() == string[0]
            return 'camelCase'
        else if string[0].toUpperCase() == string[0]
            return 'TitleCase'
        else
            return 'unknown'

    applyCase: (string, toCase) ->
        return false unless string
        switch toCase
            when "lowercase"
                return string.toLowerCase()
            when "UPPERCASE"
                return string.toUpperCase()
            when "camelCase"
                return string
            when "TitleCase"
                return string[0].toUpperCase() + string.substring(1)
            else
                return string

    reverse: ->
        editor = @getActiveEditor()
        return unless editor

        selections = editor.getSelections()

        for selection in selections
            do (selection) ->
            text = selection.getText()
            userSelected = true;

            # If nothing is selected select the current word
            if !text
                selection.selectWord()
                text = selection.getText()
                userSelected = false

            # Save the current casing to restore it afterwards
            currentCase = @detectCase(text)
            text = text.toLowerCase()
            replacementText = @applyCase(@invertString(text), currentCase)

            if replacementText
                selection.insertText(replacementText, {select: userSelected})
