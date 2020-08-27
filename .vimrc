call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme nord
let g:indentLine_color_term = 0
let g:indentLine_char = '|'

set number relativenumber

set ruler

set encoding=utf-8

set ttyfast

set showmode

set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set nowrap

let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

nnoremap <space> :update<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nmap <silent> <leader>gd <Plug>(coc-definition)
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nmap <leader>f <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>s :exe 'CocList symbols'<CR>

if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

