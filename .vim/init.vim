"-------------fish------------------
" fix fish PluginInstall error
if $SHELL =~ 'bin/fish' || $SHELL =~ '/usr/local/bin/fish'
    set shell=/bin/bash
endif

"-------------plugin----------------
filetype off
set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'asins/vim-dict'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/DrawIt'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
" Plug 'pangloss/vim-javascript'
Plug 'sentientmachine/erics_vim_syntax_and_color_highlighting'
" Plug 'Yggdroot/indentLine'
Plug 'tbastos/vim-lua'
Plug 'adwpc/cscopex'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/nginx.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Shougo/echodoc.vim'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'neomake/neomake' 
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'maksimr/vim-jsbeautify', {'do': 'sudo npm install -g typescript js-beautify'}
Plug 'plasticboy/vim-markdown'
Plug 'Valloric/YouCompleteMe'
call plug#end()
filetype plugin indent on
"----------------------------------

" vim base config"
so ~/.vim/base.vim

" vim plugin config"
so ~/.vim/plugin.vim

" vim useful function config"
so ~/.vim/func.vim

" vim key mapping config"
so ~/.vim/key.vim



