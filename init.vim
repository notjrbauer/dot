
" Leaders {{{
let mapleader = ','
inoremap jj <esc>
" }}}

" Editor Settings {{{

" Add homebrew fzf to the vim path:
set rtp+=/usr/local/opt/fzf
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Relative line numbers
set number
" Line wrapping is not the default
set wrap
set formatoptions+=1         " Don't break lines after a one-letter word
set formatoptions-=t         " Don't auto-wrap text
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
if has('patch-7.3.541')
  set formatoptions+=j       " Remove comment leader when joining lines
endif
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
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
  set fileencodings=utf-8,latin1
endif
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
set fileformats=unix,dos,mac " Use Unix as the standard file type

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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

set formatoptions=tcqron          " set vims text formatting options
set softtabstop=2
set tabstop=2


set list " show trailing whitespace
set listchars=tab:\|\ ,trail:▫

set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Turn on the WiLd menu
" Wildmenu {{{
" --------
"set wildmenu
if has('wildmenu')
  set nowildmenu
  set wildmode=list:longest,full
  set wildoptions=tagfile
  set wildignorecase
  set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
  set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
  set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
  set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
  set wildignore+=__pycache__,*.egg-info
endif

" }}}


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

" Write when leaving a buffer
"augroup AutoWrite
"    autocmd! BufLeave * :update
"augroup END

"augroup qf
"  autocmd!
"  autocmd FileType qf set nobuflisted
"augroup END

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
"if exists('$TMUX') && !exists('$NORENAME')
"  au BufEnter * if empty(&buftype) | call system('tmux rename-window '.expand('%:t:S')) | endif
"  au VimLeave * call system('tmux set-window automatic-rename on')
"endif

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

" Core Plugins {{{
Plug 'easymotion/vim-easymotion'
"Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'plasticboy/vim-markdown'
Plug 'edkolev/tmuxline.vim'
Plug 'blueyed/vim-qf_resize'

"Plug 'blueyed/vim-qf_resize', { 'branch': 'fix-non-existing-win' }
"Plug 'romainl/vim-qf'

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
Plug 'junegunn/vim-slash'
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

nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

"----------------------------------------------
" Navigation
"----------------------------------------------
" ... but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END


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

"nnoremap <C-f> :Files<CR>
"nnoremap <C-?> :History<CR>
"nnoremap <C-b> :Buffers<CR>
"nnoremap <C-g> :BTags<CR>

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-s': 'vsplit' } " default ctrl-v conflicts with visual block mode
if has('nvim') || has('gui_running')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif
" FZF ignores first keys if height is enabled
let $FZF_DEFAULT_OPTS .= ' --no-height'
let g:fzf_nvim_statusline = 0 " disable statusline overwriting

command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Close FZF with ESC even though terminal mode leaves with ESC
autocmd! FileType fzf tnoremap <buffer> <ESC> <C-c>

" }}}
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
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#with_preview()))
endfunction

function! s:fzf_neighbouring_files()
  let current_file =expand("%")
  let cwd = fnamemodify(current_file, ':p:h')
  let command = 'ag -g "" -f ' . cwd . ' --depth 0'

  call fzf#run({
        \ 'source': command,
        \ 'sink':   'e',
        \ 'options': '-m -x +s',
        \ 'window':  'enew' })
endfunction
command! FZFNeigh call s:fzf_neighbouring_files()

function! s:align_lists(lists)
  let maxes = {}
  for list in a:lists
    let i = 0
    while i < len(list)
      let maxes[i] = max([get(maxes, i, 0), len(list[i])])
      let i += 1
    endwhile
  endfor
  for list in a:lists
    call map(list, "printf('%-'.maxes[v:key].'s', v:val)")
  endfor
  return a:lists
endfunction

function! s:btags_source()
  let lines = map(split(system(printf(
    \ 'ctags -f - --sort=no --excmd=number --language-force=%s %s',
    \ &filetype, expand('%:S'))), "\n"), 'split(v:val, "\t")')
  if v:shell_error
    throw 'failed to extract tags'
  endif
  return map(s:align_lists(lines), 'join(v:val, "\t")')
endfunction

function! s:btags_sink(line)
  execute split(a:line, "\t")[2]
endfunction

function! s:btags()
  try
    call fzf#run({
    \ 'source':  s:btags_source(),
    \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
    \ 'down':    '40%',
    \ 'sink':    function('s:btags_sink')})
  catch
    echohl WarningMsg
    echom v:exception
    echohl None
  endtry
endfunction

command! BTags call s:btags()
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

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


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

"nnoremap <leader>e :ALEToggle<cr>
"nnoremap <leader>an :ALENextWrap<cr>
"nnoremap <leader>ap :ALEPreviousWrap<cr>

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

" }}}

" Tmux vim integration {{{
Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1
"let g:tmux_navigator_save_on_switch = 1

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
Plug 'andreypopp/vim-colors-plain'
" }}}

