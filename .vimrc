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
call add(g:pathogen_disabled, 'emmet')
call add(g:pathogen_disabled, 'fugitive')
call add(g:pathogen_disabled, 'gundo')
call add(g:pathogen_disabled, 'indent-guides')
call add(g:pathogen_disabled, 'snipmate')
call add(g:pathogen_disabled, 'snipmate_snippets')
call add(g:pathogen_disabled, 'snipmate_tlib_vim')
call add(g:pathogen_disabled, 'snipmate_vim')
call add(g:pathogen_disabled, 'snipmate_vim')
call add(g:pathogen_disabled, 'surround')
call add(g:pathogen_disabled, 'theme_molokai')
call add(g:pathogen_disabled, 'syntastic')

" if !has('gui_running')
"     call add(g:pathogen_disabled, 'csscolor')
" endif
"
" " Gundo requires at least vim 7.3
" if v:version < '703' || !has('python')
"     call add(g:pathogen_disabled, 'gundo')
" endif
"
" if v:version < '702'
"     call add(g:pathogen_disabled, 'autocomplpop')
"     call add(g:pathogen_disabled, 'fuzzyfinder')
"     call add(g:pathogen_disabled, 'l9')
" endif
call pathogen#infect()
call pathogen#helptags()
call pathogen#surround(expand('~/jdotfiles/.vim/bundles/{}'))

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Google Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(glob("~/GoogleDrive/gdotfiles/.vimrc"))
  source ~/GoogleDrive/gdotfiles/.vimrc
endif
" if filereadable(glob("/usr/share/vim/google/google.vim"))
"   source /usr/share/vim/google/google.vim
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must-Have Features
set nocompatible

" Sets how many lines of history VIM has to remember
set history=10000

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax on

" default to python3
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_disabled_filetypes = '*'

" Self-defined filetypes
autocmd BufRead,BufNewFile *.less setfiletype css
autocmd BufRead,BufNewFile *.less set syntax=css

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ","
let mapleader = "\<space>"

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Remove/reduce the lag in VIM & TMUX
" set ttyfast

" Change the trigger for vim-snipmate
" imap <C-\> <Plug>snipMateNextOrTrigger
" smap <C-\> <Plug>snipMateNextOrTrigger

" Auto reload/resource .vimrc after each write/sav
autocmd! bufwritepost .vimrc source %

" no more netrwhist
:let g:netrw_dirhistmax = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
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

" Show partial commands in the last line of the screen
" set showcmd
" Height of the command bar
" set cmdheight=2

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


" Copy to system clipboard
if has('unix')
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    set clipboard=unnamed " For Mac OSX
  else
    set clipboard=unnamedplus
  endif
endif

" if $TMUX == ''
  " set clipboard=unnamed " For Mac OSX
  " set clipboard=unnamedplus " For Ubuntu
" endif

" have the visual selection autiomatically copied to the clipboard.
set go+=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has("gui_running")
    set background=dark
    set guioptions-=T "remove toolbar
    set guioptions+=e "no non-gui line tab?
    set guitablabel=%M\ %t
    " let g:molokai_original=1
    " let g:rehash256=1
    " let g:solarized_termcolors=256
    " let g:solarized_termtrans=1
    colorscheme solarized
" Powerline specific stuff
    set laststatus=2
    set guifont=Source\ Code\ Pro\ for\ Powerline
    let g:airline_theme='raven'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#branch#enabled=1
    let g:airline#extensions#syntastic#enabled=1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    let g:airline_symbols.space = "\ua0"
    " let g:airline_left_sep          = '>'
    " let g:airline_left_alt_sep      = '>'
    " let g:airline_right_sep         = '<'
    " let g:airline_right_alt_sep     = '<'
    " let g:airline_branch_prefix     = '|'
    " let g:airline_readonly_symbol   = '|'
    " let g:airline_linecolumn_prefix = '|'
else
    set background=dark
    " let g:molokai_original=1
    " let g:rehash256=1
    let g:solarized_termcolors=256
    let g:solarized_degrade=0
    let g:solarized_termtrans=1
    colorscheme solarized
    " hi IndentGuidesOdd  ctermbg=black
    " hi IndentGuidesEven ctermbg=darkgrey
    " hi IndentGuidesOdd  ctermbg=white " For light background
    " hi IndentGuidesEven ctermbg=lightgrey " For light background
