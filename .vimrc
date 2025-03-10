" ###################
" Plugin Installer via vim-plug 
" (https://github.com/junegunn/vim-plug)
" ###################
"
call plug#begin('~/.vim/plugged')

 " Make sure you use single quotes

 " Install NERDtree 
 Plug 'preservim/nerdtree'
 
 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

 " Commentary functionality with 'gcc'
 Plug 'tpope/vim-commentary' 

 " Install vimTeX
 Plug 'lervag/vimtex'

" " You Complete me
" Plug 'ycm-core/YouCompleteMe'
 
 " Lightline Plugin
 Plug 'itchyny/lightline.vim'

 " Wombat Color Scheme
 Plug 'sheerun/vim-wombat-scheme'

 " Initialize plugin system
call plug#end()

" ###################

" ----------
" Easy Align
" ----------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ----------
" Lightline
" ----------
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }



" ----------
" Wombat Color Scheme
" ----------
color wombat



" ----------
" Useful commands
" ----------

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Relative line numbers
set cursorline
set number
set relativenumber

" Get colors and boldness correct for vim 8.x
hi CursorLineNr   cterm=bold term=bold ctermfg=Yellow gui=bold guifg=Yellow

" Set command line height to 2
set cmdheight=2

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" " for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Open new split panes to right and bottom, which feels more natural than Vim’s
" default:
set splitbelow
set splitright

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use mouse for split resizing
set mouse=n

"---------------------
" Plugin Settings
"---------------------

" NERDTree Settings
"

" Different font for directories
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
