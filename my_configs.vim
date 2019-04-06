""""""""""""""""""""""""""""""
" => VIM related
""""""""""""""""""""""""""""""
set relativenumber
syntax enable 
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme desert
set number
map <leader>wo :only<cr>
map <leader>ca :colorscheme peaksea<cr>

vnoremap <space>y "+y
nnoremap <space>P "0p
vnoremap <space>P "0p
nnoremap vv <c-v>

function! TabCloseRight(bang)
    let cur=tabpagenr()
    while cur < tabpagenr('$')
        exe 'tabclose' . a:bang . ' ' . (cur + 1)
    endwhile
endfunction

function! TabCloseLeft(bang)
    while tabpagenr() > 1
        exe 'tabclose' . a:bang . ' 1'
    endwhile
endfunction

command! -bang Tabcloseright call TabCloseRight('<bang>')
command! -bang Tabcloseleft call TabCloseLeft('<bang>')

map <leader>tcl :Tabcloseleft<cr>
map <leader>tcr :Tabcloseright<cr>
 
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


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
let g:ctrlp_max_files = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
nnoremap <Leader>b :CtrlPBuffer<cr>


""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
set rtp+=~/.vim_runtime/my_plugins/fzf
nnoremap <leader>j :GFiles<CR>
nnoremap <leader>J :Files<CR>
nmap <Leader>l :Lines<CR>
"nmap <Leader>b  :Buffers<CR>
nmap <Leader>t :Tags<CR>


""""""""""""""""""""""""""""""
" => Nerd Tree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeQuitOnOpen=1
autocmd FileType nerdtree setlocal relativenumber




"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"if executable('ag')
"    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif

"if isdirectory(".git")
"    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"endif

"--------------------------------------------------------------------------------

"git clone --depth 1 https://github.com/junegunn/fzf.git ~/.vim_runtime/my_plugins/fzf
"git clone --depth 1 https://github.com/junegunn/fzf.git ~/.vim_runtime/my_plugins/fzf.vim

