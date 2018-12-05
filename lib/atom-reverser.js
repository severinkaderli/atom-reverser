"use babel";

import { CompositeDisposable } from "atom";
import keywordList from "./keywords.json";

let keywords = {};
for (const [key, value] of Object.entries(keywordList)) {
    keywords = Object.assign(keywords, value);
}

export default {
    subscriptions: null,
    keywords,

    activate(state) {
        // Add reversed keywords
        for (const [key, value] of Object.entries(this.keywords)) {
            this.keywords[value] = key;
        }

        this.subscriptions = new CompositeDisposable();
        this.subscriptions.add(
            atom.commands.add("atom-workspace", {
                "atom-reverser:reverse": () => this.reverse()
            })
        );
    },

    deactivate() {
        this.subscriptions.dispose();
    },

    getActiveEditor() {
        return atom.workspace.getActiveTextEditor();
    },

    invertString(string) {
        for (const [key, value] of Object.entries(this.keywords)) {
            if (key.toLowerCase() == string) {
                return value;
            }
        }

        return false;
    },

    detectCase(string) {
        if (string.toLowerCase() === string) {
            return "lowercase";
        }

        if (string.toUpperCase() === string) {
            return "UPPERCASE";
        }

        if (string[0].toLowerCase() === string[0]) {
            return "camelCase";
        }

        if (string[0].toUpperCase() === string[0]) {
            return "TitleCase";
        }

        return "Unknown";
    },

    applyCase(string, toCase) {
        if (!string) {
            return false;
        }

        switch (toCase) {
            case "lowercase":
                return string.toLowerCase();
            case "UPPERCASE":
                return string.toUpperCase();
            case "camelCase":
                return string;
            case "TitleCase":
                return string[0].toUpperCase() + string.substring(1);
            default:
                return string;
        }
    },

    reverse() {
        const editor = this.getActiveEditor();
        if (!editor) {
            return;
        }

        const selections = editor.getSelections();

        for (let selection of selections) {
            let text = selection.getText();
            let userSelected = true;

            // If nothing is selected select the current word
            if (!text) {
                selection.selectWord();
                text = selection.getText();
                userSelected = false;
            }

            // Save the current casing to restore it afterwards
            const currentCase = this.detectCase(text);
            text = text.toLowerCase();
            const replacementText = this.applyCase(this.invertString(text), currentCase);

            if (replacementText) {
                selection.insertText(replacementText, { select: userSelected });
            }
        }
    }
};
