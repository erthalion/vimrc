let g:easytags_languages = {
\   'coffee': {
\     'cmd': "coffeetags",
\       'args': [],
\       'fileoutput_opt': '-f',
\       'stdout_opt': '-f-',
\       'recurse_flag': '-R'
\   }
\}

set tags=./tags;
let g:easytags_dynamic_files = 2
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
let g:easytags_autorecurse = 1
