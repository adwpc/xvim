
"-----------airline--------------
let g:airline_theme="dark"                        " airline theme"
set laststatus=2                                  " make status bar always show"
let g:airline#extensions#tabline#enabled=1        " enable/disable tabline"
let g:airline#extensions#tabline#buffer_nr_show=1 " enable/disable tabline number"
let g:airline#extensions#whitespace#enabled=0     " enable/disable detection of whitespace errors"
let g:airline#extensions#whitespace#symbol='!'    " customize the whitespace symbol"
let g:airline_left_sep=""                         " modify sep char"
let g:airline_left_alt_sep=""                     " modify sep char"
let g:airline_right_sep=""                        " modify sep char"
let g:airline_right_alt_sep=""                    " modify sep char"
let g:airline#extensions#tabline#left_sep=""      " modify sep char"
let g:airline#extensions#tabline#left_alt_sep=""  " modify sep char"

"-----------NERDTree--------------
let g:NERDTreeWinPos="left"                       " tree position"
let g:NERDTreeWinSize=30                          " tree size"
let g:NERDTreeShowLineNumbers=0                   " enable/disable line number"

"--------------tagbar------------
" tagbar config for golang"
let g:tagbar_type_go={'ctagstype' : 'go', 'kinds' : ['p:package','i:imports:1', 'c:constants','v:variables','t:types', 'n:interfaces','w:fields','e:embedded', 'm:methods','r:constructor','f:functions'], 'sro' : '.','kind2scope' : {'t' : 'ctype', 'n' : 'ntype'},'scope2kind' : {'ctype' : 't', 'ntype' : 'n'},'ctagsbin'  : 'gotags', 'ctagsargs' : '-sort -silent'}
let g:tagbar_autofocus=0                          " enable/disable autofocus"
let g:tagbar_left=0                               " enable/disable tagbar show in left"
let g:tagbar_expand=1                             " enable/disable tagbar expand"
let g:tagbar_compact=1                            " enable/disable tagbar show help info"
let g:tagbar_singleclick=1                        " enable/disable tagbar single click"
let g:tagbar_autoshowtag=1                        " enable/disable tagbar auto show tag"
let g:tagbar_ctags_bin='ctags'                    " set ctag binary"
let g:tagbar_width=30                             " set tagbar size"
let g:tagbar_autoclose=0                          " enable/disable tagbar auto close when you choose one tag"

"--------------ycm------------------
set completeopt-=preview									"disable preview"
au bufread,bufnewfile *.c let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/c/.ycm_extra_conf.py'
au bufread,bufnewfile *.h,*.hpp,*.cpp,*.cc,*.cxx let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/cpp/.ycm_extra_conf.py'
if filereadable(".ycm_extra_conf.py")
	let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
endif
let g:ycm_confirm_extra_conf=0                                " enable/disable confirm when open .ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files=1               " enable/disable collect identifiers from tags"
let g:ycm_collect_identifiers_from_comments_and_strings=0     " enable/disable from comments and strings"
let g:ycm_min_num_of_chars_for_completion=2                   " start completion when inputs reach the num"
" let g:ycm_cache_omnifunc=0                                    " disable cache, with vim-go auto-complete not filter word,e.g. type in fmt.P "
let g:ycm_seed_identifiers_with_syntax=1                      " enable completion base on synatax"
let g:ycm_complete_in_comments=1                              " completion support comments"
let g:ycm_complete_in_strings=1                               " completion support string"
let g:ycm_filetype_blacklist={ 'tagbar' : 1,'nerdtree' : 1, } " disable ycm in these plugins"
let g:ycm_semantic_triggers={ 'c' : ['->', '.'], 'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'], 'ocaml' : ['.', '#'], 'cpp,objcpp' : ['->', '.', '::'],  'perl' : ['->'], 'php' : ['->', '::'], 'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'], 'ruby' : ['.', '::'], 'erlang' : [':'],} "semantic trigger"
let g:ycm_error_symbol='!!'                                    " set syntastic error symbol"
let g:ycm_warning_symbol='??'                                  " set syntastic warning symbol"
let g:ycm_always_populate_location_list=1                      " enalbe/disable auto populate location list"
let g:ycm_open_loclist_on_ycm_diags=0                         " enalbe/disable auto open location list"
let g:ycm_enable_diagnostic_signs=1                           " enable/disable ycm diagnostic"
let g:ycm_enable_diagnostic_highlighting=1                    " enable/disable ycm diagnostic helpheight"
let g:ycm_register_as_syntastic_checker=1                     " enable/disable ycm as the Syntastic checker"
let g:Show_diagnostics_ui=1                                   " enable/disable diagnostics ui"
let g:ycm_goto_buffer_command='same-buffer'                   " set where to show the goto result"
let g:ycm_filetype_whitelist={ '*': 1 }                       " set ycm enable filetype"
" let g:ycm_key_list_select_completion=['<c-tab>', '<Down>']    " fix conflicts between ycm and ultisnip"
" let g:ycm_key_list_previous_completion=['<c-s-tab>', '<Up>']
let g:ycm_key_list_select_completion=['<Down>']				  " fix conflicts between ycm and ultisnip"
let g:ycm_key_list_previous_completion=['<Up>']
" let g:SuperTabDefaultCompletionType='<c-tab>'
let g:ycm_key_invoke_completion='<C-Space>'                   " key mapping used to invoke the completion menu"
set pumheight=20                                              " set auto-complete window height"


"-----------------SirVer/ultisnips----------------------
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsSnippetsDir='~/.vim/snips'                 " Defines the directory private files are stored in"
let g:UltiSnipsSnippetDirectories=["snips"]               " Defines the directories for looking for snippets"

"------------------autoformat--------------------------
let g:formatdef_harttle='"--style=allman --indent=spaces=4 --indent-switches --indent-cases --indent-namespaces --break-blocks --pad-oper --unpad-paren --delete-empty-lines --convert-tabs --mode=c"'
let g:formatters_cpp=['harttle']
let g:formatters_java=['harttle']


"-----------------cscopex-----------------
let g:cscope_silent=1                                     " disable toggle messages for database updated"
let g:cscope_interested_files='\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc'
let g:cscope_auto_update=1

"------------nerdcommenter------------
let g:NERDSpaceDelims=1                                     "add a space before comment "

"---------------vim-go----------------
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1
let g:go_fmt_autosave=1
let g:go_def_mode='godef'
let g:go_fmt_command="goimports"
let g:go_get_update=0
let g:syntastic_go_checkers=[ 'go' ]
let g:go_fmt_fail_silently=1
let g:go_list_type="quickfix"
let g:go_def_reuse_buffer=1

"-------------syntastic----------------
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='!!'
let g:syntastic_style_error_symbol='!!'
let g:syntastic_warning_symbol='??'
let g:syntastic_style_warning_symbol='??'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1

"-------------------javacomplete2------------
au filetype java setlocal omnifunc=javacomplete#Complete

"---------------------vim-lua-ftplugin---------
let g:lua_complete_omni=1
" let g:lua_complete_dynamic=1
" let g:lua_path="./?.lua;./lua/?.lua;./lualib/?.lua"
" let g:lua_path="./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua"

"-------------------vim-javascript------------
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
let g:indentLine_concealcursor = 'inc'
set conceallevel=1
let g:indentLine_conceallevel=1
" au bufread,bufnewfile *.go set list lcs=tab:\|\




