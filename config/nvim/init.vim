set runtimepath+=~/.vim_runtime

call plug#begin('~/.vim/plugged')


Plug 'neovimhaskell/haskell-vim'
Plug 'eagletmt/neco-ghc'
Plug 'xolox/vim-lua-ftplugin'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Konfekt/FastFold'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neoinclude.vim'
Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'derekwyatt/vim-scala'
Plug 'jacoborus/tender.vim'
Plug 'fatih/molokai'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdcommenter'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'Lokaltog/vim-distinguished'
Plug 'millermedeiros/vim-esformatter', { 'do': 'npm install -g esformatter' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'endel/vim-github-colorscheme'
Plug 'junegunn/vim-peekaboo'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go'
Plug 'sjl/gundo.vim'
Plug 'craigemery/vim-autotag'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'jelera/vim-javascript-syntax'
Plug 'Shougo/context_filetype.vim'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.vim/plugged/gocode/nvim/symlink.sh' }
Plug 'w0ng/vim-hybrid'
Plug 'rhysd/try-colorscheme.vim'
Plug 'vim-scripts/Wombat'
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/twilight'
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/rdark'
Plug 'djjcast/mirodark'
Plug 'sjl/badwolf'
Plug 'cocopon/iceberg.vim' " A dark color scheme for Vim, came from Antarctica
Plug 'reedes/vim-colors-pencil'
Plug 'freeo/vim-kalisi'
Plug 'rhysd/vim-color-splatoon'
Plug 'mhinz/vim-janah'
if executable('ctags')
  Plug 'ludovicchabant/vim-gutentags'
  "Plug 'davidosomething/vim-gutentags', { 'branch': 'user-autocmd' }
endif
Plug 'othree/jspc.vim'
call plug#end()

set completeopt+=noselect

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:enable_bold_font = 1

" Path to python interpreter for neovim
" MIGHT NOT NEED
let g:python3_host_prog  = '/usr/local/bin/python3'
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
" Skip the check of neovim module
"let g:python3_host_skip_check = 1

set tags=./tags,tags;

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
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

let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'

nnoremap <silent> <C-f> :FZF -m<cr>
nnoremap <silent> <C-b> :Buffers<cr>
 " Better command history with q:
command! CmdHist call fzf#vim#command_history({'right': '40'})
nnoremap q: :CmdHist<CR>

""""""""""""""""""""""""""""""
" => CTRL-P
" """"""""""""""""""""""""""""""
" "let g:ctrlp_working_path_mode = 0
"
" "map <leader>j :CtrlP<cr>
" "map <c-b> :CtrlPBuffer<cr>
"
" "let g:ctrlp_max_height = 20
" "let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
"

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType htmlsetlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType go set omnifunc=gocomplete#Complete
  autocmd FileType golang set omnifunc=gocomplete#Complete

augroup end


autocmd! User FzfStatusLine call <SID>fzf_statusline()
"let g:tern_request_timeout = 6000
try

source ~/.vim_runtime/my_configs.vim
" show completion options on <TAB>
set wildmode=longest,list,full
set wildmenu

au FileType javascript setlocal nofoldenable

set nofoldenable    " disable folding
set foldmethod=indent
set noshowmode
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" allow multiple cursors before and after
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

" React
let g:jsx_ext_required = 0
" Directory of snippets
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'

" Auto start Deoplete
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_refresh_delay = 50
let g:deoplete#enable_camel_case = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
let g:deoplete#enable_at_startup = 1
let g:tern_show_signature_in_pum = 1  " This enables full signature type on autocomplete

let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#json_directory = $GOPATH.'/src/github.com/notjrbauer/go-static'
let g:deoplete#omni#functions = get(g:, 'deoplete#omni#functions', {})
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete'
\]
"let g:deoplete#sources#go = 'vim-go'
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#tag#cache_limit_size = 500000
" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#filetypes = [ 'jsx', 'javascript.jsx']
let g:tern#arguments = ["--persistent"]

" deoplete lua
let g:lua_check_syntax = 0
let g:lua_complete_omni = 1
let g:lua_complete_dynamic = 0
let g:lua_define_completion_mappings = 0
let g:deoplete#omni#functions.lua = 'xolox#lua#omnifunc'

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Tern shortcuts
au FileType javascript nmap gd :TernDef<CR>
au FileType javascript nmap <Leader>ds :TernDefSplit<CR>
au FileType javascript nmap <Leader>dt :TernDefTab<CR>
au FileType javascript nmap <Leader>gd :TernDoc<CR>
au FileType javascript nmap <Leader>t :TernType<CR>

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Movement within 'ins-completion-menu'
"imap <expr><C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
"imap <expr><C-k>   pumvisible() ? "\<C-p>" : "\<C-k>"

" Undo completion
 inoremap <expr><C-g> deoplete#undo_completion()

" Redraw candidates
 inoremap <expr><C-l> deoplete#refresh()

" Scroll pages in menu
inoremap <expr><C-f> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<Right>"
inoremap <expr><C-b> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<Left>"
imap     <expr><C-d> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
imap     <expr><C-u> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" <CR>: If popup menu visible, expand snippet or close popup with selection,
"       Otherwise, check if within empty pair and use delimitMate.
imap <silent><expr><CR> pumvisible() ?
	\ (neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : deoplete#close_popup())
		\ : (delimitMate#WithinEmptyPair() ? "\<Plug>delimitMateCR" : "\<CR>")

" <Tab> completion:
" 1. If popup menu is visible, select and insert next item
" 2. Otherwise, if within a snippet, jump to next input
" 3. Otherwise, if preceding chars are whitespace, insert tab char
" 4. Otherwise, start manual autocomplete
imap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#manual_complete()))

smap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : deoplete#manual_complete()))

inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:is_whitespace()
	let col = col('.') - 1
	return ! col || getline('.')[col - 1] =~? '\s'
endfunction/


" Allow Updatetime to be lower
set updatetime=100

" Gitgutter configs
"let g:gitgutter_highlight_lines = 1

" Go highlight
let g:go_auto_type_info = 1
let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1

let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim-go statusline var info
"let g:go_auto_type_info = 1

" vim-go mappings

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
let g:go_fmt_command = "goimports"
"let g:go_term_mode = "vertical"

" Scala
" Set syntax highlighting for .scala files
autocmd BufNewFile,BufRead *.scala set ft=scala
" Set syntax highlighting for scala worksheet files
autocmd BufNewFile,BufRead *.sc set ft=scala


"let g:hybrid_custom_term_colors = 1
"autocmd FileType javascript colorscheme hybrid_material
autocmd BufNewFile,BufRead *.jsx set ft=javascript
autocmd BufNewFile,BufRead *.js set ft=javascript
"autocmd FileType go colorscheme tender

colorscheme tender
" Tmux Nvim Hack
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" Redraw rebind
nnoremap <S-L> :redraw!<CR><S-L>

" github
let g:github_dashboard = { 'username': $GITHUB_USER, 'password': $GITHUB_TOKEN }
source ~/.config/nvim/plugin-configs/lightline.vim
"source ~/.config/nvim/plugin-configs/vim-slash.vim
"source ~/.config/nvim/plugin-configs/tag.bar.vim

"autocmd FileType qf wincmd J


catch
  echo "Error loading init.vim!"
endtry
