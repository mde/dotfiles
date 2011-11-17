syntax on
set background=dark

set t_Co=256
:colorscheme xoria256

" Suppress all spaces at end/beginning of lines
nmap _s :%s/\s\+$//<CR>
nmap _S :%s/^\s\+//<CR>
nmap _j :g/\S/,/^\s*$/join<CR>
nmap _w :set wrap lbr tw=0 co=100<CR>
nmap _t :tabnew 
nmap _l :set nonu<CR>
nmap _L :set nu<CR>
nmap _h :highlight RedundantSpaces ctermbg=blue guibg=blue<CR>:match RedundantSpaces /\s\+$\| \+\ze\t/<CR>

" Turn off auto-indent for paste
set pastetoggle=<F8>

" Line numbahs ...
set nu
" Use spaces for tabs
set et
" Indent 2 spaces
set ts=2
set sw=2
" Jump to matching brackets
" set sm
" Auto-indent
set ai

set history=1000

" @ will reformat the current paragraph
map @ !} fmt -w 65

" Cycle through the tabs
map <C-J> :tabp<CR>
map <C-K> :tabn<CR>

abbr #b /*------------------------------------------------
abbr #e -----------------------------------------------*/

cabbr lint !runjslint "`cat %`" \| lynx --force-html /dev/fd/5 -dump 5<&0 \| less

" HTML syntax for .ejs template files
au BufRead,BufNewFile *.ejs set filetype=html
" JS syntax for .as files
au BufRead,BufNewFile *.as set filetype=javascript
" JS syntax for Jakefiles
au BufRead,BufNewFile Jakefile set filetype=javascript

:set hlsearch

highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()