" Format {{{
"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).

" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go

let g:ctrlp_map = ''

Plug 'sbdchd/neoformat'
nmap <silent> <Leader>tw :setlocal wrap! breakindent!<CR>
nnoremap <silent> <leader>f :Neoformat<CR>
let g:neoformat_enabled_python = ['yapf', 'isort']
let g:neoformat_enabled_latex = ['latexindent']
let g:neoformat_enabled_cmake = ['cmake_format']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_run_all_formatters = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_align = 1
"let g:neoformat_css_prettier        = {'exe': 'prettier', 'args': ['--write', '--config', '.prettierrc'], 'replace': 1}
"let g:neoformat_javascript_prettier = {'exe': 'prettier', 'args': ['--write', '--config', '.prettierrc'], 'replace': 1}
"let g:neoformat_jsx_prettier        = {'exe': 'prettier', 'args': ['--write', '--config', '.prettierrc'], 'replace': 1}
"let g:neoformat_less_prettier       = {'exe': 'prettier', 'args': ['--write', '--config', '.prettierrc'], 'replace': 1}
autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --trailing-comma\ es5
" Use formatprg when available
let g:neoformat_try_formatprg = 1

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
      \ --enable=simple
      \ --enable=errcheck
      \ --enable=staticcheck
      \ '

let g:ale_list_window_size = 2
" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Show type information
"let g:go_auto_type_info = 1

" Highlight variable uses
let g:go_auto_sameids = 0

" Fix for location list when vim-go is used together with Syntastic
let g:go_gocode_propose_builtins = 1
let g:go_gocode_unimported_packages = 1
let g:go_gocode_propose_source = 1

" gometalinter configuration
let g:go_auto_type_info = 0
let g:go_snippet_engine = "neosnippet"
"let g:go_statusline_duration = 10000
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "2s"
let g:go_metalinter_disabled = 1
let g:go_metalinter_autosave = 0

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐'
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

highlight link ALEWarningSign String
highlight link ALEErrorSign todo
" }}}

" Autocompletion {{{
" v2 of the nvim-completion-manager.
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-tmux'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-go'
"Plug 'ncm2/ncm2-tern'
"Plug 'autozimu/LanguageClient-neovim', {
"            \ 'branch': 'next',
"            \ 'do': 'bash install.sh',
"            \ }
"autocmd BufEnter * call ncm2#enable_for_buffer()
"let g:LanguageClient_autoStart = 1

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
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
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
set completeopt=preview,noinsert,noselect,menuone         " remove the horrendous preview window

"g:deoplete#max_menu_width = 20

" disable autocomplete by default

let g:deoplete#sources#go#use_cache = 1
let g:deoplete#enable_at_startup = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
"call deoplete#custom#buffer_option('auto_complete', v:false)
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
"call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#ignore_sources = {}
"let g:deoplete#ignore_sources._ = ['buffer', 'member', 'file', 'around']
"let g:deoplete#sources#go#source_importer = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/nsf-gocode'


"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd InsertEnter * IndentLinesDisable
autocmd InsertLeave * IndentLinesEnable
"autocmd InsertEnter * call deoplete#enable()
let g:deoplete#auto_complete_delay = 0
"let g:deoplete#enable_smart_case = 1
"let g:deoplete#auto_complete_start_length = 0
"let g:deoplete#enable_camel_case = 1
"let g:deoplete#max_abbr_width = 35
"let g:deoplete#max_menu_width = 20
let g:deoplete#skip_chars = ['(', ')', '<', '>']
let g:deoplete#tag#cache_limit_size = 800000
let g:deoplete#file#enable_buffer_path = 1
"let g:neosnippet#enable_completed_snippet = 1


" neosnippet
imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

"let g:neosnippet#enable_snipmate_compatibility = 1
"let g:neosnippet#snippets_directory = "~/.config/nvim/plugged/vim-snippets/snippets"

 "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
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
"    \ 'dockerfile': ['docker-langserver', '--stdio']
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
  let g:gutentags_ctags_tagfile = '.tags'
  let g:gutentags_ctags_exclude = ['node_modules', 'vendor', 'venv',
                                   \ '*.css', '*.html', '*.js', '*.ts']
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

"----------------------------------------------
" Language: Golang
"----------------------------------------------
" {{{
" Enable syntax highlighting per default
" Enable completing of go pointers
Plug 'zchee/deoplete-go', { 'do': 'make'}
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#source_importer = 0



au FileType go set noexpandtab
au FileType go set shiftwidth=2
au FileType go set softtabstop=2
au FileType go set tabstop=2

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
" Fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" Add the failing test name to the output of :GoTest
let g:go_test_show_name = 1
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"
" Run goimports when running gofmt
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1 "we have this for ale


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
packadd vim-polyglot
