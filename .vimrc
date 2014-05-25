syntax enable
set background=dark
colorscheme solarized

set nocompatible

filetype plugin on
"" not needed: filetype is detected for mutt files
" au BufNewFile,BufRead /tmp/mutt* set ft=mail

filetype indent on

"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a single file. This will confuse latex-suite. Set your grep
"" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

set bs=2