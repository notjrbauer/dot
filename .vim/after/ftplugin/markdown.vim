setl spell
setl linebreak
setl nolist

if executable('grip')
  nnoremap <buffer><leader>p :call utils#openMarkdownPreview()<CR>
endif

let b:undo_ftplugin = 'setl spell< linebreak< nolist<'
