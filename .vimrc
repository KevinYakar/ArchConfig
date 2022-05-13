set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set lazyredraw
set nocompatible
set re=0
set nohlsearch
set noerrorbells
set noswapfile
set incsearch



" Vim-plug
" run ':PlugInstall' after adding more entries
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'wesQ3/vim-windowswap'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin', 'branch': 'main'}
Plug 'gruvbox-community/gruvbox'

call plug#end()

" Airline customizations
let g:airline_stl_path_style = 'short'
let g:airline#extensions#branch#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_theme='fruit_punch'
let g:airline_theme='tokyonight'
let g:airline_powerline_fonts = 1

" Hexokinase customizations (:help hexokinase.txt)
let g:Hexokinase_highlighters = [ 'foreground' ]
" let g:Hexokinase_highlighters = [ 'backgroundfull' ]
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'

" Shift-tab autocompletion for coc.nvim
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" CocUpdate to update extensions
" CocInstall to install extensions
"   ex: CocInstall coc-java

" Support comments for more filetypes
" autocmd FileType ${ftype} setlocal commentstring=#\ %s



" Save using ctrl-s
" These only work if you put 'stty -ixon' in your .bashrc file
:nnoremap <silent> <C-s> :silent w<CR>
:inoremap <silent> <C-s> <Esc>:silent w<CR>a

" Set leader key
let mapleader = ' '

" Source ~/.vimrc file
map <Leader>r :source ~/.vimrc<Return>



" Custom visual settings
set number
syntax on

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set background=dark
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight
" colorscheme gruvbox
" hi Normal guibg=NONE ctermbg=NONE

highlight LineNr cterm=italic guifg=#888fae
highlight Comment guifg=#907466 cterm=italic,bold
" highlight Comment guifg=#9e824c cterm=italic,bold
" highlight Comment guifg=#5b7d78 cterm=italic,bold

" Orig setup for comment highlighting
" highlight Comment ctermbg=246 ctermfg=235
" highlight Comment cterm=italic,bold
" highlight Comment guibg=#949494 guifg=#262626



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

" Resize vs windows
:nnoremap <C-Up> <C-w>-
:nnoremap <C-Down> <C-w>+
:nnoremap <C-Left> <C-w>>
:nnoremap <C-Right> <C-w><

" Splitting works better
set splitbelow splitright



" For autocomplete in command mode
set wildmode=longest,list,full

" Better searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Remove trailing whitespace on save
fun! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup KEVIN
  autocmd!
  autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" Substitute selected text in visual-line mode
:vnoremap S :s//g<Left><Left>

" Substitute all occurences of matching text in normal mode
:nnoremap S :%s//g<Left><Left>

" Copy selected text to clipboard
func! CopySelection(lofs)
    let l:clipboard = "/tmp/.vim_clipboard"
    call writefile(a:lofs, l:clipboard)
    call system("xclip -r -sel c " . l:clipboard)
endfunc
:vnoremap <silent> Y y:call CopySelection(getreg('"', 1, 1))<CR>



" Pairs
:inoremap [ []<Left>
:inoremap ( ()<Left>
:inoremap { {}<Left>
:inoremap " ""<Left>
:inoremap '' ''<Left>



" General coding
:inoremap {<Return> {}<Left><Return><Esc>kA<Return>

" Comments
:imap <silent> <C-_> <Esc>gccA
:nmap <silent> <C-_> gcc
:vmap <silent> <C-_> gc

" Go to definition and references
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" fzf
" must install:
"   https://github.com/ggreer/the_silver_searcher
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -f -g ""'
nmap <leader>s :Files<CR>

