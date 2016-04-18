
nmap <leader>x <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>t <Plug>(go-test)
nmap <leader>cv <Plug>(go-coverage)

nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

nmap <Leader>k <Plug>(go-doc)
nmap <Leader>K <Plug>(go-doc-vertical)

nmap <Leader>imp <Plug>(go-import)
nmap <Leader>ipl <Plug>(go-implements)
nmap <Leader>inf <Plug>(go-info)
nmap <Leader>r <Plug>(go-rename)

nmap <Leader>l <Plug>(go-metalinter)
nmap <Leader>v <Plug>(go-vet)

nmap <Leader>ce <Plug>(go-callees)
nmap <Leader>cr <Plug>(go-callers)

imap <C-X> <Esc>:w<CR>\x

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0

let tool_path = "/usr/local/vim-go-tool"
let tool_bin_path = "/usr/local/vim-go-tool/bin"
if !isdirectory(tool_path)
    call mkdir(tool_path, "p")
endif

let g:go_bin_path = expand(tool_bin_path)
