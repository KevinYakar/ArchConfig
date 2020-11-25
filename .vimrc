" defaults 
set tabstop=4
set shiftwidth=4
set expandtab
"set autoindent

" vim-plug 
call plug#begin('~/.vim/plugged')

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Airline Customizations 
let g:airline_stl_path_style = 'short'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='fruit_punch'
let g:airline_powerline_fonts = 1

" these only work if you do stty -ixon in your .bashrc file 
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" custom visual settings 
set number 
syntax on
colorscheme tokyonight
:highlight Comment ctermbg=246 ctermfg=235

" easily exit modes 
:inoremap ii <Esc>
:vnoremap vv <Esc>
:cnoremap :: <Esc>

" moving in insert mode 
:inoremap <C-k> <Up>
:inoremap <C-j> <Down>
:inoremap <C-h> <Left>
:inoremap <C-l> <Right>

" substitute text in visual-line mode 
:vnoremap S :s//g<Left><Left>

" substitute all occurences of matching text in normal-line mode 
:nnoremap S :%s//g<Left><Left>

" pairs 
:inoremap ( ()<Left>
":inoremap ) <Right>
":inoremap )) )

:inoremap [ []<Left>
":inoremap ] <Right>
":inoremap ]] ]

:inoremap " ""<Left>
:inoremap ' ''<Left>
:inoremap { {}<Left>

" Coding 
:inoremap {<Return> {<Return>}<Up><Return>

" c++ stuff 
":inoremap #<Return> #include <><Left>
:inoremap <C-_> <Esc>^i// <Esc><S-a>
:nnoremap <C-_> ^i// <Esc>$
":inoremap main int<Space>main()<Return>{<Return><Tab><Return>return 0;<Return><Esc>0i}<Up><Up><Tab>
":inoremap ide #ifndef _HPP<Return>#define _HPP<Return>#endif<Esc>0i<Return><Return><Return><Esc>5k$3hi
":inoremap cout std::cout <<  << std::endl;<Esc>13hi
":inoremap cin std::cin >> ;<Left>
":inoremap getline std::getline(std::cin, );<Esc>hi
":inoremap ignore std::cin.ignore();<Left><Left>

" java stuff 
:inoremap syso<Return> System.out.println();<Left><Left>
:inoremap psvm<Return> public static void main(String[] args)<Return>{<Return>
