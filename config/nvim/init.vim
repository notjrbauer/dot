set runtimepath+=~/.vim_runtime

call plug#begin('~/.vim/plugged')
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': './install.sh'
"    \ }
Plug 'Raimondi/delimitMate'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'Shougo/echodoc.vim'
Plug 'joonty/vdebug'
"Plug 'jsfaint/gen_tags.vim'
Plug 'saltstack/salt-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'blueyed/vim-qf_resize'
Plug 'tpope/vim-repeat'
"Plug 'svermeulen/vim-easyclip'
"Plug 'roxma/ncm-clang'
"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
"Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'jacoborus/tender.vim'
Plug 'chr4/nginx.vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mhinz/vim-janah'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ayu-theme/ayu-vim'
Plug 'hzchirs/vim-material'
Plug 'dim13/smyck.vim'
Plug 'rakr/vim-one'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'rakr/vim-two-firewatch'
Plug 'albertorestifo/github.vim'
Plug 'junegunn/vim-slash'
Plug 'kassio/neoterm'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'isRuslan/vim-es6'
Plug 'fatih/molokai'
Plug 'scrooloose/nerdcommenter'
Plug 'gosukiwi/vim-atom-dark'
Plug 'w0ng/vim-hybrid'
Plug 'itchyny/lightline.vim'

"" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive

"" General plugins
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'Shougo/vimproc.vim', {'do' : 'make'}  " Needed to make sebdah/vim-delve work on Vim
Plug 'Shougo/vimshell.vim'                  " Needed to make sebdah/vim-delve work on Vim
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vader.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
"Plug 'neomake/neomake'
Plug 'w0rp/ale'
Plug 'rbgrouleff/bclose.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sebdah/vim-delve'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'aklt/plantuml-syntax'
Plug 'cespare/vim-toml'
Plug 'chr4/nginx.vim'
Plug 'fatih/vim-go'
Plug 'kylef/apiblueprint.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'plasticboy/vim-markdown'
Plug 'tclh123/vim-thrift'
Plug 'edkolev/tmuxline.vim'

"" Colorschemes
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

"----------------------------------------------
" General settings
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard+=

"set colorcolumn=81                " highlight the 80th column as an indicator
"
set noswapfile
set splitbelow
set completeopt-=preview          " remove the horrendous preview window
"set completeopt-=preview
"set cursorline                    " highlight the current line for the cursor
set cmdheight=2
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set smarttab                      " Be smart when using tabs ;)
set shiftwidth=4                  " 1 tab == 4 spaces
set tabstop=4
set lbr                           " Linebreak on 500 characters
set tw=500
set list                          " show trailing whitespace
set ai                            " auto indent
set si                            " smart indent
set wrap                          " Wrap lines
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
"set relativenumber                " show relative numbers in the ruler
set ruler
set formatoptions=tcqron          " set vims text formatting options
set softtabstop=2
set tabstop=2
set textwidth=80
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set wrap
set showcmd            " display incomplete commands
"set backup             " keep a backup file (restore to previous version)
set undofile           " keep an undo file (undo changes after closing)
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
" Time out on key codes but not mappings. Basically this makes terminal Vim work sanely. (by Steve Losh)
set notimeout
set ttimeout
set ttimeoutlen=10

" ---------------------------------------------------------------------------------------------------------------------
" 2.7 Filetype settings {{{
" ---------------------------------------------------------------------------------------------------------------------
filetype plugin on
filetype indent on
"}}}

