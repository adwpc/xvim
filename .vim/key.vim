"-----------basic-----------------
" vim shortcut prefix key
let mapleader = ","

" set fold/unfold all key
nnoremap <leader>zi zi | call ForceFoldmethodIndent()
nnoremap <leader>za za
set nofoldenable " Disable folding by default, we'll enable it with a hotkey"

"-----------airline---------------
" switch to next buffer
nnoremap <silent> <tab> :bn<cr>
nnoremap <silent> <s-tab> :bp<cr>

"-----------NERDTree-------------
nnoremap <silent> <leader>ll :NERDTreeToggle<cr><c-w>p

"-----------tagbar--------------
nnoremap <silent> <leader>rr :TagbarToggle<cr>

"------------nerdcommenter------------
nnoremap <silent> // :call NERDComment(0,"toggle")<CR>
vnoremap <silent> // :call NERDComment(0,"toggle")<CR>

"------------vim-autoformat----------
noremap <leader>ff :Autoformat<cr>
" au bufwrite *.h,*.hpp,*.c,*.cpp,*.cc,*.java,*.lua :Autoformat

"------------vim-go-------------
au bufnewfile,bufread *.go setlocal noexpandtab tabstop=4 shiftwidth=4 filetype=go
" only use gd jump to definition here

" au filetype go nmap <leader>s <Plug>(go-implements)
" au filetype go nmap <leader>i <Plug>(go-info)
" au filetype go nmap <leader>d <Plug>(go-doc)
" au filetype go nmap <leader>v <Plug>(go-doc-vertical)
" au filetype go nmap <leader>r <Plug>(go-run)
" au filetype go nmap <leader>gb <Plug>(go-build)
" au filetype go nmap <leader>t <Plug>(go-test)
" au filetype go nmap <leader>c <Plug>(go-coverage)
" au filetype go nmap <leader>gs <Plug>(go-def-split)
" au filetype go nmap <leader>dv <Plug>(go-def-vertical)
" au filetype go nmap <leader>dt <Plug>(go-def-tab)
" au filetype go nmap <leader>re <Plug>(go-rename)
" au filetype go nmap <leader>im <Plug>(go-imports)
" au filetype go nmap <leader>rt <Plug>(go-run-tab)
" au filetype go nmap <Leader>rs <Plug>(go-run-split)
" au filetype go nmap <Leader>rv <Plug>(go-run-vertical)



"--------------cscope-----------------
" au bufread *.h,*.hpp,*.cc,*.c,*.cpp,*.java,*.go :CscopeUpdate
au filetype c,cpp,java,go nnoremap <leader>cu :CscopeUpdate<cr>
" Find in interactive
au filetype c,cpp,java,go nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<cr>
" s: Find this C symbol
au filetype c,cpp,java,go nnoremap <leader>fs :TagbarClose<cr> :call CscopeFind('s', expand('<cword>'))<cr>
" t: Find this text string
au filetype c,cpp,java,go nnoremap <leader>ft :TagbarClose<cr> :call CscopeFind('t', expand('<cword>'))<cr>
au filetype c,cpp,java,go nnoremap <silent> <s-right> :call QuickFixNext()<cr>
au filetype c,cpp,java,go nnoremap <silent> <s-left> :call QuickFixPrevious()<cr>
au filetype c,cpp,java,go nnoremap <silent> < :call QuickFixToggle()<cr>
" g: Find this definition
" nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<cr>
" d: Find functions called by this function
" nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<cr>
" c: Find functions calling this function
" nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<cr>
" e: Find this egrep pattern
" nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<cr>
" f: Find this file
" nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<cr>
" i: Find files #including this file
" nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<cr>

"-------------ycm----------------
" set completeopt=longest,menu                                  " auto complete menu like ide"
" au InsertLeave * if pumvisible() == 0|pclose|endif           "close preview when leave insert mode
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <cr>       pumvisible() ? "\<C-y>" : "\<cr>"
" inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
" inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
" inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"          "回车即选中当前项"
"
"
" 只能是 #include 或已打开的文件
au filetype c,cpp,objc,objcpp,cs nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<cr>
" nnoremap <leader>yf :YcmCompleter GoToDefinition<cr>
" nnoremap <leader>yc :YcmCompleter GoToDeclaration<cr>
" nnoremap <leader>yo :lopen<cr>
" nnoremap <leader>ye :lclose<cr>
" inoremap <leader>. <C-x><C-o>
" nnoremap <leader>yd :YcmForceCompileAndDiagnostics <cr>
" nnoremap <leader>ya :YcmDiags<cr>


" ------------------UltiSnips-----------------
" nnoremap <leader>ue :UltiSnipsEdit<cr>


" -------------------syntastic/neomake------------------
nnoremap <silent> <s-up> :call LocationPrevious()<cr>
nnoremap <silent> <s-down> :call LocationNext()<cr>
nnoremap <silent> > :call LocationToggle()<cr>

"-------------------LeaderF---------------------
" let g:Lf_ShortcutF = '<c-p>'
" let g:Lf_ShortcutB = '<m-n>'
noremap <leader>sm :LeaderfMru<cr>
noremap <leader>sf :LeaderfFile<cr>
noremap <leader>st :LeaderfTag<cr>


" -----------------other--------------------
au filetype c,cpp,go,lua,java,javascript nmap <leader>tt :call AddTitle()<cr>
au filetype lua nmap <leader>tt :call AddLuaTitle()<cr>
au filetype c,cpp nnoremap <leader>aa :A<cr>