" Powerline specific stuff
    set laststatus=2
    set guifont=Source\ Code\ Pro\ for\ Powerline
    let g:airline_theme='raven'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#branch#enabled=1
    let g:airline#extensions#syntastic#enabled=1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    " let g:airline_symbols.space = "\ua0"
    " let g:airline_left_sep          = '>'
    " let g:airline_left_alt_sep      = '>'
    " let g:airline_right_sep         = '<'
    " let g:airline_right_alt_sep     = '<'
    " let g:airline_branch_prefix     = '|'
    " let g:airline_readonly_symbol   = '|'
    " let g:airline_linecolumn_prefix = '|'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Encodings & Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab, indent, and text-wrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Auto indent
set autoindent

"Smart indent, does not-so-smart things with certain keywords
set smartindent

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
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader>c :noh<cr>

" Smart way to move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open splits in a more natural way
set splitbelow
set splitright

" Close the current buffer
" map <leader>bd :Bclose<cr>

" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>

" Move next and previous in buffers
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>

" Close buffer
nnoremap gd :bd<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

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
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" if has("mac") || has("macunix")
"   nmap <D-j> <M-j>
"   nmap <D-k> <M-k>
"   vmap <D-j> <M-j>
"   vmap <D-k> <M-k>
" endif

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
" nnoremap <C-L> :nohl<CR><C-L>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
"vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
"map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
" map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
" vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
" map <leader>cc :botright cope<cr>
" map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
" map <leader>n :cn<cr>
" map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>p :setlocal paste!<cr>
set pastetoggle=<leader>v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Additional
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99
set foldignore=
map <leader>t za

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
" set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
" set ofu=syntaxcomplete#Complete

" Remove trailing whitespace whenever :w command is executed
autocmd BufWritePre * :%s/\s\+$//e

" For handling trailing whitespaces
" command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
" command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
" nnoremap <F12>     :ShowSpaces 1<CR>
" nnoremap <S-F12>   m`:TrimSpaces<CR>``
" vnoremap <S-F12>   :TrimSpaces<CR>

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

" Reverse Letters (from vim.org)
vnoremap <silent> <Leader>is :<C-U>let old_reg_a=@a<CR>
 \:let old_reg=@"<CR>
 \gv"ay
 \:let @a=substitute(@a, '.\(.*\)\@=',
 \ '\=@a[strlen(submatch(1))]', 'g')<CR>
 \gvc<C-R>a<Esc>
 \:let @a=old_reg_a<CR>
 \:let @"=old_reg<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore .git5_specs
      \ --ignore review
      \ -g ""'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" NerdTree
nmap <leader>a :NERDTreeToggle<CR>

" Tagbar
nmap <leader>; :TagbarToggle<CR>

" Syntastic
let g:syntastic_python_checkers = ['gpylint']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

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

" Returns true if paste mode is enabled
" function! HasPaste()
"     if &paste
"         return 'PASTE MODE  '
"     en
"     return ''
" endfunction

" Don't close window, when deleting a buffer
" command! Bclose call <SID>BufcloseCloseIt()
" function! <SID>BufcloseCloseIt()
"    let l:currentBufNum = bufnr("%")
"    let l:alternateBufNum = bufnr("#")
"
"    if buflisted(l:alternateBufNum)
"      buffer #
"    else
"      bnext
"    endif
"
"    if bufnr("%") == l:currentBufNum
"      new
"    endif
"
"    if buflisted(l:currentBufNum)
"      execute("bdelete! ".l:currentBufNum)
"    endif
" endfunction

" function ShowSpaces(...)
"   let @/='\v(\s+$)|( +\ze\t)'
"   let oldhlsearch=&hlsearch
"   if !a:0
"     let &hlsearch=!&hlsearch
"   else
"     let &hlsearch=a:1
"   end
"   return oldhlsearch
" endfunction
"
" function TrimSpaces() range
"   let oldhlsearch=ShowSpaces(1)
"   execute a:firstline.",".a:lastline."substitute ///gec"
"   let &hlsearch=oldhlsearch
" endfunction
