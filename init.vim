"Vim-Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jcd1230/nginx-vim-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-solarized8'
Plug 'jlanzarotta/bufexplorer'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/Quramy/tsuquyomi.git'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com/Quramy/vim-js-pretty-template.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/jason0x43/vim-js-indent.git'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/airblade/vim-rooter.git'
"Plug 'https://github.com/artur-shaik/vim-javacomplete2.git'
call plug#end()

set ff=unix
 
set virtualedit=block
let mapleader=" "
set incsearch
set hlsearch
"set list
"set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set guioptions-=T  "remove toolbar
set hidden
set backspace=indent,eol,start
set nu

" Indent after a line wrap
set breakindent

" Automatically reload changes on disk
set autoread

set termguicolors
"set rnu
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h10
syntax enable

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" started In Diff-Mode set diffexpr (plugin not loaded yet)
if &diff
    let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

set background=dark
colorscheme solarized8_dark

"Search for visually selected text
vnoremap <c-f> y<ESC>/<c-r>"<CR>
"Search for visually selected text (case insensitive)
vnoremap <c-s-f> y<ESC>/\c<c-r>"<CR>

"Ctrl+space word completion
inoremap <c-space> <c-p>
"Ctrl+del/backspace word deletion (<a-d> needed on iTerm)
imap <a-d> <c-o>dw
"imap <c-?> <c-o>db

noremap <s-tab> <esc>:bn<CR>

function StripWS()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWrite *.js,*.asp,*.css,*.html,*.htm :call StripWS()
autocmd Filetype javascript,typescript setlocal ts=2 sw=2 expandtab

"SQL Server Highlighting
let g:sql_type_default = "sqlserver"

"Airline settings
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

"For faster gitgutter updates
set updatetime=750


"Disable typescript-vim indentation
let g:typescript_indent_disable = 1

