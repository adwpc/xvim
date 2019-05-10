
"----------base config-----------
" let g:python3_host_prog=''
let g:python_host_prog='/usr/bin/python'
set encoding=utf-8
set hlsearch                                    " high light search"
set ts=4                                        " 1 tab = 4 space"
set sw=4                                        " tab width"
set et                                          " fill auto-indent with blanks"
set cursorline                                  " high light current line"
set showmatch                                   " show match e.g. '(' and ')'"
set incsearch                                   " search while input key words"
syntax on                                       " code show high light"
set clipboard=unnamed                           " p can paste system buffer"
set t_Co=256                                    " tell Vim that the terminal supports 256 colors"
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif                                                       " remember the current line when quit"
set vb t_vb=                                    " close bell voice"
set backspace=indent,eol,start                  " set backspace can delete all words"
" set foldmethod=manual                           " fold type"
" set foldlevel=1                                 " fold level"
"
" set buffer modifiable
set modifiable
"防止无法删除字符,无法退出
set nocompatible
set backspace=indent,eol,start
"防止插入字符自动拆行+缩进
autocmd FileType * setlocal textwidth=0
"close cscope warning
set nocscopeverbose



"-----------color scheme----------
" Solarized"
" let g:solarized_termcolors = 256
" set background = dark
" let g:solarized_termtrans = 1
" let g:solarized_contrast = 'normal'
" let g:solarized_visibility = 'normal'
" color solarized
" highlight clear SignColumn
" highlight clear LineNr


" molokai_dark"
colorscheme molokai_dark
hi CursorLine cterm=NONE ctermbg=blue ctermfg=black



" "-----------basic mapping-------
" " vim shortcut prefix key
" let mapleader = ","

" " enable/disable paste mode
" set pastetoggle=<leader>pp

" " set fold/unfold all key
" function ForceFoldmethodIndent()
" if &foldenable
" se foldmethod=indent
" endif
" endfunction
" nnoremap <leader>ff zi|call ForceFoldmethodIndent()

"auto close locallist and quickfix when quit
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) | bd| q | endif
