"" use variable 'indent' from ~/.vimrc (maybe overwritten in ~/.vimrc.local)
let &tabstop=indent
let &shiftwidth=indent
set expandtab

"" requires Perl::Critic
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker', 'perlcritic']
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

"" <F3> runs the perl interpreter on the current buffer
map <f3> <Esc>:! perl %<CR>

"" read templates for perl programs
map ,TEMP :r ~/my_files/computer/Perl/code_templates/
