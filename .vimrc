"defaults
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"vim-plug 
call plug#begin('~/.vim/plugged')

"Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"these only work if you do stty -ixon in your '.zshrc or .bashrc' file
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

"custom visual settings
set number 
syntax on
colorscheme tokyonight
:highlight Comment ctermbg=246 ctermfg=235

"easily exit modes
:inoremap ii <Esc>
:vnoremap vv <Esc>
:cnoremap :: <Esc>

"moving in insert mode
:inoremap <C-k> <Up>
:inoremap <C-j> <Down>
:inoremap <C-h> <Left>
:inoremap <C-l> <Right>

"pairs
:inoremap ( ()<Left>
:inoremap ) <Right>
:inoremap )) )

:inoremap [ []<Left>
:inoremap ] <Right>
:inoremap ]] ]

:inoremap " ""<Left>
:inoremap { {}<Left>

"c++ stuff
:inoremap {<Return> {<Return>}<Up><Return>
":inoremap # #include <><Left>
":inoremap <C-_> <Esc>0i//<Esc><S-a>
":inoremap main int<Space>main()<Return>{<Return><Tab><Return>return 0;<Return><Esc>0i}<Up><Up><Tab>
":inoremap ide #ifndef _HPP<Return>#define _HPP<Return>#endif<Esc>0i<Return><Return><Return><Esc>5k$3hi
":inoremap cout std::cout <<  << std::endl;<Esc>13hi
":inoremap cin std::cin >> ;<Left>
":inoremap getline std::getline(std::cin, );<Esc>hi
":inoremap ignore std::cin.ignore();<Left><Left>
