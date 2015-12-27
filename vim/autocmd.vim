autocmd BufRead,BufNewFile *.adoc    set syntax=asciidoc
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell set omnifunc=necoghc#omnifunc

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent"cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.cs set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -T4A1

autocmd FileType javascript setlocal omnifunc=tern#Complete

autocmd FileType haskell nnoremap <buffer> <leader>ht :HdevtoolsType<CR>

autocmd FileType c,cc,cpp,h,hpp,s call SetCppStatusLine()
autocmd FileType c,cc,cpp,h,hpp,s call BindCmake()
autocmd FileType c,cc,cpp,h,hpp,s call BindF5_C()
autocmd FileType c,cc,cpp,h,hpp,s call BindF9_C()
autocmd FileType c,cc,cpp,h,hpp,s call BindTag_C()
autocmd FileType python call BindTag_Python()

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

autocmd BufReadPost,BufEnter,FileReadPost,BufNewFile * call system("tmux rename-window 'vim | " . expand("%:t") . "'")
autocmd VimLeave * call system("tmux rename-window 'tmux'")

autocmd BufRead,BufNewFile *.md setfiletype markdown
autocmd FileType markdown :call MDSettings()
