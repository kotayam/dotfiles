# Dotfiles

My personal dotfiles.

## Installation

Install the following applications.

- `stow`
- `vim`
- `neovim`
- `tmux`
- `lazygit`

You can run the `install.sh`.

```bash
sudo chmod +x ./install.sh
./install.sh
```

## Setup

Setup the dotfiles by running `setup.sh`.
This configures Bash aliases, Vim, Neovim, Lazygit, and tmux.

```bash
sudo chmod +x ./setup.sh
./setup.sh
```

## Utilities

`bin/mp4tomp3` extracts the first audio stream from an MP4 as a high-quality
variable-bitrate MP3. Requires `ffmpeg` with the `libmp3lame` encoder.

```bash
bin/mp4tomp3 "video.mp4"                   # Creates video.mp3 beside the input
bin/mp4tomp3 "video.mp4" -o "audio.mp3"   # Choose an output path
bin/mp4tomp3 --help
```

Existing output files are never overwritten.

`bin/svgtopdf` converts an SVG file to PDF. Requires `rsvg-convert`
(from librsvg).

```bash
bin/svgtopdf "drawing.svg"                    # Creates drawing.pdf beside the input
bin/svgtopdf "drawing.svg" -o "output.pdf"    # Choose an output path
bin/svgtopdf --help
```

Existing output files are never overwritten.

`bin/compresspdf` compresses a PDF using Ghostscript (`gs`). The default
`ebook` preset balances file size and image quality.

```bash
bin/compresspdf "document.pdf"                       # Creates document-compressed.pdf
bin/compresspdf "document.pdf" -o "smaller.pdf"       # Choose an output path
bin/compresspdf "document.pdf" -q screen              # Favor smaller files
bin/compresspdf --help
```

Presets: `ebook` (default), `screen`, `printer`, and `prepress`.
Compression may reduce image quality and may not shrink every PDF. The source
is preserved and existing output files are never overwritten.
