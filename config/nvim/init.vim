set runtimepath+=~/.vim_runtime
call plug#begin('~/.vim/plugged')
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'zaiste/tmux.vim'
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
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'derekwyatt/vim-scala'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go'
"Plug 'dgryski/vim-godef'
Plug 'jacoborus/tender.vim'
Plug 'fatih/molokai'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdcommenter'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'tpope/vim-dispatch'
Plug 'Lokaltog/vim-distinguished'
Plug 'millermedeiros/vim-esformatter', { 'do': 'npm install -g esformatter' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jacoborus/tender.vim'
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
call plug#end()

set completeopt+=noselect

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:enable_bold_font = 1

" Path to python interpreter for neovim
" MIGHT NOT NEED
let g:python3_host_prog  = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType htmlsetlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

autocmd! User FzfStatusLine call <SID>fzf_statusline()
let g:tern_request_timeout = 6000
try
  source ~/.vim_runtime/my_configs.vim
  source ~/.config/nvim/plugin-configs/lightline.vim

" show completion options on <TAB>
set wildmode=longest,list,full
set wildmenu

au FileType javascript setlocal nofoldenable
set nofoldenable    " disable folding

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
let g:deoplete#enable_at_startup = 1
let g:tern_show_signature_in_pum = 1  " This enables full signature type on autocomplete
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#gocode_binary = $GOBIN.'/gocode'

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Allow Updatetime to be lower
set updatetime=100

" Gitgutter configs
let g:gitgutter_highlight_lines = 1

" Go highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim-go statusline var info
let g:go_auto_type_info = 1

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

" Scala
" Set syntax highlighting for .scala files
autocmd BufNewFile,BufRead *.scala set ft=scala
" Set syntax highlighting for scala worksheet files
autocmd BufNewFile,BufRead *.sc set ft=scala


let g:hybrid_custom_term_colors = 1
autocmd FileType javascript colorscheme hybrid_material
"autocmd BufNewFile,BufRead *.go set ft=go
"autocmd FileType go colorscheme gruvbox

" for hyperterm ._.
"highlight Pmenu guibg=black gui=bold
let g:gruvbox_contrast_dark="medium"
colorscheme gruvbox
" Tmux Nvim Hack
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
catch
  echo "Error loading init.vim!"
endtry
