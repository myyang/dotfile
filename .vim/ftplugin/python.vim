"vim setting for python

"pymode

"enable
let g:pymode = 1

let g:pymode_trim_whitespaces = 1

let g:pymode_options = 1
let g:pymode_options_max_line_length = 140
let g:pymode_options_colorcolumn = 1

let g:pymode_motion = 1

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_options_pep8 =
    \ {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_lint_options_pylint =
    \ {'max-line-length': g:pymode_options_max_line_length}
let g:pymode_lint_ignore = "E501,E702"


let g:pymode_syntax = 1

let g:pymode_folding = 1

"vim-snippet
let g:ultisnips_python_style = "sphinx"
