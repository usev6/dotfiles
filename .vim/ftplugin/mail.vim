"" editing mails

set textwidth=70
set wrap

"" see fo-table
set formatoptions=tcrq2

"" otherwise keymapping stops to read after one second
set notimeout
"" TODO perhaps not necessary?
set ttimeout

set comments+=n:\|

"" specific configuration for mutt
"" (mappings for signatures etc.)
if filereadable(glob("~/.mutt/vimrc.mutt"))
    source ~/.mutt/vimrc.mutt
endif

"" use original solarized color scheme for mails
colorscheme solarized_orig
