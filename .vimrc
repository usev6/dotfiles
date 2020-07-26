syntax enable

"" colorscheme settings
set t_Co=16       "" 16 colors
set background=dark
colorscheme solarized

"" play it safe
"" https://github.com/numirias/security/blob/master/doc/2019-06-04_ace-vim-neovim.md
set nomodeline

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

"" include specific configuration for this machine (if present)
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif

"" enable syntastic via pathogen
"" https://github.com/vim-syntastic/syntastic
execute pathogen#infect()

"" settings for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
