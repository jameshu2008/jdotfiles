"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => James's Vim Configuration
" 2013/04/28
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Call the pathogen plugin (for managing the installation of other plugins,
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" very Important to install this first before installing any other plugins!!!)
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'YouCompleteMe')

call pathogen#infect()
call pathogen#helptags()
call pathogen#surround(expand('~/jdotfiles/.vim/bundles/{}'))


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Google Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(glob("~/GoogleDrive/gdotfiles/.vimrc"))
  source ~/GoogleDrive/gdotfiles/.vimrc
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must-Have Features
set nocompatible

" Sets how many lines of history VIM has to remember
set history=5000

" default to python3
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_disabled_filetypes = '*'

" Self-defined filetypes
autocmd BufRead,BufNewFile *.less setfiletype css
autocmd BufRead,BufNewFile *.less set syntax=css

" Set to auto read when a file is changed from the outside
set autoread

" Remove/reduce the lag in VIM & TMUX
" set ttyfast

" Auto reload/resource .vimrc after each write/sav
autocmd! bufwritepost .vimrc source %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" no more netrwhist
:let g:netrw_dirhistmax = 0

" Copy to system clipboard
if has('unix')
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    set clipboard=unnamed " For Mac OSX
  else
    set clipboard=unnamedplus
  endif
endif

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax on

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
"
" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch
"
" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
"
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" have the visual selection autiomatically copied to the clipboard.
set go+=a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visuals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
let python_highlight_all = 1

" Set extra options when running in GUI mode
if has("gui_running")
    set background=dark
    set guioptions-=T "remove toolbar
    set guioptions+=e "no non-gui line tab?
    set guitablabel=%M\ %t
    let g:rehash256=1
    " let g:solarized_termcolors=256
    " let g:solarized_termtrans=1
    colorscheme solarized
    set laststatus=2
    set guifont=Source\ Code\ Pro\ for\ Powerline
else
    set background=dark
    let g:rehash256=1
    let g:solarized_termcolors=256
    let g:solarized_degrade=0
    let g:solarized_termtrans=1
    colorscheme solarized
    " Powerline specific stuff
    set laststatus=2
    set guifont=Source\ Code\ Pro\ for\ Powerline
endif

" Airline settings.
let g:airline_theme='raven'
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Folding options
set foldmethod=indent
set foldlevel=99
set foldignore=
map <leader>t za



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab, indent, and text-wrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto indent
set autoindent

"Smart indent, does not-so-smart things with certain keywords
set smartindent
" set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Use spaces instead of tabs, ALWAYS use this
set expandtab

" 1 tab == 2 spaces
set tabstop=4
set shiftwidth=2 " for indentations
set softtabstop=2 " for tab with spaces (vs tabstop), takes precedence over tabstop

" Text Wrap options
set nowrap
set textwidth=78
set formatoptions=cq
set wrapmargin=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader>c :noh<cr>
nnoremap <C-L> :nohl<CR><C-L>

" Smart way to move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open splits in a more natural way
set splitbelow
set splitright

" Move next and previous in buffers
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>

" Close buffer
nnoremap gd :bd<cr>
" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>

" Quickly open a buffer for scribble.
map <leader>q :e ~/buffer<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" let mapleader = ","

let mapleader = "\<space>"
" Remap VIM 0 to first non-blank character
map 0 ^

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy
map Y y$

" Toggle paste mode on and off
" map <leader>p :setlocal paste!<cr>
set pastetoggle=<F2>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Additional
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove trailing whitespace whenever :w command is executed
autocmd BufWritePre * :%s/\s\+$//e

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
if has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=200
else
    set timeout
    set timeoutlen=1000
    set ttimeout
    set ttimeoutlen=0
    augroup FastEscape
            autocmd!
            au InsertEnter * set timeoutlen=0
            au InsertLeave * set timeoutlen=1000
    augroup END
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
  " set runtimepath^=~/.vim/bundle/ctrlp.vim
  " let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  "       \ --ignore .git
  "       \ --ignore .svn
  "       \ --ignore .hg
  "       \ --ignore .DS_Store
  "       \ --ignore "**/*.pyc"
  "       \ --ignore .git5_specs
  "       \ --ignore review
  "       \ -g ""'
  " let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" NerdTree
  nmap <leader>a :NERDTreeToggle<CR>

" Tagbar
  nmap <leader>; :TagbarToggle<CR>

" Syntastic
  let g:syntastic_python_checkers = ['gpylint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Functions/Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
  " Mappings
  vnoremap <silent> * :call VisualSelection('f')<CR>
  vnoremap <silent> # :call VisualSelection('b')<CR>

  " Helper Function.
  function! CmdLine(str)
      exe "menu Foo.Bar :" . a:str
      emenu Foo.Bar
      unmenu Foo
  endfunction

  " Helper Function.
  function! VisualSelection(direction) range
      let l:saved_reg = @"
      execute "normal! vgvy"

      let l:pattern = escape(@", '\\/.*$^~[]')
      let l:pattern = substitute(l:pattern, "\n$", "", "")

      if a:direction == 'b'
          execute "normal ?" . l:pattern . "^M"
      elseif a:direction == 'gv'
          call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
      elseif a:direction == 'replace'
          call CmdLine("%s" . '/'. l:pattern . '/')
      elseif a:direction == 'f'
          execute "normal /" . l:pattern . "^M"
      endif

      let @/ = l:pattern
      let @" = l:saved_reg
  endfunction

" Reverse Letters (from vim.org)
vnoremap <silent> <Leader>is :<C-U>let old_reg_a=@a<CR>
 \:let old_reg=@"<CR>
 \gv"ay
 \:let @a=substitute(@a, '.\(.*\)\@=',
 \ '\=@a[strlen(submatch(1))]', 'g')<CR>
 \gvc<C-R>a<Esc>
 \:let @a=old_reg_a<CR>
 \:let @"=old_reg<CR>
