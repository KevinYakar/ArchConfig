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
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Custom visual settings 
set number 
syntax on

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme tokyonight

"highlight Comment ctermbg=246 ctermfg=235
"highlight Comment cterm=italic,bold

highlight Comment guibg=#949494 guifg=#262626
"highlight Comment cterm=italic,bold

" Easily exit modes 
:inoremap ii <Esc>

" Moving in insert mode 
:inoremap <C-k> <Up>
:inoremap <C-j> <Down>
:inoremap <C-h> <Left>
:inoremap <C-l> <Right>

" Substitute text in visual-line mode 
:vnoremap S :s//g<Left><Left>

" Substitute all occurences of matching text in normal-line mode 
:nnoremap S :%s//g<Left><Left>

" Pairs 
:inoremap [ []<Left>
:inoremap ( ()<Left>
:inoremap { {}<Left>
:inoremap " ""<Left>
:inoremap ' ''<Left>

" Coding 
:inoremap {<Return> {}<Left><Return><Esc>k<S-a><Return>

" C++ stuff 
:inoremap <C-_> <Esc>^i// <Esc><S-a>
:nnoremap <C-_> ^i// <Esc>$
":inoremap #<Return> #include <><Left>
":vnoremap <C-_> S^/\/\/ 
":inoremap main int<Space>main()<Return>{<Return><Tab><Return>return 0;<Return><Esc>0i}<Up><Up><Tab>
":inoremap ide #ifndef _HPP<Return>#define _HPP<Return>#endif<Esc>0i<Return><Return><Return><Esc>5k$3hi
":inoremap cout std::cout <<  << std::endl;<Esc>13hi
":inoremap cin std::cin >> ;<Left>
":inoremap getline std::getline(std::cin, );<Esc>hi
":inoremap ignore std::cin.ignore();<Left><Left>

" Java stuff 
":inoremap syso<Return> System.out.println();<Left><Left>
":inoremap psvm<Return> public static void main(String[] args)<Return>{<Return>
