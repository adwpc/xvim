
function AddNewTitle()
    call append(0,"/*=============================================================================")
    call append(1,"# Author:        name - name@company.com")
    call append(2,"# Department:    department")
    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"# Filename:      ".expand("%:t"))
    call append(6,"# Description:   ")
    call append(7,"=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateTitle()
    normal m'
    call setline(5,"# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    normal ''
    normal mk
    call setline(6,"# Filename:      ".expand("%:t"))
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction


"for c/c++ golang and some language to add a info header
function AddTitle()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddNewTitle()
endfunction

"for lua language to add a info header
function AddNewLuaTitle()
    call append(0,"--[[=============================================================================")
    call append(1,"# Author:        name - name@company.com")
    call append(2,"# Departments:   department")
    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"# Filename:      ".expand("%:t"))
    call append(6,"# Description:   ")
    call append(7,"=============================================================================--]]")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateLuaTitle()
    normal m'
    call setline(5,"# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    normal ''
    normal mk
    call setline(6,"# Filename:      ".expand("%:t"))
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

"for lua language to add a info header
function AddLuaTitle()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateLuaTitle()
            return
        endif
        let n = n + 1
    endwhile call AddNewLuaTitle()
endfunction

" set fold/unfold all key
function ForceFoldmethodIndent()
    if &foldenable
        se foldmethod=indent
    endif
endfunction


" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key
"function! g:UltiSnips_Complete()
"call UltiSnips#ExpandSnippet()
"if g:ulti_expand_res == 0
"if pumvisible()
"return "\<C-n>"
"else
"call UltiSnips#JumpForwards()
"if g:ulti_jump_forwards_res == 0
"return "\<TAB>"
"endif
"endif
"endif
"return ""
"endfunction

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

"" Expand snippet or return
"let g:ulti_expand_res = 1
"function! Ulti_ExpandOrEnter()
"call UltiSnips#ExpandSnippet()
"if g:ulti_expand_res
"return ''
"else
"return "\<return>"
"endfunction

"" Set <space> as primary trigger
"inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>



