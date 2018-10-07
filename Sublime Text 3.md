# Sublime Text 3 Configurations

## Post Install

### macOS
Add the command line alias:
```shell
ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

### Font
[FiraCode](https://github.com/tonsky/FiraCode)

### Config file
```json
{
  "font_face": "Fira Code",
  "font_options":
  [
    "subpixel_antialias"
  ],
  "auto_complete": true,
  "auto_complete_commit_on_tab": true,
  "copy_with_empty_selection": true,
  "ensure_newline_at_eof_on_save": true,
  "index_files": true,
  "rulers":
  [
    100
  ],
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "word_separators": "./\\()\"'-:,.;<>~@#$%^&*|+=[]{}`~"
}
```
SublimeLinter
### Plugins
* [All Autocomplete](https://github.com/alienhard/SublimeAllAutocomplete)
* [MarkdownPreview](https://github.com/facelessuser/MarkdownPreview)
    - Set shortcut: `{ "keys": ["alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser":"markdown"} }`
* [RailsGoToSpec](https://github.com/sporto/rails_go_to_spec) :heart:
* [RSpec](https://github.com/SublimeText/RSpec)
* [SublimeLinter](https://github.com/SublimeLinter/SublimeLinter)
* [SublimeLinter-rubocop](https://github.com/SublimeLinter/SublimeLinter-rubocop)
* [SublimeLinter-ruby](https://github.com/SublimeLinter/SublimeLinter-ruby)
