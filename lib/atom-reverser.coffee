{CompositeDisposable} = require 'atom'

module.exports = AtomReverser =
    subscriptions: null
    keywords:
        # boolean
        "and": "nand"
        "or": "nor"
        "false": "true"
        "xnor": "xor"
        # brackets
        "(": ")"
        "[": "]"
        "{": "}"
        "<": ">"
        # events
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
        "big": "small"
        "body": "head"
        "del": "ins"
        "footer": "header"
        "noScript": "script"
        "ol": "ul"
        "tFoot": "tHead"
        # math
        "atan": "tan"
        "cos": "sin"
        "ceil": "floor"
        "Math.atan": "Math.tan"
        "Math.ceil": "Math.floor"
        "Math.cos": "Math.sin"
        "Math.exp": "Math.log"
        "Math.max": "Math.min"
        "max": "min"
        # network
        "client": "server"
        "connect": "disconnect"
        "offline": "online"
        # operators
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
        "left": "right"
        # react
        "addChangeListener": "removeChangeListener"
        "componentDidMount": "componentWillUnmount"
        # single characters
        "'": "\""
        "0": "1"
        "x": "y"
        # other
        "activate": "deactivate"
        "add": "remove"
        "after": "before"
        "background": "foreground"
        "column": "row"
        "delete": "insert"
        "destination": "source"
        "enabled": "disabled"
        "height": "width"
        "hidden": "visible"
        "hide": "show"
        "import": "export"
        "imports": "exports"
        "in": "out"
        "input": "output"
        "key": "value"
        "load": "unload"
        "next": "previous"
        "open": "close"
        "over": "under"
        "pause": "resume"
        "private": "public"
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
        currentCase = 'unknown';
        if string.toLowerCase() == string
            currentCase = 'lowercase'
        else if string.toUpperCase() == string
            currentCase = 'UPPERCASE'
        else if string[0].toLowerCase() == string[0]
            currentCase = 'camelCase'
        else if string[0].toUpperCase() == string[0]
            currentCase = 'TitleCase'
        return currentCase

    applyCase: (string, toCase) ->
        return string if string == false
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

            # If nothing is selected select the current word
            if text == ""
                selection.selectWord()
                text = selection.getText()

            # Save the current casing to restore it afterwards
            currentCase = @detectCase(text)
            text = text.toLowerCase()
            replacementText = @applyCase(@invertString(text), currentCase)

            if replacementText
                selection.insertText(replacementText, {select: true})
