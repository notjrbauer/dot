set runtimepath+=~/.vim_runtime
call plug#begin('~/.vim/plugged')

Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'zaiste/tmux.vim'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
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

    

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:SuperTabDefaultCompletionType = '<C-n>'

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
try
  source ~/.vim_runtime/my_configs.vim
catch
  echo "NO"
endtry
