let mapleader=" "
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
Plug 'Valloric/YouCompleteMe'
Plug 'iamcco/markdown-preview.nvim'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
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

" ===
" " === MarkdownPreview
" " ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
        \ 'katex': {},
            \ 'uml': {},
                \ 'maid': {},
                    \ 'disable_sync_scroll': 0,
                        \ 'sync_scroll_type': 'middle',
                            \ 'hide_yaml_meta': 1
                                \ }
                                let g:mkdp_markdown_css = ''
                                let g:mkdp_highlight_css = ''
                                let g:mkdp_port = ''
                                let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>
