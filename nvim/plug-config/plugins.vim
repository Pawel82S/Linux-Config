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
Plug 'junegunn/vim-easy-align'
Plug 'lunarwatcher/auto-pairs'
Plug 'rust-lang/rust.vim'

Plug 'Tetralux/odin.vim'
Plug 'ziglang/zig.vim'

Plug 'tpope/vim-fugitive'
"Plug 'ctrlpvim/ctrlp.vim'

" OpenGL syntax
Plug 'Eric-Song-Nop/vim-glslx'

call plug#end()
