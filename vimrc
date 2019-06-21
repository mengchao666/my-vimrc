inoremap jj <Esc>`^
:set nu 
syntax on 
set hlsearch 
set background=dark
colorscheme hybrid
set cursorline
set showcmd
set scrolloff=5
set tabstop=4
:highlight Normal guibg=Black

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


autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: 孟超")
        call append(line(".")+2, "\# mail: 2205101365@qq.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Author: 孟超")
        call append(line(".")+2, "    > Mail: 2205101365@qq.com ")
        call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
        call append(line(".")+8, "int main()")
        call append(line(".")+9, "{")
        call append(line(".")+10, "")
        call append(line(".")+11, "}")
        call append(line(".")+12, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc
