set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set termencoding=utf-8

set tabstop=2                         " spaces per tab
set softtabstop=2
set shiftwidth=2                      " spaces per tab (when shifting)
set expandtab                         " always use spaces instead of tabs

set matchtime=1
set ttyfast

set wrap                            " no wrap
set signcolumn=yes
set textwidth=80
" set colorcolumn=+1
" let &colorcolumn=join([&colorcolumn,81] + range(101,999), ',')

set virtualedit=block

" This works with project specific `.local.vim` files, need to check why if I move
" to an autoload function it doesn't work
augroup MyLongLinesHighlight
  autocmd!
  autocmd BufWinEnter,BufEnter ?* call utils#setOverLength()
  autocmd OptionSet textwidth call utils#setOverLength()
  autocmd BufWinEnter,BufEnter * match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'  " highlight VCS conflict markers
augroup END

syntax sync minlines=256              " start highlighting from 256 lines backwards
set synmaxcol=300                     " do not highlight very long lines

set noshowmode                        " Don't Display the mode you're in. since it's already shown on the statusline
set signcolumn=yes

" show a navigable menu for tab completion
set nowildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc
set wildignore+=*.swp,*~,*/.DS_Store
set wildignorecase
set tagcase=followscs

if has('nvim-0.4')
  set wildoptions=pum
endif

if has('nvim-0.4')
  set pumblend=10
endif

if has('nvim-0.4')
  set pumheight=50
endif

if has('syntax')
  set spellcapcheck=                  " don't check for capital letters at start of sentence
  " https://robots.thoughtbot.com/opt-in-project-specific-vim-spell-checking-and-word-completion
  set spelllang=en_us,nl
  set spellsuggest=30
  let &spellfile=$VIMHOME.'/spell/en.utf-8.add'
endif

set complete+=kspell

" Disable unsafe commands.
" Only run autocommands owned by me
" http://andrew.stwrt.ca/posts/project-specific-vimrc/
set secure

set cursorline
if has('virtualedit')
  set virtualedit=block               " allow cursor to move where there is no text in visual block mode
endif
set whichwrap=b,h,l,s,<,>,[,],~       " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries

set completeopt+=menuone
set completeopt+=noinsert
set completeopt-=preview

set lazyredraw                        " don't bother updating screen during macro playback

" highlight matching [{()}]
set showmatch
set title
set mouse=a

" More natural splitting
set splitbelow
set splitright
set smarttab
set notimeout
set ttimeout
set nostartofline
if exists('&fixeol')
  set nofixeol
endif
set winwidth=30 " Set minimal width for current window.
set winheight=1 " Set minimal height for current window.
set cmdheight=2
set cmdwinheight=5 " Set maximam maximam command line window.
set noequalalways " No equal window size.
set previewheight=8 " Adjust window size of preview and help.
set helpheight=12



" Ignore case in search.
set ignorecase smartcase
set nohlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set magic " For regular expressions turn magic on


" fix slight delay after pressing ESC then O http://ksjoberg.com/vim-esckeys.html
" set timeout timeoutlen=500 ttimeoutlen=100
" set timeoutlen=1000 ttimeoutlen=0

if !has('nvim') && (v:version > 703 || v:version == 703 && has('patch541'))
  set formatoptions+=j                " remove comment leader when joining comment lines
endif
set formatoptions+=n                  " smart auto-indenting inside numbered lists
set formatoptions+=r1

" No beeping.
set visualbell

" No flashing.
set noerrorbells

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=5
set sidescrolloff=5

" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=3

" yank and paste with the system clipboard
set clipboard+=unnamedplus

" show trailing whitespace
set list
set listchars=nbsp:░,tab:\|\ ,extends:»,precedes:«,trail:•
set nojoinspaces
set concealcursor=n

if has('windows')
  set fillchars=diff:⣿                " BOX DRAWINGS
  set fillchars+=vert:┃               " HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  set fillchars+=fold:─
  if has('nvim')
    set fillchars=eob:\                 " Hide end of buffer ~
  endif
endif

" Configure fold status text
if has('folding')
  set foldtext=utils#NeatFoldText()
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if has('linebreak')
  let &showbreak='↳  '                " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

