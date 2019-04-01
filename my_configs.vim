set relativenumber
let g:NERDTreeWinPos = "left"
let NERDTreeQuitOnOpen=1
autocmd FileType nerdtree setlocal relativenumber
syntax enable 
let g:solarized_termcolors=256
colorscheme solarized
set number
map <leader>wo :only<cr>
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
