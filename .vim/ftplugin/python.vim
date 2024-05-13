"vim setting for python

"pymode

"enable
let g:pymode = 1

let g:pymode_trim_whitespaces = 1

let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1

let g:pymode_quickfix_maxheight = 5

let g:pymode_motion = 1

let g:pymode_virtualenv = 1

let g:pymode_run = 1
let g:pymode_run_bind = '<leader>x'

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_options_pep8 =
    \ {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_lint_options_pylint =
    \ {'max-line-length': g:pymode_options_max_line_length}
let g:pymode_lint_ignore = "E501,E702"

let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0  "Use ycm auto-completion

let g:pymode_syntax = 1

let g:pymode_folding = 1

"jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 1
let g:jedi#completions_command = "<C-n>"
let g:jedi#popup_on_dot = 0  " use ycm auto-completion

"vim-snippet
let g:ultisnips_python_style = "sphinx"

