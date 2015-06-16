"" hgrev -------------------------------------------------------------------
let g:hgrevAutoUpdate = 1

"" flake8 ------------------------------------------------------------------
let g:flake8_max_line_length=100

"" TwitVim -----------------------------------------------------------------
let twitvim_enable_python = 1
let twitvim_count = 100

"" LargeFile ---------------------------------------------------------------
" Maximum size of file in megabytes (for enable largefile plugin)
let g:LargeFile=10

"" pyflakes ----------------------------------------------------------------
let g:pyflakes_use_quickfix = 0

"" NERDTree ----------------------------------------------------------------
let NERDTreeIgnore = ['\.pyc$','\.orig$','\.rej$','\.*\~$']

"" The silver searcher instead ack"
"" It must be installed: emerge -av the_silver_searcher"
let g:ackprg = 'ag --nogroup --nocolor --column'

"" Language tool
let g:languagetool_jar='/home/erthalion/build/LanguageTool-2.8/languagetool-commandline.jar'

" snipmate
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>
