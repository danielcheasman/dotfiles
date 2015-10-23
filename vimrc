set nocompatible

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set mouse=a
" Set the colour scheme
colorscheme mustang

" vim-gitgutter colours
highlight NonText ctermfg=black guifg=black ctermbg=black
highlight clear SignColumn
highlight GitGutterAdd guibg=black

let NERDTreeDirArrows = 1

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>m :NERDTreeFind<CR>

" ctrl s save :-)
inoremap <silent> <C-s> <esc>:w<cr>a
nnoremap <silent> <C-s> :w<cr>a

inoremap <silent> <C-q> <esc>:q<CR>
nnoremap <silent> <C-q> :q<CR>

inoremap <silent> <C-Q> <esc>:q!<CR>
nnoremap <silent> <C-Q> :q!<CR>


set nowrap        " don't wrap lines
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mod
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on
" autoindenting
set number
" always show line numbers
" set shiftwidth=4  " number of spaces to use for
" autoindenting
"set shiftround    " use multiple of shiftwidth when
			   " indenting with '<' and '>'
"set showmatch     " set show matching parenthesis
"set ignorecase    " ignore case when searching

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set nobackup
set noswapfile


" ,v = Paste
map <Leader>v "+gP

" ,c = Copy
map <Leader>c "+y

" H = Home, L = End
noremap H ^
noremap L $
vnoremap L g_

"------  Window Navigation  ------
" ,hljk = Move between windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k

"------  Buffer Navigation  ------
" Ctrl Left/h & Right/l cycle between buffers
"noremap <silent> <C-left> :bprev<CR>
"noremap <silent> <C-h> :bprev<CR>
"noremap <silent> <C-right> :bnext<CR>
"noremap <silent> <C-l> :bnext<CR>

" ,q Closes the current buffer
nnoremap <silent> <Leader>q :bd<CR>

" ,Q Closes the current window
nnoremap <silent> <Leader>Q <C-w>c

" Set composer command.
let g:phpcomplete_index_composer_command = "composer"

set pastetoggle=<F2>

nnoremap ; :

let g:airline_powerline_fonts = 1 
set encoding=utf-8
let g:Powerline_symbols="fancy"

set vb
set ruler

set laststatus=2
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_detect_modified=1
let g:airline_detect_paste=1

let g:airline#extensions#tmuxline#enabled = 0

let g:airline_mode_map = {
	\ 'n' : 'N',
	\ 'i' : 'I',
	\ 'R' : 'R',
	\ 'c' : 'C',
	\ 'v' : 'V',
	\ 'V' : 'V',
	\ '^V' : 'V',
	\ 's' : 'S',
	\ 'S' : 'S',
	\ '^S' : 'S',
	\ }

" Buffers as tabs!
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set hidden

" Open new empty buffer
nmap <leader>T :enew<CR>
nmap <leader>a :bnext<CR>
nmap <leader>z :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