" show where you are
set ruler

set hidden

" Make tilde command behave like an operator.
set tildeop

" Make sure diffs are always opened in vertical splits, also match my git settings
set diffopt+=vertical,algorithm:histogram,indent-heuristic
call utils#customize_diff()

set shortmess+=A                      " ignore annoying swapfile messages
set shortmess+=I                      " no splash screen
set shortmess+=O                      " file-read message overwrites previous
set shortmess+=T                      " truncate non-file messages in middle
set shortmess+=W                      " don't echo "[w]"/"[written]" when writing
set shortmess+=a                      " use abbreviations in messages eg. `[RO]` instead of `[readonly]`
set shortmess+=o                      " overwrite file-written messages
set shortmess+=t                      " truncate file messages at start

if has('nvim')
  " let &t_8f = '\<Esc>[38;2;%lu;%lu;%lum'
  " let &t_8b = '\<Esc>[48;2;%lu;%lu;%lum'

  " dark0 + gray
  " let g:terminal_color_0 = '#282828'
  " let g:terminal_color_8 = '#928374'

  " " neurtral_red + bright_red
  " let g:terminal_color_1 = '#cc241d'
  " let g:terminal_color_9 = '#fb4934'

  " " neutral_green + bright_green
  " let g:terminal_color_2 = '#98971a'
  " let g:terminal_color_10 = '#b8bb26'

  " " neutral_yellow + bright_yellow
  " let g:terminal_color_3 = '#d79921'
  " let g:terminal_color_11 = '#fabd2f'

  " " neutral_blue + bright_blue
  " let g:terminal_color_4 = '#458588'
  " let g:terminal_color_12 = '#83a598'

  " " neutral_purple + bright_purple
  " let g:terminal_color_5 = '#b16286'
  " let g:terminal_color_13 = '#d3869b'

  " " neutral_aqua + faded_aqua
  " let g:terminal_color_6 = '#689d6a'
  " let g:terminal_color_14 = '#8ec07c'

  " " light4 + light1
  " let g:terminal_color_7 = '#a89984'
  " let g:terminal_color_15 = '#ebdbb2'
endif

if has('mksession')
  let &viewdir=$VIMHOME.'/tmp/view' " override ~/.vim/view default
  set viewoptions=cursor,folds        " save/restore just these (with `:{mk,load}view`)
endif

set noswapfile                      " don't create root-owned files
set nobackup                        " don't create root-owned files
set nowritebackup                   " don't create root-owned files
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set history=999             " Increase history (default = 20)
set undolevels=999          " More undo (default=100)
set undofile           " keep an undo file (undo changes after closing)
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/



if exists('&swapsync')
  set swapsync=                       " let OS sync swapfiles lazily
endif

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
" set updatecount=80                    " update swapfiles every 80 typed chars

" if exists('$SUDO_USER')
  " set noundofile                    " don't create root-owned files
" else
"   let &undodir=$VIMHOME.'/tmp/undo/' " keep undo files out of the way
"   set undodir+=.
"   set undofile                      " actually use undo files
" endif

if has('nvim')
  set shada=
else
  set viminfo=
endif

if has('nvim')
  set inccommand=nosplit                " incremental command live feedback"
endif

if exists('&guioptions')
  " cursor behavior:
  "   - no blinking in normal/visual mode
  "   - blinking in insert-mode
  " set guicursor+=n-v-c:blinkon0,i-ci:ver25-Cursor/lCursor-blinkwait30-blinkoff100-blinkon100
endif

if executable('rg')
  set grepprg=rg\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif

set backspace=eol,start,indent
set number

try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
au BufNewFile,BufRead,InsertLeave * silent! match ExtraWhitespace /\s\+$/
au InsertEnter * silent! match ExtraWhitespace /\s\+\%#\@<!$/
" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Automatic rename of tmux window
if exists('$TMUX') && !exists('$NORENAME')
  au BufEnter * if empty(&buftype) | call system('tmux rename-window '.expand('%:t:S')) | endif
  au VimLeave * call system('tmux set-window automatic-rename on')
endif
