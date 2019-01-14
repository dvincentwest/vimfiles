if has('win32') || has ('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

set termguicolors

source $VIMRUNTIME/defaults.vim
source $VIMHOME/plugins/surround.vim

execute pathogen#infect()

set guioptions-=T  "hide the toolbar of buttons

""" MSWINDOW OPTIONS
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>       :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Just use the system clipboard
set clipboard=unnamed
""" END MSWINDOW OPTIONS

"set t_Co=256   " This is may or may not needed.
colorscheme afterglow

if has('win32') || has('win64')
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

"move line up and down
nnoremap <C-S-Up> ddkP  
nnoremap <C-S-Down> ddp
nnoremap <leader>lsd :ls<cr>:bd<space>
nnoremap <leader><C-p> :CtrlPTag<CR>
xnoremap p "0p

nnoremap <leader>f :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

" nmap <S-F> :set syntax=fortran<CR>:let b:fortran_fixed_source=!b:fortran_fixed_source<CR>:set syntax=text<CR>:set syntax=fortran<CR>
" nmap <C-F> :filetype detect<CR>

command! -nargs=+ Grep execute 'silent grep! <args>' | copen


" Setting up different filetypes
autocmd Filetype fortran setlocal sts=2 ts=2 sw=2 expandtab
