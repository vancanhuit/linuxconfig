" Basic settings
set number
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set clipboard+=unnamedplus

let g:python3_host_prog = "/usr/bin/python3"

" Vim-Plug manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', {'as': 'dracula' }

call plug#end()

" Plugin settings
colorscheme dracula

hi! Normal ctermbg=NONE guibg=NONE

let g:airline_powerline_fonts = 1

