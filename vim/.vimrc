set nocompatible
set backspace=indent,eol,start
set autoread
set hidden
filetype plugin on
set wildmenu
set undodir=~/.vim/undodir
set undofile
"HTML autoindent
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
"syntax enable
set noshowcmd
set showmatch
set encoding=UTF-8
set noshowmode
set sw=2
set laststatus=2
"set ft=javascript
set confirm

" turn hybrid line numbers on
set number relativenumber
set nu rnu

"VimIcons
"set guifont=Fira\ Code\ iScript\ Regular\ 11
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_conceal_nerdtree_brackets=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1

"Config preview-markdown.vim
let g:preview_markdown_vertical=1
let g:preview_markdown_parser='glow'

"GitGutter
let g:gitgutter_map_keys=0

call plug#begin('~/.vim/plugged')
"IDE
Plug 'junegunn/fzf', {'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim' "búsqueda de archivos
Plug 'airblade/vim-rooter' "Mover el proyecto al root
Plug 'easymotion/vim-easymotion' "Moverse dentro del archivo
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ryanoasis/vim-webdevicons'
Plug 'prettier/vim-prettier', {'do': 'npm install'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' "Integración con git 
Plug 'tpope/vim-rhubarb' "Comando para ir a github
Plug 'tpope/vim-surround'
Plug 'junegunn/gv.vim' "comando para ver navegador de commits
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'edkolev/tmuxline.vim'
Plug 'machakann/vim-highlightedyank'  "YankHighlight
Plug 'ekalinin/dockerfile.vim' " Syntax file and Snippets for docker
Plug 'kkvh/vim-docker-tools' " Docker Tools
Plug 'tpope/vim-commentary' " VimCommentary
Plug 'skanehira/preview-markdown.vim' " Markdown preview
Plug 'ap/vim-css-color' "CSS Colors
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Yggdroot/indentLine' " IndentLine
Plug 'junegunn/vim-peekaboo' "Clipboard tool
Plug 'roxma/vim-window-resize-easy' 
Plug 'kassio/neoterm' "Terminal wrapper
call plug#end()

"Color Scheme
set background=dark
colorscheme happy_hacking

"Insert Brackets
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha

"Terminal normal mode
if has('nvim')
  tnoremap <A-[> <C-\><C-n>
  "Switching between split windows:
  tnoremap <A-h> <c-\><c-n><c-w>h
  tnoremap <A-j> <c-\><c-n><c-w>j
  tnoremap <A-k> <c-\><c-n><c-w>k
  tnoremap <A-l> <c-\><c-n><c-w>l
  nnoremap <A-h> <c-w>h
  nnoremap <A-j> <c-w>j
  nnoremap <A-k> <c-w>k
  nnoremap <A-l> <c-w>l
"  tnoremap <Tab> <C-\><C-n>:bn<CR>
"  tnoremap <S-Tab> <C-\><C-n>:bp<CR>
endif

"Ignore teminal buffer
augroup termIgnore
    autocmd!
    autocmd TermOpen * set nobuflisted
augroup END

"Block NerdTree window
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif

"Clear search
nnoremap <A-/> :noh<CR>

"Using jk or kj to scape
inoremap jk <Esc>
inoremap kj <Esc>

"Neoterm
"Split teminal on right side
:set splitright
let g:neoterm_default_mod='vertical'
"Send commands to the terminal"
nnoremap <F6> :normal vip<CR> :TREPLSendSelection<CR>
nnoremap <leader>h :TtoggleAll<CR> 

"More confing on ~/.config/nvim/plug-config
