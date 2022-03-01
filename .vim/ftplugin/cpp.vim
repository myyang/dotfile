let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17'
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'

"autoformat
au BufWrite * :Autoformat
