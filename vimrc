set encoding=utf-8
set nocompatible " be iMproved, required

call plug#begin('$HOME/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rodjek/vim-puppet'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-sleuth'
Plug 'hail2u/vim-css3-syntax'
Plug 'kchmck/vim-coffee-script'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
call plug#end()

syntax on
filetype on
filetype plugin on
filetype indent on
set paste
set t_Co=256
set background=dark
set t_RV=
set nobackup
set novisualbell
set visualbell t_vb=
set ruler
set nu rnu
set showcmd
set showmode
set scrolloff=10
set backspace=indent,eol,start
set showmatch
set matchtime=1
set hlsearch
set incsearch
set ignorecase
set smartcase
set expandtab
set smarttab
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set list listchars=eol:¬,tab:▸\ ,trail:.,
set history=200

" Highlight Current Line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Key Map
:map Y y$
let mapleader=","
noremap \ ,
noremap H gT
noremap L gt

" Leader Key Map
nmap <silent> <leader>1  :NERDTreeToggle<CR>
nmap <silent> <leader>2  :CtrlSF<space>
nmap <silent> <leader>3  :CtrlSFOpen<CR>
nmap <silent> <leader>4  :TagbarToggle<CR>

nmap <silent> <leader>b  :CtrlPBuffer<CR>
nmap <silent> <leader>l  :Gblame<CR>
nmap <silent> <leader>o  :Explore<CR>
nmap <silent> <leader>q  :wq<CR>
nmap <silent> <leader>r  :NERDTreeFind<CR>
nmap <silent> <leader>t  :tabnew<CR>
nmap <silent> <leader>w  :w<CR>
nmap <silent> <leader>y  "*y
nmap <silent> <leader>p  "*p
nnoremap <silent> <C-l>  :<C-u>nohlsearch<CR><C-l>

" Choose Theme
colorscheme smyck

" Make Comments And Special Characters Look Better
highlight Comment    ctermfg=245 guifg=#8a8a8a
highlight NonText    ctermfg=240 guifg=#585858
highlight SpecialKey ctermfg=240 guifg=#585858

"Set Filetype
autocmd BufRead,BufNewFile *.md set filetype=markdown

"---------- BEGIN OF SETTING PLUGIN -----------

" Vim-Javascript
let g:javascript_enable_domhtmlcss      = 1
let g:javascript_ignore_javaScriptdoc   = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left=0

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Nerdtree
let NERDChristmasTree=1
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" let g:NERDTreeShowHidden=1
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" YouCompleteMe
" keep the vim compile python, ycm compile python and ycm_path_to_python_interpreter the same
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Syntastic
let g:syntastic_check_on_open = 0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
"---------- END OF SETTING PLUGIN ----------



"---------- BEGIN OF SETTING PROJECT ----------
"Ctags
" fix E433:No tags file
" 这样定义后，只要在项目目录下的任何文件都能找到tags
" au BufEnter ~/ekohe_work/pyro/* setlocal tags+=~/ekohe_work/pyro/.git/tags
"---------- END OF SETTING PROJECT ----------

" For X11
set clipboard=unnamedplus
