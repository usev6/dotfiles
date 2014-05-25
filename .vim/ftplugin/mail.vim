"" editing mails

set textwidth=70
set wrap

"" TODO what does this do?
set fo=tcrq2

set nomodeline
"" otherwise keymapping stops to read after one second
set notimeout
"" TODO perhaps not necessary?
set ttimeout

set comments+=n:\|

"" specific configuration for mutt
"" (mappings for signatures etc.)
source ~/.mutt/vimrc.mutt
