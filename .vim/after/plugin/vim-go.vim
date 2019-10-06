" let g:go_gocode_unimported_packages = 1
" let g:go_gocode_propose_source = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_list_type_commands = {"GoBuild": "quickfix", "GoTest": "locationlist"}
" Fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" Add the failing test name to the output of :GoTest
let g:go_test_show_name = 1
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"
" Run goimports when running gofmt
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1 "we have this for ale

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled = 0
