inoremap jj <Esc>`^
:set nu 
syntax on 
set hlsearch 
set background=dark
colorscheme hybrid
set cursorline
set showcmd
set scrolloff=5

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()

" ==
" " ==snazzy 
" " ==
color snazzy
let g:SnazzyTransparent = 1

" ==
" " == NERDTree
" " ==
map tt :NERDTreeToggle<CR>

" ==
" " == NERDTree-git
" " ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


