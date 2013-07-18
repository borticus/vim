" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
syntax on
"
set ruler
set number "line numbers
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set ofu=syntaxcomplete#Complete
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
" Folding
set foldmethod=indent
set foldlevel=99
" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
" Insert character
nnoremap <TAB> :<C-U>call InsertChar#insert(v:count1)<CR>
map <C-n> :NERDTreeToggle<CR>
