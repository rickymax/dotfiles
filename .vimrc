nnoremap <silent> <F5> :NERDTree<CR>
nnoremap <silent> <F3> :TlistToggle<CR>
nnoremap <silent> <F4> :wincmd p<CR>
nnoremap <silent> <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <silent> <F6> :!make<CR>
nnoremap <silent> <F7> :set nonumber<CR>
nnoremap <silent> <F8> :set number<CR>
nnoremap <silent> <F9> :set paste<CR>

set nocp
filetype plugin on
set number
set tags+=~/std.tags
au BufNewFile,BufRead *.md set filetype=lisp
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.def set filetype=cpp
au BufNewFile,BufRead *.cpp set syntax=cpp11

let Tlist_Exit_OnlyWindow = 1

" \t = 4 space
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

" High light over length in a line
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

" status bar
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine ctermfg=blue ctermbg=white

" search word match with hilight
set hlsearch
