
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
    endwhile
    call AddNewLuaTitle()
endfunction

" set fold/unfold all key
function ForceFoldmethodIndent()
	if &foldenable
		se foldmethod=indent
	endif
endfunction


function! s:GetBufferList() 
  redir =>buflist 
  silent! ls 
  redir END 
  return buflist 
endfunction

function! LocationToggle()
  for bufnum in map(filter(split(s:GetBufferList(), '\n'), 'v:val =~ "Location List"'), 'str2nr(matchstr(v:val, "\\d\\+"))') 
    if bufwinnr(bufnum) != -1
      lclose
      return
    endif
  endfor
  let winnr = winnr()
    lopen
  if winnr() != winnr
    wincmd p
  endif
endfunction

function! NextNormalWindow() abort
    for i in range(1, winnr('$'))
        let buf = winbufnr(i)

        " skip unlisted buffers
        if !buflisted(buf)
            continue
        endif

        " skip temporary buffers with buftype set
        if getbufvar(buf, '&buftype') != ''
            continue
        endif

        " skip the preview window
        if getwinvar(i, '&previewwindow')
            continue
        endif

        " skip current window
        if i == winnr()
            continue
        endif

        return i
    endfor

    return -1
endfunction

function! QuitIfOnlyWindow() abort
    let l:buftype = getbufvar(winbufnr(winnr()), "&buftype")
    if l:buftype != "quickfix" && l:buftype != "help" && l:buftype != "nofile"
        return
    endif

    " Check if there is more than one window
    if NextNormalWindow() == -1
        " Check if there is more than one tab page
        if tabpagenr('$') == 1
            " Before quitting Vim, delete the special buffer so that
            " the '0 mark is correctly set to the previous buffer.
            " Also disable au on this command to avoid unnecessary
            " au nesting.
            if winnr('$') == 1
                if has('au')
                    noau bdelete
                endif
            endif
            quit
        else
            " Note: workaround for the fact that in new tab the buftype is set
            " too late (and sticks during this WinEntry au to the old -
            " potentially quickfix/help buftype - that would automatically
            " close the new tab and open the buffer in copen window instead
            " New tabpage has previous window set to 0
            if tabpagewinnr(tabpagenr(), '#') != 0
                let l:last_window = 0
                if winnr('$') == 1
                    let l:last_window = 1
                endif
                close
                if l:last_window == 1
                    " Note: workaround for the same bug, but w.r.t. Airline
                    " plugin (it needs to refresh buftype and status line after
                    " last special window au close on a tab page
                    if exists(':AirlineRefresh')
                        execute "AirlineRefresh"
                    endif
                endif
            endif
        endif
    endif
endfunction

" Allow :lprev to work with empty location list, or at first location
function! LocationPrevious()
  try
    lprev
  catch /:E553:/
    llast
  catch /:E42:/
    echo "Location list empty"
  catch /.*/
    echo v:exception
  endtry
endfunction

" Allow :lnext to work with empty location list, or at last location
function! LocationNext()
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


" c-v can paste without set paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


" autoclose last open location/quickfix/help windows on a tab
if has('autocmd')
    aug AutoCloseAllQF
        au!
        au WinEnter * nested call QuitIfOnlyWindow()
    aug END
endif
