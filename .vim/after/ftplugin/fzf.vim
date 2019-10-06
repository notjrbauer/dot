silent! match None
setl nonumber
nmap <buffer> <silent>  q :q<cr>

let b:undo_ftplugin = 'setl nonumber<'
autocmd! FileType fzf tnoremap <buffer> <ESC> <C-c>
autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
