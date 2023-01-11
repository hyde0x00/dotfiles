"
" https://github.com/junegunn/vim-plug/wiki/tips
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" ---

if filereadable(expand("~/.vim/autoload/plug.vim"))
call plug#begin('~/.local/share/vim/plugins')
	Plug 'tpope/vim-sleuth'

	Plug 'fatih/vim-go'
	Plug 'tomlion/vim-solidity'
	Plug 'rust-lang/rust.vim'

	Plug 'conradirwin/vim-bracketed-paste'
	Plug 'romainl/vim-cool'
	Plug 'PeterRincker/vim-searchlight'

	" Plug 'prabirshrestha/vim-lsp'
	" Plug 'mattn/vim-lsp-settings'
	" Plug 'tpope/vim-fugitive'
call plug#end()
endif

" ---

set clipboard=unnamedplus
set hidden

colorscheme x
syntax off

set background=dark
set t_Co=16

set hlsearch incsearch
set ignorecase smartcase

set autoindent
autocmd FileType * setlocal nocindent nosmartindent indentexpr=

set display=lastline
set nofoldenable
set laststatus=1
set shortmess+=IaoOtF
set splitright splitbelow
set synmaxcol=0
set title titlestring=%F
set wildmode=longest,list

" set number 
" set relativenumber 
" set cursorline

set wrap
" set linebreak
" let &showbreak = '↳ '

set nolist
set listchars=tab:│\ ,eol:\ ,trail:\ 
set listchars+=precedes:«,extends:»
"set fillchars+=lastline:\ 

set completeopt=""
set spelllang=en_us,ru_ru
set tags+=.tags

runtime! ftplugin/man.vim
set keywordprg=:Man

"if has("eval") | let g:loaded_matchparen=1 | endif

let loaded_netrwPlugin=0
let c_comment_strings=0
unlet c_comment_strings

set nobackup
set noswapfile
set nowritebackup

" ---

nnoremap <Esc>u :nohl<CR>
nnoremap <C-L> :nohl<CR><C-L>

nnoremap <Leader>n :%s///gn<CR>

nnoremap <Leader>d :w! /tmp/vimdiff<CR>:!_vim-diff %<CR><CR>
nnoremap <Leader>b :buffers<CR>

nnoremap <Leader>c :set ignorecase!<CR>:set ignorecase?<CR>
nnoremap <Leader>s :set spell!<CR>:set spell?<CR>
nnoremap <Leader>w :set wrap!<CR>:set wrap?<CR>

nnoremap <Leader>f !!fmt<CR>
nnoremap <Leader>F !!fmt -128<CR>
vnoremap <Leader>f !fmt<CR>
vnoremap <Leader>F !fmt -128<CR>

" ---

autocmd VimResized * wincmd =
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" italic 
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" undercurl
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

fu! GetSyntaxID()
  return synID(line('.'), col('.'), 1)
endfu

fu! GetSyntaxParentID()
  return synIDtrans(GetSyntaxID())
endfu

fu! GetSyntax()
  echo synIDattr(GetSyntaxID(), 'name')
  exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfu

nnoremap <Leader><Leader> :call GetSyntax()<CR>
