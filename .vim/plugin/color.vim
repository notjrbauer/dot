if exists('+termguicolors')
  " let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme tender


" set guicursor=a:blinkon0
"   \,n-c-v:block-nCursor
"   \,i:block-iCursor
augroup MyCustomColors
  autocmd!
  autocmd ColorScheme * hi! clear SignColumn
      \| hi! StatusLine guifg=#282828 guibg=#bbbbbb gui=bold
      \| hi!  StatusLineNC guifg=#282828 guibg=#666666 gui=bold
      \| hi! Visual guifg=NONE guibg=#444444 gui=NONE
      \| hi! Error guibg=NONE guifg=#f43753 gui=italic cterm=NONE
      \| hi! CocErrorHighlight guibg=NONE guifg=NONE gui=undercurl
      \| hi! CocErrorSign guifg=red
      \| hi! CocWarningSign guifg=yellow
      \| hi! CocInfoSign guifg=magenta
      \| hi! CocHintSign guifg=cyan
      \| hi! PMenu guifg=#eeeeee guibg=#222222 gui=NONE
      \| hi! PMenuSel guifg=#282828 guibg=#bbbbbb gui=NONE
      \| hi! PmenuSbar guifg=#222222 guibg=#222222 gui=NONE
      \| hi! PmenuThumb guifg=#333333 guibg=#333333 gui=NONE
      \| hi! clear TabLine cterm=NONE     gui=NONE
      \| hi! clear TabLineSel cterm=NONE     gui=NONE
      \| hi! clear TabLineFill cterm=NONE     gui=NONE
      \| hi! Comment guifg=#666666 guibg=NONE gui=italic
      \| hi! link Error ErrorMsg
      \| hi! link ALEError DiffDelete
      \| hi! link ALEErrorSign DiffDelete
      \| hi! link ALEWarning DiffChange
      \| hi! link ALEWarningSign DiffChange
      " \| hi! nCursor guifg=Black guibg=Magenta gui=bold
      " \| hi! iCursor guifg=Black guibg=White gui=bold
"   "       \| hi! Pmenu ctermfg=235 ctermbg=81 guifg=#282828 guibg=#73cef4
"   "       \| hi! link NormalFloat Pmenu
"   "       \| hi! link CoCFloating Pmenu
"   "       \| hi! link CocWarningFloat Pmenu
"   "       \| hi! link CocInfoFloat Pmenu
"   "       \| hi! link CocHintFloat Pmenu
"   "       \| hi! link CocErrorFloat Pmenu
"   "       \| hi! link TablineFill Pmenu
"   "       \| hi! link TabLineSel Pmenu
"         " \| hi! link WildMenu TermCursor
"         " \| hi! link PmenuSel TermCursor
"         " \| hi! NonText ctermbg=NONE guibg=NONE

"   "       \| hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
"   "       \| hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
"         " \| hi! clear Tabline cterm=NONE     gui=NONE
"         " \| hi! TablineSel cterm=reverse gui=reverse
" "         \| if &background ==# 'dark' | hi! VertSplit gui=NONE guibg=NONE guifg=#333333 cterm=NONE ctermbg=NONE ctermfg=14 | endif
" "         \| hi! link Todo Comment
" "         \| hi! link Conceal NonText
" "         \| hi! User5 ctermfg=red guifg=red
" "         \| hi! User7 ctermfg=cyan guifg=cyan
" "         \| execute printf('hi! User4 gui=NONE cterm=NONE guibg=NONE ctermbg=NONE guifg=%s ctermfg=%s', utils#get_color('NonText', 'fg', 'gui'), utils#get_color('NonText','fg', 'cterm'))
" "         \| execute printf('hi! StatusLine gui=NONE cterm=NONE guibg=NONE ctermbg=NONE guifg=%s ctermfg=%s', utils#get_color('Identifier', 'fg', 'gui'), utils#get_color('Identifier', 'fg', 'cterm'))
" "         \| execute printf('hi! StatusLineNC gui=italic cterm=italic guibg=NONE ctermbg=NONE guifg=%s ctermfg=%s', utils#get_color('NonText', 'fg', 'gui'), utils#get_color('NonText', 'fg', 'cterm'))
" "         \| execute printf("hi! ALEInfoLine guifg=%s guibg=%s", &background=='light'?'#808000':'#ffff00', &background=='light'?'#ffff00':'#555500')
" "         \| execute printf("hi! ALEWarningLine guifg=%s guibg=%s", &background=='light'?'#808000':'#ffff00', &background=='light'?'#ffff00':'#555500')
" "         \| execute printf("hi! ALEErrorLine guifg=%s guibg=%s", '#ff0000', &background=='light'?'#ffcccc':'#550000')
" "         \| hi! link Error ErrorMsg
" "         \| hi! link ALEError DiffDelete
" "         \| hi! link ALEErrorSign DiffDelete
" "         \| hi! link ALEWarning DiffChange
" "         \| hi! link ALEWarningSign DiffChange
" "         " \| hi! NormalFloat cterm=NONE ctermbg=0 gui=NONE guibg=#000000

" "   " autocmd ColorScheme codedark,plain hi! link StartifyHeader Normal
" "   "       \| hi! link StartifyFile Directory
" "   "       \| hi! link StartifyPath LineNr
" "   "       \| hi! link StartifySlash StartifyPath
" "   "       \| hi! link StartifyBracket StartifyPath
" "   "       \| hi! link StartifyNumber Title

"   " autocmd ColorScheme plain execute printf('hi! LineNr gui=NONE cterm=NONE guibg=NONE ctermbg=NONE guifg=%s ctermfg=%s', utils#get_color('VisualNOS', 'bg', 'gui'), utils#get_color('VisualNOS', 'bg', 'cterm'))
" "   "       \| hi! Comment cterm=NONE gui=NONE ctermfg=236 guifg=#555555
" "   "       \| hi! link PmenuSel TermCursor
augroup END
