set tabstop=4
set expandtab
set shiftwidth=4

"" colored warning for lines exceeding 80 characters
"" borrowed from Damian Conway
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"" show all whitespaces except space (using unicode chars)
"" borrowed from Damian Conway
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"" <F3> runs the perl6 interpreter on the current buffer
map <f3> <Esc>:! perl6 %<CR>
