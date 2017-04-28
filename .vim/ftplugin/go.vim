
nmap <leader>x <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>tt <Plug>(go-test)
nmap <leader>tc :!go test -c -gcflags "-N -l"<CR>
nmap <leader>cv <Plug>(go-coverage)

nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

nmap <Leader>k <Plug>(go-doc)
nmap <Leader>kv <Plug>(go-doc-vertical)

nmap <Leader>y <Plug>(go-import)
nmap <Leader>ys <Plug>(go-imports)
imap <C-Y> <Esc>\ya
nmap <Leader>ip <Plug>(go-implements)
nmap <Leader>in <Plug>(go-info)
nmap <Leader>r <Plug>(go-rename)


nmap <Leader>m <Plug>(go-metalinter)
nmap <Leader>v <Plug>(go-vet)

nmap <Leader>ce <Plug>(go-callees)
nmap <Leader>cr <Plug>(go-callers)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_play_open_browser = 0
let g:go_info_mode = 'guru'
let g:go_updatetime = 600
let g:go_doc_command = "go doc"

let tool_bin_path = expand("~/.vim/vim-go-tool/bin")
if !isdirectory(tool_bin_path)
    call mkdir(tool_bin_path, "p")
    autocmd VimEnter *.go execute ':GoInstallBinaries' | cw 20
endif

let g:go_bin_path = expand(tool_bin_path)

autocmd BufWritePost,FileWritePost *.go execute ':GoLint' | cwindow
