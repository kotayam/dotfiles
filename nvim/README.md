# Neovim Config

My personal neovim config.

---

## Installation

### 1. Clone this repo

```bash
git clone git@github.com:kotayam/neovim-config.git
```

### 2. Run setup.sh

```bash
cd neovim-config
chmod +x setup.sh
./setup.sh
```

## Features

---

## LaTeX

LaTeX editing uses VimTeX, Tree-sitter, and the TeXLab language server. Install
the following system dependencies before opening a LaTeX project:

```bash
# Fedora
sudo dnf install latexmk texlive-scheme-medium zathura zathura-pdf-mupdf

# Ubuntu/Debian
sudo apt install latexmk texlive-latex-extra zathura zathura-pdf-poppler
```

Open the project's main `.tex` file, then use VimTeX's default local-leader
commands (the local leader is `\\`):

- `\\ll` starts `latexmk` continuous compilation.
- `\\lv` opens the compiled PDF in Zathura. It reloads as compilation succeeds.
- `\\lk` stops compilation.

TeXLab is installed automatically by Mason when Neovim starts. It provides
completion, references, hover information, and diagnostics.

## File Structure

neovim-config/  
├── init.lua  
├── lazy-lock.json  
├── lua # Configs.  
├── README.md # This file.  
└── setup.sh # Installer.
