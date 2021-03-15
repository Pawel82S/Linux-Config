set rnu " Realative line numbers
set nu " Show current line number
set nohlsearch " No highlight searching
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap " Disable text line wrapping
set scrolloff=8 " Scrool buffer when you are X lines from top/bottom
set colorcolumn=100 " Bar displayed at X column of text in buffer

if executable('rg')
	let g:rg_derive_root='true'
endif

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Leader key:
let mapleader = " "


source $HOME/.config/nvim/plug-config/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
"source $HOME/.config/nvim/plug-config/nerd-tree.vim
source $HOME/.config/nvim/plug-config/fzf.vim


colorscheme gruvbox
nnoremap <C-p> :Files<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup PAUL82S
    " Clear auto commands from this group so each of them will exist just once.
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.rs :RustFmt
augroup end
