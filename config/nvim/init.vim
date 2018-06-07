
" Leaders {{{
let mapleader = ','
inoremap jj <esc>
" }}}

" Editor Settings {{{

" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Relative line numbers
set number
" Line wrapping is not the default
set nowrap
" Tabs shall be 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" Open new vsplit right
set splitright
" Enable folding by syntax
"set foldmethod=manual foldlevelstart=99
" 80 columns is the target width
"set colorcolumn=80
" Highlight the current line
set cursorline
set ruler
" Disable swap files
set noswapfile
set nobackup
set nowb

set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
scriptencoding utf-8                        " Set utf-8 as default script encoding
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often

" Time out on key codes but not mappings. Basically this makes terminal Vim work sanely. (by Steve Losh)
set notimeout
set ttimeout

filetype plugin on
filetype indent on

set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

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


set hidden

set lazyredraw              " don't update the display while executing macros
set ttyfast                 " Send more characters at a given time.
set history=999             " Increase history (default = 20)
set undolevels=999          " More undo (default=100)
set undofile           " keep an undo file (undo changes after closing)
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/


set cmdheight=2
set encoding=utf-8 nobomb " BOM ofter causes trouble

set list " show trailing whitespace
set listchars=tab:\|\ ,trail:▫

set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Turn on the WiLd menu
set wildmenu


" Keyboard Mappings {{{
" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Allow using the repeat operator with a visual selection (!)
vnoremap . :normal .<CR>
" Quickly open/reload vim
nnoremap <leader>ve :edit $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <silent> <up> :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <down> :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <left> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <right> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

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


" }}}

" Neovim Settings {{{
if has("nvim")
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1

    " Incremental search and replace
    set inccommand=nosplit
    " terminal escape
    tnoremap <Esc> <c-\><C-n>
    tnoremap <c-v> <Esc><Esc>
    " Disable line numbers in the terminal
    au TermOpen * setlocal nonumber norelativenumber
endif
" }}}

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

if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

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

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

" Core Plugins {{{
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.config/nvim/plugged/gocode/vim/symlink.sh' }
Plug 'plasticboy/vim-markdown'
Plug 'edkolev/tmuxline.vim'

" }}}

" Unimpaired {{{
"Plug 'tpope/vim-unimpaired'
"nmap ö [
"nmap ä ]
"omap ö [
"omap ä ]
"xmap ö [
"xmap ä ]noremap <silent> <leader>ge :Gedit<CR>
" }}}

" Align {{{
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" Comments {{{
Plug 'scrooloose/nerdcommenter'
" }}}

" Toggle Lists {{{
Plug 'Valloric/ListToggle'
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_quickfix_list_toggle_map = '<leader>qq'
" }}}

" Searching {{{
Plug 'wincent/loupe'
Plug 'junegunn/vim-slash'
let g:LoupeHighlightGroup='Error'
" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" }}}

" Project Management {{{
Plug 'airblade/vim-rooter'
" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


let g:rooter_patterns = ['.projections.json', '.git/', '.svn/']

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
nnoremap <F3> :NERDTreeToggle<cr>
" Specify the behavior when switching between buffers
try
  set shortmess+=c
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" }}}

" Git {{{
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify'
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
let g:signify_vcs_list = [ 'git', 'svn' ]
" }}}

" FZF {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
nnoremap <C-f> :Files<CR>
nnoremap <C-?> :History<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g> :BTags<CR>

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-s': 'vsplit' } " default ctrl-v conflicts with visual block mode
" FZF ignores first keys if height is enabled
let $FZF_DEFAULT_OPTS .= ' --no-height'
let g:fzf_nvim_statusline = 0 " disable statusline overwriting
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Close FZF with ESC even though terminal mode leaves with ESC
autocmd! FileType fzf tnoremap <buffer> <ESC> <C-c>
" }}}

" Lightline {{{
Plug 'itchyny/lightline.vim'
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

" }}}

" Tmux vim integration {{{
Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

" Move between splits with ctrl+h,j,k,l
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
" Tmux Nvim Hack
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" }}}

" Color Schemes {{{
Plug 'jacoborus/tender.vim'
" }}}

" Format {{{
Plug 'sbdchd/neoformat'
nnoremap <silent> <leader>f :Neoformat<CR>
let g:neoformat_enabled_python = ['yapf', 'isort']
let g:neoformat_enabled_latex = ['latexindent']
let g:neoformat_enabled_cmake = ['cmake_format']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_run_all_formatters = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_align = 1
"function! FormatFile()
"    let l:lines="all"
"    py3f $HOME/.config/nvim/clang-format.py
"endfunction
"autocmd FileType c,cpp vnoremap <leader>f :py3f $HOME/.config/nvim/clang-format.py<cr>
"autocmd FileType c,cpp nnoremap <leader>f :call FormatFile()<cr>
" }}}

" Linting {{{
Plug 'w0rp/ale'
let g:ale_linters = {'html': [], 'javascript': ['eslint'], 'go': ['gometalinter'], 'cpp': ['clang'], }
let g:ale_lint_on_text_changed = 'never'
let g:ale_change_sign_column_color = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_file_type_changed = 0
let g:ale_sign_column_always = 1
let g:ale_open_list = 1
let g:ale_set_quickfix = 0
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 0
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

