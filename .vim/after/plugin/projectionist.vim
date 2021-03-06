if !exists(':ProjectDo')
  finish
endif

let g:projectionist_heuristics = {
      \   '*': {
      \     'src/*.re': {
      \       'alternate': [
      \         '__tests__/{}_test.re',
      \         'src/{}_test.re',
      \         'src/{}.rei'
      \       ],
      \       'type': 'source'
      \     },
      \     'src/*.rei': {
      \       'alternate': [
      \         'src/{}.re',
      \         '__tests__/{}_test.re',
      \         'src/{}_test.re',
      \       ],
      \       'type': 'header'
      \     },
      \     '__tests__/*_test.re': {
      \       'alternate': [
      \         'src/{}.rei',
      \         'src/{}.re',
      \       ],
      \       'type': 'test'
      \     }
      \   }
      \ }

" https://github.com/wincent/wincent/blob/60e0aab821932c247cd70681641bf1d87245ae36/roles/dotfiles/files/.vim/after/plugin/projectionist.vim#L38-L68
" Helper function for batch-updating the g:projectionist_heuristics variable.
function! s:project(...)
  for [l:pattern, l:projection] in a:000
    let g:projectionist_heuristics['*'][l:pattern] = l:projection
  endfor
endfunction

" Set up projections for JS variants.
for s:extension in ['.js', '.jsx', '.ts', '.tsx']
  call s:project(
        \ ['*' . s:extension, {
        \   'alternate': [
        \         '{dirname}/{basename}.test' . s:extension,
        \         '{dirname}/{dirname}.test' . s:extension,
        \         '{dirname}/__tests__/{basename}.test' . s:extension,
        \   ],
        \   'type': 'source'
        \ }],
        \ ['*.test' . s:extension, {
        \       'alternate': [
        \         '{basename}' . s:extension,
        \         '{basename}/index' . s:extension
        \        ],
        \   'type': 'test',
        \ }],
        \ ['**/__tests__/*.test' . s:extension, {
        \       'alternate': [
        \         '{basename}' . s:extension,
        \         '{basename}/index' . s:extension
        \        ],
        \   'type': 'test'
        \ }])
endfor
