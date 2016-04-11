" Enable Truecolor
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


syntax on
syntax enable

let g:hybrid_custom_term_colors=1
set background=dark
colorscheme hybrid_reverse

set laststatus=2
set tabstop=2                 " size of a hard tabstop
set expandtab                 " always uses spaces instead of tab characters
set shiftwidth=2              " size of an indent
set smartcase
setlocal autoindent
setlocal smartindent

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" JJ to Escape
imap jj <Esc>
imap <C-c> <CR><Esc>O

" Make js beautifur
nnoremap <leader>ff :%!js-beautify -a -s 2 -j -q -f -<CR>
nnoremap <leader>fg :%!standard-format %<CR>

" Invoke NERDTree
let g:NERDTreeWinPos = "left"
nnoremap <F3> :NERDTreeToggle<cr>

" Invoke Gundo
nnoremap <F2> :GundoToggle<CR>

"Use vim-over for substitution
nmap <leader>s :OverCommandLine<CR>

" persist (g)undo tree between sessions
set undofile
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

autocmd FileType c,cpp,python,ruby,java,js,javascript autocmd BufWritePre * :%s/\s\+$//e
let g:airline_theme = 'hybridline'

filetype plugin on
filetype plugin indent on

set completeopt-=preview
set nohlsearch
set cursorline
set number

let g:multi_cursor_next_key="<C-x>"

" Long autocomplete
set wildmode=longest:full,full

" tab & shift tab to indent and out-dent
vmap <Tab> >gv
vmap <S-Tab> <gv

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

hi SyntasticWarning cterm=NONE ctermfg=grey ctermbg=white

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType javascript setlocal sw=2 ts=2 sts=0 expandtab
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-254color-bce.html
  set t_ut=
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

set fileformats=unix
set ff=unix
set updatetime=500

:bufdo let b:syntastic_mode="passive"
let g:airline#extensions#syntastic#enabled = 1
let g:gitgutter_enabled = 0
" This is the default extra key bindings
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~40%' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] to customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Advanced customization using autoload functions
autocmd VimEnter * command! Colors
      \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})


" }}}
" ============================================================================
" FZF {{{
" ============================================================================

if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
nnoremap <silent> <Leader>`        :Marks<CR>

command! Plugs call fzf#run({
      \ 'source':  map(sort(keys(g:plugs)), 'g:plug_home."/".v:val'),
      \ 'options': '--delimiter / --nth -1',
      \ 'down':    '~40%',
      \ 'sink':    'Explore'})
