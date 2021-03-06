"" use variable 'indent' from ~/.vimrc (maybe overwritten in ~/.vimrc.local)
let &tabstop=indent
let &shiftwidth=indent
set expandtab

"" requires shellcheck
let g:syntastic_sh_shellcheck_args = '-x'
"" disable syntastic
"autocmd VimEnter * SyntasticToggleMode

"" colored warning for lines exceeding 80 characters
"" borrowed from Damian Conway
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"" show all whitespaces except space (using unicode chars)
"" borrowed from Damian Conway
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"" <F3> runs the bash interpreter on the current buffer
map <f3> <Esc>:! bash %<CR>
