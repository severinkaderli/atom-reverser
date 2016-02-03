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
                if text == "true"
                    selection.insertText("false")
                if text == "false"
                    selection.insertText("true")
