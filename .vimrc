"-------------fish------------------
" fix fish PluginInstall error
if $SHELL =~ 'bin/fish' || $SHELL =~ '/usr/local/bin/fish'
    set shell=/bin/bash
endif

"-------------vundle----------------
set nocp
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'asins/vim-dict'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'vim-scripts/DrawIt'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'pangloss/vim-javascript'
Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'
call vundle#end()
filetype plugin indent on
"----------------------------------

" vim base config"
so ~/.vim/vim/base.vim

" vim plugin config"
so ~/.vim/vim/plugin.vim

" vim useful function config"
so ~/.vim/vim/func.vim

" vim key mapping config"
so ~/.vim/vim/key.vim



