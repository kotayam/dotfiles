# Tmux Config

My personal tmux config.

---

## Installation

### 1. Clone this repo

```bash
git clone git@github.com:kotayam/tmux-conf.git
```

### 2. Run setup.sh

```bash
cd tmux-conf
chmod +x setup.sh
./setup.sh
```

### 3. Install packages in tmux

```bash
tmux
# Then press:
Prefix + I
```

---

## Features

- TPM (Package Manager)
- Catppuccin theme
- Seamless navigation with `vim-tmux-navigator`
- Easy copy with `tmux-yank`
- Mouse support enabled
- Vi-style key bindings in copy mode

---

## File Structure

tmux-conf/  
├── README.md # This file.  
├── setup.sh # Installer.  
└── tmux.conf # Main tmux config.
