{CompositeDisposable} = require 'atom'

module.exports = AtomReverser =
    subscriptions: null
    keywords:
        "true": "false"
        "false": "true"
        "1": "0"
        "0": "1"
        "x": "y"
        "y": "x"
        "width": "height"
        "height": "width"
        "(": ")"
        ")": "("
        "[": "]"
        "]": "["
        "{": "}"
        "}": "{"
        "+": "-"
        "-": "+"
        "*": "/"
        "/": "*"
        "up": "down"
        "down": "up"
        "left": "right"
        "right": "left"
        "top": "bottom"
        "bottom": "top"
        "hidden": "visible"
        "visible": "hidden"
        "'": "\""
        "\"": "'"

    activate: (state) ->
        # Register command that toggles this view
        @subscriptions = new CompositeDisposable
        @subscriptions.add atom.commands.add 'atom-workspace',
            'atom-reverser:reverse': => @reverse()

    deactivate: ->
        @subscriptions.dispose()

    getActiveEditor: ->
        atom.workspace.getActiveTextEditor()

    invertString: (string) ->
        if @keywords[string] != undefined
            return @keywords[string]

        return false

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


            # TODO: Save the current casing to restore it afterwards
            text = text.toLowerCase()
            replacementText = @invertString(text)

            if replacementText
                selection.insertText(replacementText)

            # Keep selections
            selection.selectWord()

            #TODO: Format the text using the correct casing
