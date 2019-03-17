# Atom
## Setup
For the Atom editor, I use the [FiraCode](https://github.com/tonsky/FiraCode/wiki/Atom-instructions) font.

To enable the ligatures, place the following in the `Edit->Stylesheet...` menu:

```css
atom-text-editor {
  text-rendering: optimizeLegibility;
}

atom-text-editor.editor .syntax--string.syntax--quoted,
atom-text-editor.editor .syntax--string.syntax--regexp {
  -webkit-font-feature-settings: "liga" off, "calt" off;
}
```

and then change the font (`ctr + ,` and `Editor`) to `Fira Code Light`


## Plugins

- Emmet
- Linter
  - Ruby Linter
  - ERB Linter
- Atom Beautify
- Teletype
- Highlight Selected
- File Icons
- Pigments
- AutoClose Html
- Git Blame
- Minimap
