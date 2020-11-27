" Defaults 
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Vim-plug 
" run ':PlugInstall' after adding more entries 
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'https://github.com/wesQ3/vim-windowswap'

call plug#end()

" Airline customizations 
let g:airline_stl_path_style = 'short'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='fruit_punch'
let g:airline_powerline_fonts = 1

" Hexokinase customizations (:help hexokinase.txt) 
let g:Hexokinase_highlighters = [ 'foreground' ] 
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'

" These only work if you put 'stty -ixon' in your .bashrc file 
:nnoremap <C-s> :w<CR>
:inoremap <C-s> <Esc>:w<CR>a

" Source ~/.vimrc file
" map <C-r> :source ~/.vimrc<Return>

" Custom visual settings 
set number 
syntax on

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme tokyonight

highlight Normal guifg=#bbbbbb
highlight LineNr cterm=italic guifg=#888fae
highlight Comment guifg=#907466 cterm=italic,bold
"highlight Comment guifg=#9e824c cterm=italic,bold 
"highlight Comment guifg=#5b7d78 cterm=italic,bold 

" Orig setup for comment highlighting 
"highlight Comment ctermbg=246 ctermfg=235
"highlight Comment cterm=italic,bold
"highlight Comment guibg=#949494 guifg=#262626

" Easily exit modes 
:inoremap ii <Esc>

" Moving in insert mode 
:inoremap <C-k> <Up>
:inoremap <C-j> <Down>
:inoremap <C-h> <Left>
:inoremap <C-l> <Right>

" Moving between vim windows
:nnoremap <C-k> <C-w>k
:nnoremap <C-j> <C-w>j
:nnoremap <C-h> <C-w>h
:nnoremap <C-l> <C-w>l

" Resize split windows 
:nnoremap <C-Up> <C-w>+
:nnoremap <C-Down> <C-w>-
:nnoremap <C-Left> <C-w><
:nnoremap <C-Right> <C-w>>

" Substitute selected text in visual-line mode 
:vnoremap S :s//g<Left><Left>

" Substitute all occurences of matching text in normal-line mode 
:nnoremap S :%s//g<Left><Left>

" Pairs 
:inoremap [ []<Left>
:inoremap ( ()<Left>
:inoremap { {}<Left>
:inoremap " ""<Left>
:inoremap '' ''<Left>

" General coding 
:inoremap {<Return> {}<Left><Return><Esc>kA<Return>

