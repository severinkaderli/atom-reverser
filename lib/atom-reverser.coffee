'use babel';

{CompositeDisposable} = require "atom"
keywordList = require "./keywords.json"

keywords = {}
for key, value of keywordList
  keywords = Object.assign(keywords, value)

module.exports = AtomReverser =
    subscriptions: null
    keywords: keywords


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
