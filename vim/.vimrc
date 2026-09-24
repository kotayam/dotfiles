" Basic Vim key mappings, kept in sync with nvim/.config/nvim/lua/config/remap.lua.

let mapleader = " "

" Exit insert mode with kj.
inoremap kj <Esc>

" Open the file explorer.
nnoremap <leader>pv :Ex<CR>

" Move selected lines while preserving the selection and indentation.
xnoremap J :move '>+1<CR>gv=gv
xnoremap K :move '<-2<CR>gv=gv

" Keep navigation and search results centered.
nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Start and end of line.
nnoremap H ^
nnoremap L $

" Yank to the system clipboard when Vim has clipboard support.
nnoremap <leader>y "+y
xnoremap <leader>y "+y
nnoremap <leader>Y "+Y
