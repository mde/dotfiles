filetype off
syntax on
set background=dark
set nocompatible
set showcmd

set t_Co=256
:colorscheme xoria256

" Suppress all spaces at end/beginning of lines
nmap _s :%s/\s\+$//<CR>
nmap _S :%s/^\s\+//<CR>
nmap _j :g/\S/,/^\s*$/join<CR>
nmap _w :set wrap lbr tw=0 co=100<CR>
nmap _t :tabnew 
nmap _n :set nonu<CR>
nmap _N :set nu<CR>
nmap _h :highlight RedundantSpaces ctermbg=blue guibg=blue<CR>:match RedundantSpaces /\s\+$\| \+\ze\t/<CR>
nmap <leader>s :%s/\s\+$//<CR>
nmap <leader>S :%s/^\s\+//<CR>
nmap <leader>j :g/\S/,/^\s*$/join<CR>
nmap <leader>w :set wrap lbr tw=0 co=100<CR>
nmap <leader>t :tabnew 
nmap <leader>n :set nonu<CR>
nmap <leader>N :set nu<CR>
nmap <leader>h :highlight RedundantSpaces ctermbg=blue guibg=blue<CR>:match RedundantSpaces /\s\+$\| \+\ze\t/<CR>
nmap <space> :Ag 
vmap P "_dP
vmap p "_dp


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
" Fucking Windows
set ffs=unix,dos

set history=1000

" @ will reformat the current paragraph
map @ !} fmt -w 80

" Cycle through the tabs
map <C-J> :tabp<CR>
map <C-K> :tabn<CR>

abbr #b /*------------------------------------------------
abbr #e -----------------------------------------------*/

cabbr lint !runjslint "`cat %`" \| lynx --force-html /dev/fd/5 -dump 5<&0 \| less

au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.hbs set filetype=html
au BufRead,BufNewFile *.as set filetype=javascript
au BufRead,BufNewFile Jakefile set filetype=javascript
au BufRead,BufNewFile *.jake set filetype=javascript
" Always, always, always use Unix line-endings
" au BufRead,BufNewFile * set fileformat=unix

:set hlsearch

highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()
autocmd BufNewFile,BufRead /Users/mde/work/yourPeople2/* setlocal noexpandtab tabstop=4 shiftwidth=4 nowrap

