if has('win32') || has ('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

source $VIMRUNTIME/defaults.vim

set guioptions-=T  "hide the toolbar of buttons

""" MSWINDOW OPTIONS
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>       :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
""" END MSWINDOW OPTIONS

colorscheme afterglow

if has('win32') || has('win64')
    set guifont=Consolas:h11:cANSI
else
    set guifont=Ubuntu\ Mono\ 11
endif
set autochdir
set number

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" move line up and down
nnoremap <C-S-Up> ddkP  
nnoremap <C-S-Down> ddp

" listing then deleting buffers
nnoremap <leader>lsd :ls<cr>:bd<space>

nnoremap <leader><C-p> :CtrlPTag<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

command! -nargs=+ Grep execute 'silent grep! <args>' | copen

autocmd bufread,bufnewfile *.md,*.rst setlocal textwidth=80

autocmd Filetype fortran setlocal sts=2 ts=2 sw=2 expandtab
nnoremap <leader>c i<CR><Esc>6i<Space><Esc>i$<Space>