" When searching try to be smart about cases
"set smartcase
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
set suffixes=~,.aux,.bak,.bkp,.dvi,.hi,.o,.pdf,.gz,.idx,.log,.ps,.swp,.tar,.ilg,.bbl,.toc,.ind
set wildmenu                                                 " show a navigable menu for tab completion
set wildcharm=<Tab>
set wildmode=list:longest
" set wildmode=longest,list,full
set wildignore+=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildignore+=*.egg,*.egg-info
set wildignore+=*.gem
set wildignore+=*.gem
set wildignore+=*.javac
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.pyc
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app
set wildignore+=*DS_Store*
set wildignore+=*sass-cache*
set wildignore+=*vim/backups*
set wildignore+=.coverage
set wildignore+=.coverage/**
set wildignore+=.env
set wildignore+=.env-pypy
set wildignore+=.env[0-9]+
set wildignore+=.git,.gitkeep
set wildignore+=.idea/**
set wildignore+=.sass-cache/
set wildignore+=.tmp
set wildignore+=.tox/**
set wildignore+=.vagrant/**
set wildignore+=.webassets-cache/
set wildignore+=__pycache__/
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/rails/**
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
" }}}

"autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

""""""""""""""""""""""""""""""
" => visual mode related
""""""""""""""""""""""""""""""
" visual mode pressing * or # searches for the current selection
" super useful! from an idea by michael naumann
vnoremap <silent> * :<c-u>call visualselection('', '')<cr>/<c-r>=@/<cr><cr>
vnoremap <silent> # :<c-u>call visualselection('', '')<cr>?<c-r>=@/<cr><cr>

" Delete trailing white space on save, useful for some filetypes ;)
"fun! CleanExtraSpaces()
"    let save_cursor = getpos(".")
"    let old_query = getreg('/')
"    silent! %s/\s\+$//e
"    call setpos('.', save_cursor)
"    call setreg('/', old_query)
"endfun

"if has("autocmd")
"    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
"endif


" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" neovim specific settings
if has('nvim')
    " true color
    "let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
    "set guicursor= " allow native terminal to dictate cursor

    " Set the Python binaries neovim is using. Please note that you will need to
    " install the neovim package for these binaries separately like this for
    " example:
    " pip3.6 install -U neovim
    let g:python_host_prog = '/usr/local/bin/python2.7'
    let g:python3_host_prog = '/usr/local/bin/python3.6'
    let g:loaded_python_provider=1
    let g:python_host_skip_check=1                        " Skip python 2 host check
    set inccommand=nosplit
endif

" -----------------------------------------------------
" 2.12 True colors settings {{{
" -----------------------------------------------------
"if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      set termguicolors
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  "if (has("termguicolors"))
  "endif
"endif

imap jj <esc>

" Path to python interpreter for neovim
" MIGHT NOT NEED
let g:tern_show_signature_in_pum = 1  " This enables full signature type on autocomplete

" ---

" General settings " {{{
" ---
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" <CR>: If popup menu visible, expand snippet or close popup with selection,
"       Otherwise, check if within empty pair and use delimitMate.
inoremap <silent><expr><CR> pumvisible() ?
	\ (neosnippet#expandable() ? neosnippet#mappings#expand_impl() : deoplete#close_popup())
		\ : (delimitMate#WithinEmptyPair() ? "\<C-R>=delimitMate#ExpandReturn()\<CR>" : "\<CR>")

imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
" <Tab> completion:
" 1. If popup menu is visible, select and insert next item
" 2. Otherwise, if within a snippet, jump to next input
" 3. Otherwise, if preceding chars are whitespace, insert tab char
" 4. Otherwise, start manual autocomplete
imap <silent><expr><Tab> pumvisible() ? "\<Down>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#manual_complete()))

smap <silent><expr><Tab> pumvisible() ? "\<Down>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#manual_complete()))

inoremap <expr><S-Tab>  pumvisible() ? "\<Up>" : "\<C-h>"
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
" }}}
"
" Limit Sources " {{{
" ---
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:deoplete#sources#ternjs#types = 1


" Close the documentation window when completion is done
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Tern shortcuts
au FileType javascript nmap gd :TernDef<CR>
au FileType javascript nmap <Leader>ds :TernDefSplit<CR>
au FileType javascript nmap <Leader>dt :TernDefTab<CR>
au FileType javascript nmap <Leader>gd :TernDoc<CR>
au FileType javascript nmap <Leader>t :TernType<CR>

" vim-go shortcuts
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <Leader>rs <Plug>(go-run-split)
au FileType go nmap <Leader>rv <Plug>(go-run-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" use goimports
let g:go_fmt_command = "goimports"

" Tmux Nvim Hack
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>


" Neoterm
let g:neoterm_size = 20


syntax enable


set showmode                                " Always show mode
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set synmaxcol=160                           " Don't try to syntax highlight minified files
" Set the leader button
set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
scriptencoding utf-8                        " Set utf-8 as default script encoding

set shell=/bin/zsh                          " Setting shell to zsh
let mapleader = ','
" Show/hide terminal
nnoremap <silent> <leader>to :call neoterm#open()<cr>
nnoremap <silent> <leader>th :call neoterm#close()<cr>

" Autosave buffers before leaving them
"autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Center the screen quickly
nnoremap <space> zz

"----------------------------------------------
" Colors
"----------------------------------------------
set background=dark
colorscheme tender
"colorscheme Tomorrow
"colorscheme tender
"colorscheme github
"set background=dark
"colorscheme tender
"colorscheme smyck

"let ayucolor="mirage"   " for dark version of theme
"colorscheme ayu


"set background=dark
"colorscheme vim-material
"set background=dark
"colorscheme two-firewatch
"let g:two_firewatch_italics=1

"colorscheme  PaperColor
"let g:PaperColor_Theme_Options = {
"  \   'language': {
"  \     'python': {
"  \       'highlight_builtins' : 1
"  \     },
"  \     'cpp': {
"  \       'highlight_standard_library': 1
"  \     },
"  \     'c': {
"  \       'highlight_builtins' : 1
"  \     },
"  \     'go': {
"  \       'highlight_builtins' : 1
"  \     }
"  \   }
"  \ }

" Override the search highlight color with a combination that is easier to
" read. The default PaperColor is dark green backgroun with black foreground.
"
" Reference:
" - http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" Toggle background with <leader>bg
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>

" Highlight all sql and psql
let g:sql_type_default = 'pgsql'
"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

if has('nvim')
    set inccommand=split          " enables interactive search and replace
endif

" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"----------------------------------------------
" Navigation
"----------------------------------------------
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" ... but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

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

"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

"----------------------------------------------
" Plugin: Shougo/deoplete.nvim
"----------------------------------------------
let g:echodoc_enable_at_startup = 1
let g:deoplete#sources#padawan#add_parentheses = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'around']
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_camel_case = 1
let g:deoplete#sources = get(g:, 'deoplete#sources', {})
let g:deoplete#sources#ternjs#filetypes = [
	\ 'jsx',
	\ 'javascript.jsx',
	\ 'vue',
	\ 'javascript'
	\ ]

call deoplete#custom#set('omni',          'mark', '⌾')
call deoplete#custom#set('ternjs',        'mark', '⌁')
call deoplete#custom#set('go',        	  'mark', '⌁')
call deoplete#custom#set('vim-go',        'mark', '⌁')
call deoplete#custom#set('jedi',          'mark', '⌁')
call deoplete#custom#set('vim',           'mark', '⌁')
call deoplete#custom#set('padawan',       'mark', '⌁')
call deoplete#custom#set('neosnippet',    'mark', '⌘')
call deoplete#custom#set('tag',           'mark', '⌦')
call deoplete#custom#set('around',        'mark', '↻')
call deoplete#custom#set('buffer',        'mark', 'ℬ')
call deoplete#custom#set('tmux-complete', 'mark', '⊶')
call deoplete#custom#set('syntax',        'mark', '♯')
call deoplete#custom#set('member',        'mark', '.')

call deoplete#custom#set('ternjs',        'rank', 620)
call deoplete#custom#set('go',        	  'rank', 618)
call deoplete#custom#set('vim-go',        'rank', 618)
call deoplete#custom#set('jedi',          'rank', 610)
call deoplete#custom#set('padawan',       'rank', 610)
call deoplete#custom#set('omni',          'rank', 600)
call deoplete#custom#set('neosnippet',    'rank', 510)
call deoplete#custom#set('member',        'rank', 500)
call deoplete#custom#set('file_include',  'rank', 420)
call deoplete#custom#set('file',          'rank', 410)
call deoplete#custom#set('tag',           'rank', 400)
call deoplete#custom#set('around',        'rank', 330)
call deoplete#custom#set('buffer',        'rank', 320)
call deoplete#custom#set('dictionary',    'rank', 310)
call deoplete#custom#set('tmux-complete', 'rank', 300)
call deoplete#custom#set('syntax',        'rank', 200)
call deoplete#custom#set('vim',           'rank', 130)
let g:deoplete#omni#input_patterns = {}
let g:deoplete#keyword_patterns = {}
"let g:deoplete#keyword_patterns['default'] = '\h\w*'

" Default sorters: ['sorter_rank']
" Default matchers: ['matcher_length', 'matcher_fuzzy']

"let g:deoplete#sources.go = ['vim-go']
let g:deoplete#sources#ternjs#timeout = 3
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1

call deoplete#custom#set('_', 'converters', [
\ 'converter_remove_paren',
\ 'converter_remove_overlap',
\ 'converter_truncate_abbr',
\ 'converter_truncate_menu',
\ 'converter_auto_delimiter',
\ ])

"We enjoy things that don't blink
"set guicursor=n-v-i:blinkwait000-blinkon000-blinkoff000


"----------------------------------------------
" Plugin: bling/vim-airline
"----------------------------------------------
" Show status bar by default.
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'tenderplus',
    \ 'active': {
    \   'left': [['mode', 'paste'], ['filename', 'modified']],
    \   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
    \ },
    \ 'component_function': {
    \   'linter_warnings': 'LightlineLinterWarnings',
    \   'linter_errors': 'LightlineLinterErrors',
    \   'linter_ok': 'LightlineLinterOK'
    \ },
    \ 'component_type': {
    \   'readonly': 'error',
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \   'linter_ok': 'ok'
    \ },
    \}

"" Enable top tabline.
"let g:airline#extensions#tabline#enabled = 1

"" Disable showing tabs in the tabline. This will ensure that the buffers are
"" what is shown in the tabline at all times.
"let g:airline#extensions#tabline#show_tabs = 0

"" Enable powerline fonts.
"let g:airline_powerline_fonts = 0

"" Explicitly define some symbols that did not work well for me in Linux.
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_symbols.branch = ''
"let g:airline_symbols.maxlinenr = ''

"----------------------------------------------
" Plugin: christoomey/vim-tmux-navigator
"----------------------------------------------
" tmux will send xterm-style keys when its xterm-keys option is on.
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Tmux vim integration
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

" Move between splits with ctrl+h,j,k,l
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).

" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
let g:ctrlp_map = ''

"----------------------------------------------
" Plugin: easymotion/vim-easymotion
"----------------------------------------------
" Enable support for bidirectional motions
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

"----------------------------------------------
" Plugin: 'itchyny/calendar.vim'
"----------------------------------------------
" Enable Google Calendar integration.
let g:calendar_google_calendar = 1

" Enable Google Tasks integration.
let g:calendar_google_task = 1

"----------------------------------------------
" Plugin: 'junegunn/fzf.vim'
"----------------------------------------------
" {{{
  let g:fzf_nvim_statusline = 0 " disable statusline overwriting

  nnoremap <silent> <leader><space> :Files<CR>
  nnoremap <silent> <leader>a :Buffers<CR>
  nnoremap <silent> <leader>A :Windows<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>? :History<CR>
  nnoremap <c-f> :Ag<cr>
  nnoremap <silent> <leader>. :AgIn

  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  "imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  "imap <C-x><C-l> <plug>(fzf-complete-line)

  function! SearchWordWithAg()
    execute 'Ag' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithAg() range
    let old_reg = getreg('"')
    let old_regtype = getregtype('"')
    let old_clipboard = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', old_reg, old_regtype)
    let &clipboard = old_clipboard
    execute 'Ag' selection
  endfunction

  function! SearchWithAgInDirectory(...)
    call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
  endfunction
  command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
" }}}
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
let g:fzf_colors =
 \ { 'fg':      ['fg', 'Normal'],
   \ 'bg':      ['bg', 'Normal'],
   \ 'hl':      ['fg', 'Comment'],
   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
   \ 'hl+':     ['fg', 'Statement'],
   \ 'info':    ['fg', 'PreProc'],
   \ 'prompt':  ['fg', 'Conditional'],
   \ 'pointer': ['fg', 'Exception'],
   \ 'marker':  ['fg', 'Keyword'],
   \ 'spinner': ['fg', 'Label'],
   \ 'header':  ['fg', 'Comment'] }

"----------------------------------------------
" Plugin: 'majutsushi/tagbar'
"----------------------------------------------
" Add shortcut for toggling the tag bar
nnoremap <F3> :NERDTreeToggle<cr>

" Language: Go
" Tagbar configuration for Golang
let g:gutentags_cache_dir = '~/.tags_cache'
"let g:loaded_gentags#gtags = 1
"let g:gen_tags#ctags_auto_gen = 1
"let g:gen_tags#use_cache_dir = 0
"let g:gen_tags#verbose = 0
"let g:gen_tags#blacklist = ['$HOME']
set tags=./.tags;,~/.vimtags;,./.git;
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"----------------------------------------------
" Plugin: ncm-clang
"----------------------------------------------
" default key mapping is annoying
"let g:clang_make_default_keymappings = 0
" ncm-clang is auto detecting compile_commands.json and .clang_complete
" file
"let g:clang_auto_user_options = ''

"func WrapClangGoTo()
"    let cwd = getcwd()
"    let info = ncm_clang#compilation_info()
"    exec 'cd ' . info['directory']
"    try
"        let b:clang_user_options = join(info['args'], ' ')
"        call g:ClangGotoDeclaration()
"    catch
"    endtry
"    " restore
"    exec 'cd ' . cwd
"endfunc
"autocmd FileType c,cpp nnoremap <buffer> gd :call WrapClangGoTo()<CR>
"----------------------------------------------
" Plugin: plasticboy/vim-markdown
"----------------------------------------------
" Disable folding
let g:vim_markdown_folding_disabled = 1

" Auto shrink the TOC, so that it won't take up 50% of the screen
let g:vim_markdown_toc_autofit = 1

"----------------------------------------------
" Plugin: rbgrouleff/bclose.vim
"----------------------------------------------
" Close buffers
nnoremap <leader>w :Bclose<cr>

"----------------------------------------------
" Plugin: mileszs/ack.vim
"----------------------------------------------
" Open ack
"nnoremap <leader>a :Ack!<space>

"----------------------------------------------
" Plugin: neomake/neomake
"----------------------------------------------
" Configure signs.
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '⚠', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

"----------------------------------------------
" Plugin: ale/aliue
"----------------------------------------------
" Configure signs.
let g:ale_linters = {'html': [], 'javascript': ['eslint'], 'go': ['gometalinter'], 'cpp': ['clang'], }
let g:ale_set_highlights = 0
let g:ale_change_sign_column_color = 0
"let g:ale_set_signs = 1
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '✖'
"let g:ale_sign_warning = '⚠'
"let g:ale_warn_about_trailing_whitespace = 0
let g:ale_set_loclist = 0
let g:ale_open_list = 1
let g:ale_lint_on_save = 1
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
"augroup quickfix
"    autocmd!
"    autocmd QuickFixCmdPost [^l]* cwindow
"    autocmd VimEnter        *     cwindow
"augroup END
"let g:ale_open_list = 1

"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
let g:lightline = {
\ 'colorscheme': 'tenderplus',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

autocmd User ALELint call lightline#update()

nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^vendor$',
    \ '^__pycache__$'
\]

" Close vim if NERDTree is the only opened window.
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2

"----------------------------------------------
" Plugin: sebdah/vim-delve
"----------------------------------------------
" Set the Delve backend.
let g:delve_backend = "native"

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
"
" Below you can disable default snippets for specific languages. If you set the
" language to _ it sets the default for all languages.
"let g:neosnippet#disable_runtime_snippets = {
"    \ 'go': 1
"\}

" Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)


" Set the path to our snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

"----------------------------------------------
" Plugin: vimwiki/vimwiki
"----------------------------------------------
" Path to wiki
let g:vimwiki_list = [{
        \ 'path': '~/Dropbox/vimwiki',
        \ 'syntax': 'markdown',
        \ 'ext': '.vimwiki.markdown'}]

au FileType vimwiki set expandtab
au FileType vimwiki set shiftwidth=2
au FileType vimwiki set softtabstop=2
au FileType vimwiki set tabstop=2

"----------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
"----------------------------------------------
let g:multi_cursor_next_key='<C-x>'
let g:multi_cursor_skip_key='<C-X>'

"----------------------------------------------
" Language: Golang
"----------------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=2
au FileType go set softtabstop=2
au FileType go set tabstop=2
" Mappings
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F12> <Plug>(go-def)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-horizontal)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1 "we have this for ale

" Set neosnippet as snippet engine
let g:go_snippet_engine = "neosnippet"

" Enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
"let g:go_highlight_variable_declarations = 1
"let g:go_highlight_variable_assignments = 1

" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Show type information
"let g:go_auto_type_info = 1

" Highlight variable uses
let g:go_auto_sameids = 1

" Fix for location list when vim-go is used together with Syntastic
let g:go_gocode_propose_builtins = 1
let g:go_gocode_unimported_packages = 1

" gometalinter configuration
let g:go_auto_type_info = 0
let g:go_snippet_engine = "neosnippet"
"let g:go_statusline_duration = 10000
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
"let g:go_metalinter_enabled = [
"    \ 'deadcode',
"    \ 'errcheck',
"    \ 'gas',
"    \ 'goconst',
"    \ 'gocyclo',
"    \ 'golint',
"    \ 'gosimple',
"    \ 'ineffassign',
"    \ 'vet',
"    \ 'vetshadow'
"\]

" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

" ======================== ale ========================
let g:ale_go_gometalinter_options = '
  \ --aggregate
  \ --enable-gc
  \ --concurrency=3
  \ --vendor
  \ --fast
  \ --sort=line
  \ --errors
  \ --disable=gas
  \ --disable=goconst
  \ --disable=gocyclo
  \ --disable=dupl
  \ --disable=aligncheck
  \ --disable=misspell
  \ --enable=unused
  \ --enable=errcheck
  \ '
  "\ --vendor
  "\ --vendored-linters

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
highlight link ALEWarningSign String
highlight link ALEErrorSign todo
    "highlight link ALEErrorSign error

    "highlight link ALEStyleErrorSign ALEErrorSign

    "highlight link ALEWarningSign todo

    "highlight link ALEStyleWarningSign ALEWarningSign

    "highlight link ALEInfoSign ALEWarningSign


" neomake configuration for Go.
let g:neomake_go_enabled_makers = [ 'go', 'gometalinter' ]
let g:neomake_go_gometalinter_maker = {
  \ 'args': [
  \   '--tests',
  \   '--enable-gc',
  \   '--concurrency=3',
  \   '--fast',
  \   '-D', 'aligncheck',
  \   '-D', 'dupl',
  \   '-D', 'gocyclo',
  \   '-D', 'gotype',
  \   '-E', 'errcheck',
  \   '-E', 'misspell',
  \   '-E', 'unused',
  \   '%:p:h',
  \ ],
  \ 'append_file': 0,
  \ 'errorformat':
  \   '%E%f:%l:%c:%trror: %m,' .
  \   '%W%f:%l:%c:%tarning: %m,' .
  \   '%E%f:%l::%trror: %m,' .
  \   '%W%f:%l::%tarning: %m'
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
"----------------------------------------------
" Language: apiblueprint
"----------------------------------------------
au FileType apiblueprint set expandtab
au FileType apiblueprint set shiftwidth=4
au FileType apiblueprint set softtabstop=4
au FileType apiblueprint set tabstop=4

"----------------------------------------------
" Language: Bash
"----------------------------------------------
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2

"----------------------------------------------
" Language: CSS
"----------------------------------------------
au FileType css set expandtab
au FileType css set shiftwidth=2
au FileType css set softtabstop=2
au FileType css set tabstop=2

"----------------------------------------------
" Language: gitcommit
"----------------------------------------------
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

"----------------------------------------------
" Language: fish
"----------------------------------------------
au FileType fish set expandtab
au FileType fish set shiftwidth=2
au FileType fish set softtabstop=2
au FileType fish set tabstop=2

"----------------------------------------------
" Language: gitconfig
"----------------------------------------------
au FileType gitconfig set noexpandtab
au FileType gitconfig set shiftwidth=2
au FileType gitconfig set softtabstop=2
au FileType gitconfig set tabstop=2

"----------------------------------------------
" Language: HTML
"----------------------------------------------
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

"----------------------------------------------
" Language: JavaScript
"----------------------------------------------
au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2

"----------------------------------------------
" Language: JSON
"----------------------------------------------
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

"----------------------------------------------
" Language: LESS
"----------------------------------------------
au FileType less set expandtab
au FileType less set shiftwidth=2
au FileType less set softtabstop=2
au FileType less set tabstop=2

"----------------------------------------------
" Language: Make
"----------------------------------------------
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

"----------------------------------------------
" Language: Markdown
"----------------------------------------------
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

"----------------------------------------------
" Language: PlantUML
"----------------------------------------------
au FileType plantuml set expandtab
au FileType plantuml set shiftwidth=4
au FileType plantuml set softtabstop=4
au FileType plantuml set tabstop=4

"----------------------------------------------
" Language: Protobuf
"----------------------------------------------
au FileType proto set expandtab
au FileType proto set shiftwidth=2
au FileType proto set softtabstop=2
au FileType proto set tabstop=2

"----------------------------------------------
" Language: Python
"----------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

"----------------------------------------------
" Language: Ruby
"----------------------------------------------
au FileType ruby set expandtab
au FileType ruby set shiftwidth=2
au FileType ruby set softtabstop=2
au FileType ruby set tabstop=2

" Enable neomake for linting.
"au FileType ruby autocmd BufWritePost * Neomake

"----------------------------------------------
" Language: SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

"----------------------------------------------
" Language: Thrift
"----------------------------------------------
au FileType thrift set expandtab
au FileType thrift set shiftwidth=2
au FileType thrift set softtabstop=2
au FileType thrift set tabstop=2

"----------------------------------------------
" Language: TOML
"----------------------------------------------
au FileType toml set expandtab
au FileType toml set shiftwidth=2
au FileType toml set softtabstop=2
au FileType toml set tabstop=2

"----------------------------------------------
" Language: Vader
"----------------------------------------------
au FileType vader set expandtab
au FileType vader set shiftwidth=2
au FileType vader set softtabstop=2
au FileType vader set tabstop=2

"----------------------------------------------
" Language: vimscript
"----------------------------------------------
au FileType vim set expandtab
au FileType vim set shiftwidth=4
au FileType vim set softtabstop=4
au FileType vim set tabstop=4

"----------------------------------------------
" Language: YAML
"----------------------------------------------
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2

"----------------------------------------------
" Language: ino/cpp
"----------------------------------------------
au FileType ino set expandtab
au FileType ino set shiftwidth=2
au FileType ino set softtabstop=2
au FileType ino set tabstop=2


autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
autocmd BufEnter *.cpp,*.h,*.hpp,*.hxx,*.ino let g:ale_cpp_clang_options = join(ncm_clang#compilation_info()['args'], ' ')
    " (optional, for completion performance) run linters only when I save files
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"autocmd BufWritePost * Neomake
autocmd User ALELint call lightline#update()
