"" use variable 'indent' from ~/.vimrc (maybe overwritten in ~/.vimrc.local)
let &tabstop=indent
let &shiftwidth=indent
set expandtab

"" colored warning for lines exceeding 80 characters
"" borrowed from Damian Conway
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"" show all whitespaces except space (using unicode chars)
"" borrowed from Damian Conway
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"" <F3> compiles the current buffer
map <f3> <Esc>:! gcc -std=c99 % -o %<<CR>

"" <F4> runs the compiled program
map <f4> <Esc>:! ./%<<CR>

"" <F5> compiles the current buffer and runs the compiled program
map <f5> <Esc>:! gcc -std=c99 % -o %< ; ./%<<CR>
