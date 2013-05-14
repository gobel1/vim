".fmap.vimrc

"" Main mapping

" Mapleader
let mapleader = '\'

" Quickly edit/reload the vimrc file
nmap <silent> <leader>e :e $MYVIMRC<CR>
nmap <silent> <leader>s :s $MYVIMRC<CR>

" Code-Completition Ctrl+Space (Ctrl+x,Ctrl+o)
"inoremap <C-Space> <C-x><C-o> 

" Tab (dico & completition) 
inoremap <Tab> <C-R>=SmartTab()<cr>

" Set new tab on Ctrl+t
map <C-t> :tabnew<CR>

"" F{1..12} mapping

" F1 built-in help
" F2 PasteMode
nnoremap <F2> :set invpaste paste?<CR> 
set pastetoggle=<F2>
" F3 Set Spell (also bind as debug for text)
noremap <F3> :set spell!<cr>:set spell?<cr>
" F4 Hiligths Searchs
noremap <F4> :set hlsearch!<cr>:set hlsearch?<cr>
" F5 Run
let g:frun = "<F5>"
" F6 Debug
let g:fdebug = "<F6>"
" F7
" F8
" F9 Make
let g:fmake = "<F9>"
nmap <F9> :make<ENTER>:copen<ENTER><CTRL>L
" F10
" F11 
" F12 Toggle mouse for terminal (see plugin/toggle_mouse.vim)