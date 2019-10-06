let g:echodoc#enable_at_startup = 1

" let g:echodoc#type = 'floating'
" highlight link EchoDocFloat Pmenu
"
" function! s:SetUpLoupeHighlight()
" * execute 'highlight! link QuickFixLine PmenuSel'

"   highlight! clear Search
"   execute 'highlight! link Search Underlined'
" endfunction

if has('autocmd')
  augroup MyEchodoc
    autocmd!
    call echodoc#enable()
  "   autocmd ColorScheme * call <SID>SetUpLoupeHighlight()
  augroup END
endif

" call s:SetUpLoupeHighlight()

" nmap <Leader>c <Plug>(LoupeClearHighlight)
