"-----------basic-----------------
" vim shortcut prefix key
let mapleader = ","

" enable/disable paste mode
set pastetoggle=<leader>pp

" set fold/unfold all key
nnoremap <leader>bb zi|call ForceFoldmethodIndent()
nnoremap <leader>ba za

"-----------airline---------------
" switch to next buffer
nnoremap <leader>uu :bn<CR>
nnoremap <leader>ub :bp<CR>

"-----------NERDTree-------------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd vimenter * NERDTree | wincmd p
nnoremap <leader>ll :NERDTreeToggle<cr><c-w>p

"-----------tagbar--------------
nnoremap <leader>rr :TagbarToggle<cr><c-w>p
" tagbar autoopen file type
" autocmd BufReadPost *.lua,*.go,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
" autocmd quitpre *.lua,*.go,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx :TagbarClose
" autocmd quitpre *.lua,*.go,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx :cclose

"------------vim-go-------------
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 filetype=go
" au FileType go nmap <leader>s <Plug>(go-implements)
" au FileType go nmap <leader>i <Plug>(go-info)
" au FileType go nmap <leader>d <Plug>(go-doc)
" au FileType go nmap <leader>v <Plug>(go-doc-vertical)
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
" au FileType go nmap <leader>ds <Plug>(go-def-split)
" au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
" au FileType go nmap <leader>re <Plug>(go-rename)
" au FileType go nmap <leader>im <Plug>(go-imports)
" au FileType go nmap <leader>rt <Plug>(go-run-tab)
" au FileType go nmap <Leader>rs <Plug>(go-run-split)
" au FileType go nmap <Leader>rv <Plug>(go-run-vertical)

"------------vim-autoformat----------
noremap <leader>ff :Autoformat<CR>

"------------nerdcommenter------------
" <leader>cc                            " comment"
" <leader>cu                            " uncomment"

"-------------vim-fswitch-------------
au FileType c nmap <silent> <leader>sw :FSHere<cr>

"--------------cscope-----------------
" find symbols"
au FileType c nmap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
" find defines"
au FileType c nmap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
" find strings"
au FileType c nmap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
" move to next result"
au FileType c nmap <leader><leader> :cn<cr>
" move to previous result"
au FileType c nmap <leader>. :cp<cr>
" close result window"
au FileType c nmap <leader>ce :cclose<CR><CR>

"""查找调用这个函数的函数
""au FileType c nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
"""查找被这个函数调用的函数
""au FileType c nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
"""查找这个egrep匹配模式
""au FileType c nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
"""查找这个文件
""au FileType c nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"""查找include这个文件的文件
""au FileType c nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>


"------------autoformat----------
autocmd BufWrite *.h,*.hpp,*.c,*.cpp,*.cc,*.java,*.lua :Autoformat

"-------------ycm----------------
" set completeopt=longest,menu                                  " auto complete menu like ide"
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif           "close preview when leave insert mode
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
" inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
" inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"          "回车即选中当前项"
"
"
" 只能是 #include 或已打开的文件
nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>yf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>yc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yo :lopen<CR>  "open locationlist
nnoremap <leader>ye :lclose<CR> "close locationlist
inoremap <leader>. <C-x><C-o>
nnoremap <leader>yd :YcmForceCompileAndDiagnostics <CR>
nnoremap <leader>ya :YcmDiags<CR>


" ------------------UltiSnips-----------------
nnoremap <leader>ue :UltiSnipsEdit<CR>




" -------------------syntastic------------------
" Allow :lprev to work with empty location list, or at first location
function! <SID>LocationPrevious()
  try
    lprev
  catch /:E553:/
    lfirst
  catch /:E42:/
    echo "Location list empty"
  catch /.*/
    echo v:exception
  endtry
endfunction

" Allow :lnext to work with empty location list, or at last location
function! <SID>LocationNext()
  try
    lnext
  catch /:E553:/
    lfirst
  catch /:E42:/
    echo "Location list empty"
  catch /.*/
    echo v:exception
  endtry
endfunction

nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> ep  <Plug>LocationPrevious
nmap <silent> en  <Plug>LocationNext
nmap <silent> eo :lopen<cr>
nmap <silent> ee :lclose<cr>
" nnoremap <leader>en :lnext<CR>
" nnoremap <leader>ep :lpre<CR>
"
" -----------------other--------------------
au FileType c nmap <leader>tt :call AddTitle()<cr>
au FileType go nmap <leader>tt :call AddTitle()<cr>
au FileType lua nmap <leader>tt :call AddLuaTitle()<cr>
au FileType java nmap <leader>tt :call AddTitle()<cr>
au FileType javascript nmap <leader>tt :call AddTitle()<cr>

