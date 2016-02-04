{CompositeDisposable} = require 'atom'

module.exports = AtomReverser =
    subscriptions: null

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
        # TODO: Add more keyword combinations
        # TODO: Optimize this piece of code
        if string == "true"
            return "false"
        if string == "false"
            return "true"

        if string == "1"
            return "0"
        if string == "0"
            return "1"

        if string == "x"
            return "y"
        if string == "y"
            return "x"

        if string == "width"
            return "height"
        if string == "height"
            return "width"

        if string == "("
            return ")"
        if string == ")"
            return "("

        if string == "["
            return "]"
        if string == "]"
            return "["

        if string == "{"
            return "}"
        if string == "}"
            return "{"

        return false

    reverse: ->
        editor = @getActiveEditor(  )
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
