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

                # TODO: Add more keyword combinations
                # TODO: Optimize this piece of code
                if text == "true"
                    return selection.insertText("false")
                if text == "false"
                    return selection.insertText("true")

                if text == "x"
                    return selection.insertText("y")
                if text == "y"
                    return selection.insertText("x")

                if text == "width"
                    return selection.insertText("height")
                if text == "height"
                    return selection.insertText("width")
