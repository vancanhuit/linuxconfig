" Basic settings
set number
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set clipboard+=unnamedplus

" Vim-Plug manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', {'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"source ~/.config/nvim/coc.vim

" Plugin settings
colorscheme dracula

hi! Normal ctermbg=NONE guibg=NONE

let g:airline_powerline_fonts=1
