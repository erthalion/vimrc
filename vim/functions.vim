function! Branch()
    if fugitive#head() != ''
        return fugitive#head()
    elseif HGRev() != 0
        return HGRev()
    else
        return ''
    endif
endfunction

function! SetCppStatusLine()
    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P\ Branch\ %{g:branch}\ BuildType:\ %{g:cmake_build_type}
endfunction

function! ToggleCmakeBuildType()
    if g:cmake_build_type == 'Debug'
        let g:cmake_build_type = 'Release'
    else
        let g:cmake_build_type = 'Debug'
    endif
endfunction

function! CmakeBuild()
    silent !clear
    execute "!cmake -DCMAKE_BUILD_TYPE=" . g:cmake_build_type . " ."
    execute 'cw'
endfunction

function! BindCmake()
    map <F7> :call ToggleCmakeBuildType()<cr>
    imap <F7> <esc> :call ToggleCmakeBuildType()<cr>

    map <F8> :call CmakeBuild()<cr>
    imap <F8> <esc> :call CmakeBuild()<cr>
endfunction

function! BindF5_C()
    if filereadable("Makefile")
        set makeprg=make
        map <f5>      :w<cr>:make<cr>:cw<cr>
        imap <f5> <esc>:w<cr>:make<cr>:cw<cr>
    else
        map <f5>      :w<cr>:make %:r<cr>:cw<cr>
        imap <f5> <esc>:w<cr>:make %:r<cr>:cw<cr>
    endif
endfunction

function! BindF9_C()
    if filereadable("Makefile")
        set makeprg=make
        map <f9>      :w<cr>:make<cr>:cw<cr>:!./%<<cr>
        imap <f9> <esc>:w<cr>:make<cr>:cw<cr>:!./%<<cr>
    else
        map <f9>      :w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
        imap <f9> <esc>:w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
    endif
endfunction

function! BindTag_C()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endfunction

function! BindTag_Python()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --python-kinds=-i<CR>
endfunction

function! ReadRoom()
    execute ":NERDTreeClose"
    execute ":set nocursorline"
    execute ":set nonumber"
    execute ":VimroomToggle"
endfunction

function TRANSLATE()
   let  a=getline('.')
   let co=col('.')-1
   let starts=strridx(a," ",co)
   let ends = stridx(a," ",co)
   if ends==-1
       let ends=strlen(a)
   endif
   let res = strpart(a,starts+1,ends-starts)
   let cmds = "~/.cabal/bin/gtc en ru " . res
   let out = system(cmds)
   echo out
endfunction

function ChangeSpellLang()
    if &spelllang =~ "en_us"
        setlocal spell spelllang=ru
        echo "spelllang: ru"
    elseif &spelllang =~ "ru"
        setlocal spell spelllang=
        setlocal nospell
        echo "spelllang: off"
    else
        setlocal spell spelllang=en_us
        echo "spelllang: en"
    endif
endfunc

function! ListLeaders()
     silent! redir @a
     silent! nmap <LEADER>
     silent! redir END
     silent! new
     silent! put! a
     silent! g/^s*$/d
     silent! %s/^.*,//
     silent! normal ggVg
     silent! sort
     silent! let lines = getline(1,"$")
endfunction

if !exists(":ReadRoom")
    command ReadRoom :call ReadRoom()
endif

command FormatJSON %!python -m json.tool

function MDSettings()
    " adjust syntax highlighting for LaTeX parts
    "   inline formulas:
    syntax region Statement oneline matchgroup=Delimiter start="\$" end="\$"
    "   environments:
    syntax region Statement matchgroup=Delimiter start="\\begin{.*}" end="\\end{.*}" contains=Statement
    "   commands:
    syntax region Statement matchgroup=Delimiter start="{" end="}" contains=Statement
endfunction
