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
map <leader>ca :colorscheme peaksea<cr>

" Tabe *.py *.txt
command! -complete=file -nargs=* Tabe call Tabe(<f-args>)
function! Tabe(...)
  let t = tabpagenr()
  let i = 0
  for f in a:000
    for g in glob(f, 0, 1)
      exe "tabe " . fnameescape(g)
      let i = i + 1
    endfor
  endfor
  if i
    exe "tabn " . (t + 1)
  endif
endfunction


vnoremap <space>y "+y
nnoremap <space>P "0p
vnoremap <space>P "0p
