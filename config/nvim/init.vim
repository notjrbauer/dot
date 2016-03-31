set runtimepath+=~/.vim_runtime
call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim' | Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
"Plug 'carlitux/deoplete-ternjs'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'Shougo/neoinclude.vim'
"Plug 'Konfekt/FastFold'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

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

let g:python3_host_prog = '/usr/local/bin/python3.5'
    

" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#keyword_patterns = {}
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0  " This do disable full signature type on autocomplete
let g:neosnippet#enable_completed_snippet = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" NeoSnippet mappings (^k to expand a selected snippet)
imap <C-k>    <Plug>(neosnippet_expand_or_jump)
smap <C-k>    <Plug>(neosnippet_expand_or_jump)
xmap <C-k>    <Plug>(neosnippet_expand_target)
inoremap <silent> <CR>   <C-r>=<SID>my_cr_function()<CR>
imap <expr><TAB>
      \ pumvisible() ? "\<C-n>" :
      \ neosnippet#expandable_or_jumpable() ?
      \    neosnippet#mappings#expand_or_jump_impl() : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \    neosnippet#mappings#expand_or_jump_impl() : "\<TAB>"

function! s:my_cr_function()
  return pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
endfunction

let g:SuperTabDefaultCompletionType = '<C-n>'
"if has('conceal')
"  set conceallevel=2 concealcursor=inv
"endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
  " deoplete tab-complete
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
  " tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
autocmd! User FzfStatusLine call <SID>fzf_statusline()
try
  source ~/.vim_runtime/my_configs.vim
catch
  echo "NO"
endtry
