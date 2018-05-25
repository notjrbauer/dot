set runtimepath+=~/.vim_runtime

call plug#begin('~/.vim/plugged')
Plug 'jsfaint/gen_tags.vim'
Plug 'BurningEther/nvimux'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'Raimondi/delimitMate'
Plug 'Shougo/denite.nvim'


"Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/echodoc.vim'
Plug 'saltstack/salt-vim'
Plug 'tpope/vim-repeat'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
\ }

" Language Servers
"Plug 'roxma/nvim-completion-manager'
Plug 'JR4er/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'redhat-developer/yaml-language-server', {'do': 'npm install'}
Plug 'rcjsuen/dockerfile-language-server-nodejs', {'do': 'npm install'}
Plug 'Microsoft/vscode-json-languageservice', {'do': 'npm install'}
Plug 'mads-hartmann/bash-language-server', {'do': 'npm install'}

if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" Colors
Plug 'mhinz/vim-janah'
Plug 'ayu-theme/ayu-vim'
Plug 'hzchirs/vim-material'
Plug 'dim13/smyck.vim'
Plug 'rakr/vim-one'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'albertorestifo/github.vim'
Plug 'fatih/molokai'
Plug 'itchyny/lightline.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'

" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'

" Syntax
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'isRuslan/vim-es6'
Plug 'cespare/vim-toml'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'chr4/nginx.vim'


"" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive

"" General plugins
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vader.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-slash'
Plug 'tpope/vim-fugitive'

"Plug 'terryma/vim-multiple-cursors'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'plasticboy/vim-markdown'
Plug 'edkolev/tmuxline.vim'

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

set hidden                  " can put buffer to the background without writing
                            "   to disk, will remember history/marks.
set lazyredraw              " don't update the display while executing macros
set ttyfast                 " Send more characters at a given time.
set history=999             " Increase history (default = 20)
set undolevels=999          " Moar undo (default=100)
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
set cursorline
"set formatoptions=tcqron          " set vims text formatting options
set formatoptions+=t          " set vims text formatting options
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
" Use a bar-shaped cursor for insert mode, even through tmux.

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
set ttyfast

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
set encoding=utf8 nobomb " BOM often causes trouble

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

""""""""""""""""""""""""""""""
" => visual mode related
""""""""""""""""""""""""""""""
" visual mode pressing * or # searches for the current selection
" super useful! from an idea by michael naumann
vnoremap <silent> * :<c-u>call visualselection('', '')<cr>/<c-r>=@/<cr><cr>
vnoremap <silent> # :<c-u>call visualselection('', '')<cr>?<c-r>=@/<cr><cr>

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>d :Gdiff<CR>
" ----------------------------------------------------------------------------
" vim-emoji :dog: :cat: :rabbit:!
" ----------------------------------------------------------------------------
command! -range EmojiReplace <line1>,<line2>s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g


" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

au BufNewFile,BufRead Dockerfile*         set filetype=dockerfile
" Fugitive
au FileType gitcommit setlocal completefunc=emoji#complete
au FileType gitcommit nnoremap <buffer> <silent> cd :<C-U>Gcommit --amend --date="$(date)"<CR>

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
au BufNewFile,BufRead,InsertLeave * silent! match ExtraWhitespace /\s\+$/
au InsertEnter * silent! match ExtraWhitespace /\s\+\%#\@<!$/

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Close preview window
if exists('##CompleteDone')
    au CompleteDone * pclose
else
    au InsertLeave * if !pumvisible() && (!exists('*getcmdwintype') || empty(getcmdwintype())) | pclose | endif
endif

" Automatic rename of tmux window
if exists('$TMUX') && !exists('$NORENAME')
    au BufEnter * if empty(&buftype) | call system('tmux rename-window '.expand('%:t:S')) | endif
    au VimLeave * call system('tmux set-window automatic-rename on')
endif
" neovim specific settings
if has('nvim')
    au TermOpen * setlocal nonumber norelativenumber
    let $FZF_DEFAULT_OPTS .= ' --inline-info'
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
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
"endif


let g:tern_show_signature_in_pum = 1  " This enables full signature type on autocomplete

" ---
" General settings " {{{
" ---

imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"
" Limit Sources " {{{
" ---
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


" Close the documentation window when completion is done
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Tern shortcuts
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
syntax enable

set showmode                                " Always show mode
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
"set synmaxcol=160                           " Don't try to syntax highlight minified files
" Set the leader button
set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
scriptencoding utf-8                        " Set utf-8 as default script encoding

"set shell=/bin/zsh                          " Setting shell to zsh
let mapleader = ','
" Show/hide terminal

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
" Plugin: 'junegunn/fzf.vim'
"----------------------------------------------
" {{{
  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
  command! -bang -nargs=? -complete=dir Files
              \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" nnoremap <silent> <Leader><Leader> :Files<CR>
  nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"

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
"
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

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"----------------------------------------------
" Plugin: 'majutsushi/tagbar'
"----------------------------------------------
" Add shortcut for toggling the tag bar
nnoremap <F3> :NERDTreeToggle<cr>

set tags=./tags,tags;./git;$HOME
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
" Plugin: ale/aliue
"----------------------------------------------
autocmd User ALELint call lightline#update()
" Configure signs.
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'html': [], 'javascript': ['eslint'], 'go': ['gometalinter'], 'cpp': ['clang'], }
let g:ale_set_highlights = 0
let g:ale_change_sign_column_color = 0
let g:ale_set_loclist = 0
let g:ale_open_list = 1
let g:ale_lint_on_save = 1
let g:ale_set_quickfix = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

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



"----------------------------------------------
" Plugin: NERDTree
"----------------------------------------------
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
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1
" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

"----------------------------------------------
" Formatting
"----------------------------------------------
nnoremap <leader>ff :Neoformat! % <CR>

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
" Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'


"----------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
"----------------------------------------------

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
let g:go_highlight_function_calls = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_list_type_commands = {"GoBuild": "quickfix", "GoTest": "locationlist"}
"let g:go_highlight_variable_declarations = 1
"let g:go_highlight_variable_assignments = 1

" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Highlight variable uses
let g:go_auto_sameids = 0

" Fix for location list when vim-go is used together with Syntastic
let g:go_gocode_propose_builtins = 1
let g:go_gocode_unimported_packages = 1

" gometalinter configuration
let g:go_auto_type_info = 0
let g:go_snippet_engine = "neosnippet"
"let g:go_statusline_duration = 10000
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
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

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
highlight link ALEWarningSign String
highlight link ALEErrorSign todo

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

" Tags
let g:loaded_gentags#gtags=1

"----------------------------------------------
" Plugin: 'LanguageServer'
"----------------------------------------------
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'dockerfile': ['docker-langserver', '--stdio'],
    \ 'go': ['go-langserver']
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

inoremap jj <esc>

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
let g:jsx_ext_required = 0

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

autocmd User ALELint call lightline#update()

