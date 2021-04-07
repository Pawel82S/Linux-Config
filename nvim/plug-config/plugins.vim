call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'cespare/vim-toml'
Plug 'honza/vim-snippets'

" Telescope required:
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/planetary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'lunarwatcher/auto-pairs'
Plug 'rust-lang/rust.vim'
"Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
