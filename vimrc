source $VIMRUNTIME\defaults.vim
source $VIMRUNTIME\mswin.vim
source $HOME\vimfiles\plugins\surround.vim

"set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

set guifont=Consolas:h11:cANSI
set autochdir
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

au bufread,bufnewfile *.md,*rst setlocal textwidth=80

" highlight the column when it goes over the text width
highlight OverLength ctermbg=red ctermfg=white guibg=#CCCCCC
match OverLength /\%81v.\+/

nnoremap <C-S-Up> ddkP
nnoremap <C-S-Down> ddp
