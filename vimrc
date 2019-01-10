if has('win32') || has ('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

set termguicolors

source $VIMRUNTIME/defaults.vim
"source $VIMRUNTIME/mswin.vim
source $VIMHOME/plugins/surround.vim

"lets be popey!
execute pathogen#infect()

set guioptions-=T  "hide the toolbar of buttons

""" MSWINDOW OPTIONS

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>       :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Just use the system clipboard
set clipboard=unnamed

""" END MSWINDOW OPTIONS

"set t_Co=256   " This is may or may not needed.
colorscheme afterglow

if has('win32')
    set guifont=Consolas:h11:cANSI
else
    set guifont=Ubuntu\ Mono\ 12
endif
set autochdir
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

au bufread,bufnewfile *.md,*.rst setlocal textwidth=80

" highlight the column when it goes over the text width
" highlight OverLength ctermbg=red ctermfg=white guibg=#CCCCCC
" match OverLength /\%81v.*/

"move line up and down
nnoremap <C-S-Up> ddkP  
nnoremap <C-S-Down> ddp
nnoremap <C-S-N> :NERDTreeToggle<CR>
nnoremap <leader>lsd :ls<cr>:bd<space>
nnoremap <leader><C-p> :CtrlPTag<CR>
xnoremap p "0p

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

" nmap <S-F> :set syntax=fortran<CR>:let b:fortran_fixed_source=!b:fortran_fixed_source<CR>:set syntax=text<CR>:set syntax=fortran<CR>
" nmap <C-F> :filetype detect<CR>

command! -nargs=+ Grep execute 'silent grep! <args>' | copen
