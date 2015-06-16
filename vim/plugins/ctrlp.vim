" use vcs for CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']
let g:ctrlp_use_caching = 0

let g:ctrlp_custom_ignore = '\v[\/]\build\|node_modules\|public\|tmp\|vendor\|bower_components\|dist$'
