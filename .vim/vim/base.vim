
"----------base config-----------
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
au BufReadPost * if line("'\"") > 0|if 
\line("'\"") <= line("$")|exe("norm '\"")
\|else|exe "norm $"|endif|endif                 " remember the current line when quit"
set backspace=indent,eol,start                  " set backspace can delete all words"
set vb t_vb=                                    " close bell voice"
set foldmethod=manual                           " fold type"
set foldlevel=1                                 " fold level"

"-----------color scheme----------
" Solarized"
" let g:solarized_termcolors=256
" set t_Co=256
" set background=dark
" colorscheme solarized

" molokai_dark"
colorscheme molokai_dark



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