let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐'
highlight link ALEWarningSign String
highlight link ALEErrorSign todo
" }}}

" Autocompletion {{{
"Plug 'autozimu/LanguageClient-neovim', {
"            \ 'branch': 'next',
"            \ 'do': 'bash install.sh',
"            \ }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Shougo/neosnippet.vim' " snippet manager
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
"Plug 'JR4er/nvim-completion-manager'
"Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
"Plug 'redhat-developer/yaml-language-server', {'do': 'npm install'}
"Plug 'rcjsuen/dockerfile-language-server-nodejs', {'do': 'npm install'}
"Plug 'Microsoft/vscode-json-languageservice', {'do': 'npm install'}
"Plug 'mads-hartmann/bash-language-server', {'do': 'npm install'}
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'isRuslan/vim-es6'
Plug 'cespare/vim-toml'

if !has('nvim')
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" disable autocomplete by default
" deoplete options
let g:echodoc_enable_at_startup = 1
set noshowmode
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" disable autocomplete by default
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1
"call deoplete#custom#buffer_option('auto_complete', v:false)
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
"call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let b:deoplete_ignore_sources = ['buffer']


autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
"let g:deoplete#auto_complete_start_length = 0
"let g:deoplete#enable_camel_case = 1
"let g:deoplete#max_abbr_width = 35
"let g:deoplete#max_menu_width = 20
"let g:deoplete#skip_chars = ['(', ')', '<', '>']
"let g:deoplete#tag#cache_limit_size = 800000
"let g:deoplete#file#enable_buffer_path = 1
"let g:neosnippet#enable_completed_snippet = 1


" neosnippet
imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = "~/.config/nvim/plugged/vim-snippets/snippets"

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"    \ 'javascript': ['javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['javascript-typescript-stdio'],
"    \ 'sh': ['bash-language-server', 'start'],
"    \ 'dockerfile': ['docker-langserver', '--stdio'],
"    \ 'go': ['go-langserver']
"    \ }
"nnoremap <silent> <leader>lh :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <leader>lr :call LanguageClient#textDocument_rename()<CR>
"let g:LanguageClient_diagnosticsDisplay = {
"            \ 1: { "name": "Error",       "texthl": "ALEError",   "signText": "•", "signTexthl": "ALEErrorSign",  },
"            \ 2: { "name": "Warning",     "texthl": "ALEWarning", "signText": "•", "signTexthl": "ALEWarningSign",},
"            \ 3: { "name": "Information", "texthl": "ALEInfo",    "signText": "•", "signTexthl": "ALEInfoSign",   },
"            \ 4: { "name": "Hint",        "texthl": "ALEInfo",    "signText": "•", "signTexthl": "ALEInfoSign",   },
"            \ }
" }}}

" Snippets {{{
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsJumpForwardTrigger="<C-j>"
"let g:UltiSnipsJumpBackwardTrigger="<C-k>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories = ['$HOME/.config/nvim/UltiSnips', 'UltiSnips']
" }}}

" Tags {{{
if executable('ctags')
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'
    nnoremap <silent> <leader>gg :TagbarToggle<CR>
    let g:gutentags_cache_dir = '~/.config/nvim/gutentags_cache_dir'
endif
" }}}

" Syntax and Folding {{{
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'
Plug 'LucHermitte/VimFold4C'
let g:polyglot_disabled = ['latex']
let g:SimpylFold_docstring_preview = 1
" }}}

" Python {{{
"Plug 'roxma/python-support.nvim'
"let g:python_support_python2_require = 0
"let g:python_support_python3_venv = 0
"let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]), 'isort')
"let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]), 'python-language-server[all]')
" }}}

" Go {{{
" Enable syntax highlighting per default
" Enable completing of go pointers
let g:deoplete#sources#go#pointer = 1
Plug 'zchee/deoplete-go', { 'do': 'make'}

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
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

" }}}
" Writing {{{

" Writing Tools {
Plug 'reedes/vim-wordy'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"Plug 'Ron89/thesaurus_query.vim'
"Plug 'rhysd/vim-grammarous'
nnoremap <leader>w :NextWordy<space><cr>
nnoremap <silent> Q gqap
xnoremap <silent> Q gq
nnoremap <silent> <leader>Q vapJgqap
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:tq_language=['en', 'de']
" }

" LaTeX {
Plug 'lervag/vimtex'
" }

" Go {
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

" }

" Markdown {
if executable('cargo')
    function! BuildComposer(info)
        if a:info.status != 'unchanged' || a:info.force
            if has('nvim')
                !cargo build --release
            else
                !cargo build --release --no-default-features --features json-rpc
            endif
        endif
    endfunction
    Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
endif
" }

" }}}

" Devicons (needs to be loaded last) {{{
if empty($DEVICONS)
    "Plug 'ryanoasis/vim-devicons'
    "let g:airline_powerline_fonts = 1
endif
" }}}

call plug#end()
" }}}

" Color Scheme Settings {{{
colorscheme tender
" }}}}}}
