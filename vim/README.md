# Vim Config

Basic Vim key mappings mirrored from the Neovim configuration.
Syntax highlighting and filetype-specific plugins and indentation are enabled.

## Installation

Run the repository's setup script from its root:

```bash
./setup.sh
```

This Stow package installs the configuration as `~/.vimrc`.

## Mappings

- `kj` exits insert mode.
- `<Space>pv` opens Vim's built-in file explorer.
- Visual `J` and `K` move selected lines down and up while retaining the selection.
- `J`, `<C-d>`, `<C-u>`, `n`, and `N` keep the cursor or search result centered.
- `H` and `L` jump to the first non-blank character and end of line.
- `<Space>y` and `<Space>Y` yank to the system clipboard when Vim was compiled with `+clipboard`.
