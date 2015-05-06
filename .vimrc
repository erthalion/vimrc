" Erthalion <9erthalion6@gmail.com>


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))


""""""""""""""""""""""""""""""""""""""""""""""

NeoBundleFetch 'Shougo/neobundle.vim'

"--- VCS -------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vcscommand.vim'
NeoBundle 'hgrev'
NeoBundle 'junegunn/vim-github-dashboard', {'autoload': {'commands': ['GHD', 'GHA']}}

"" Git log viewer
NeoBundleLazy 'gregsexton/gitv', {'autoload': {'commands': 'Gitv'}}

"--- Utils -----------------------------------
"NeoBundle 'snipMate'
NeoBundleLazy 'scrooloose/nerdtree', {'augroup' : 'NERDTree'}
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
"NeoBundle 'eiginn/netrw'
NeoBundleLazy 'Chiel92/vim-autoformat', {'autoload': {'commands': 'Autoformat'}} 
NeoBundleLazy 'junegunn/limelight.vim', {'autoload': {'commands': 'Limelight'}}
NeoBundle 'dag/vim-fish', {'autoload': {'filetypes': ['fish']}}
NeoBundleLazy 'LanguageTool', {'autoload': {'commands': 'LanguageToolCheck'}}
NeoBundle 'tpope/vim-markdown', {'autoload': {'filetypes': ['markdown']}}
NeoBundle 'SyntaxRange'
"NeoBundle 'reedes/vim-wordy'
"NeoBundle 'mhinz/vim-randomtag'
NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'Shougo/vimshell.vim'
NeoBundleLazy 'Z1MM32M4N/vim-superman', {'autoload': {'commands': 'SuperMan'}}
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'chrisbra/vim-diff-enhanced'

"" display TODO, FIXME and other
"NeoBundle 'TaskList.vim'
NeoBundleLazy 'mileszs/ack.vim', {'autoload': {'commands': 'Ack'}}
NeoBundle 'LargeFile'

"" Make gist
NeoBundleLazy 'mattn/gist-vim', {'autoload': {'commands': 'Gist'}, 'depends': 'mattn/webapi-vim'}
NeoBundleLazy 'mattn/webapi-vim'

"NeoBundle 'erthalion/taskpaper.vim'
NeoBundle 'camelcasemotion'
NeoBundleLazy 'kien/ctrlp.vim', {'autoload': {'commands': 'CtrlP', 'mappings': '<c-p>'}}

"" Additional functional for %
NeoBundle 'edsono/vim-matchit'

"" Change word case (camel, underscore, ...)
NeoBundle 'tpope/vim-abolish'

"" Reading
NeoBundleLazy 'mikewest/vimroom', {'autoload': {'commands': 'VimroomToggle'}}
NeoBundleLazy 'majutsushi/tagbar', {'autoload': {'commands': 'TagbarToggle'}}
"NeoBundle 'terryma/vim-multiple-cursors'

"" Light powerline analog
NeoBundle 'itchyny/lightline.vim'

"" Autocomplete brackets
NeoBundle 'Raimondi/delimitMate'

NeoBundle 'ervandew/supertab'
"NeoBundle 'sjl/gundo.vim'
NeoBundleLazy 'erthalion/easy-doc.vim', {'autoload': {'mappings': '\/'}}

"--- C/C++ ----------------------------------
NeoBundleLazy 'cpp.vim', {'autoload': {'filetypes': ['c', 'cpp']}}
NeoBundle 'OmniCppComplete', {'autoload': {'filetypes': ['c', 'cpp']}}
"NeoBundle 'bbchung/clighter'

"" Autocomplete includes
NeoBundle 'xaizek/vim-inccomplete', {'autoload': {'filetypes': ['c', 'cpp']}}

"--- Python ---------------------------------

"" Auto hightlight
NeoBundle 'pyflakes.vim', {'autoload': {'filetypes': 'py'}}
NeoBundle 'pydoc.vim', {'autoload': {'filetypes': 'py'}}
NeoBundle 'python.vim', {'autoload': {'filetypes': 'py'}}
NeoBundle 'klen/python-mode', {'autoload': {'filetypes': 'py'}}
NeoBundle 'hynek/vim-python-pep8-indent', {'autoload': {'filetypes': 'py'}}
NeoBundle 'alfredodeza/coveragepy.vim', {'autoload': {'filetypes': 'py'}}

" Temporary disabled, because this plugin has strange behaviour
" and map <F5>, which break cpp build
"NeoBundle 'ivanov/vim-ipython'

"NeoBundle 'davidhalter/jedi-vim'
" probably this plugin is the source of slowness
"NeoBundle 'lambdalisue/vim-django-support', {'autoload': {'filetypes': 'py'}}
NeoBundle 'nvie/vim-flake8', {'autoload': {'filetypes': 'py'}}
" dont forget copy snippets from
" https://github.com/robhudson/snipmate_for_django

"--- Haskell -------------------------------
NeoBundle 'ujihisa/neco-ghc', {'autoload': {'filetypes': 'hs'}}
NeoBundle 'haskell/haskell-mode', {'autoload': {'filetypes': 'hs'}}
NeoBundle 'haskell.vim', {'autoload': {'filetypes': 'hs'}}
NeoBundle 'Twinside/vim-hoogle', {'autoload': {'filetypes': 'hs'}}

"--- Html/Css/Js/Coffee/Haml ---------------
NeoBundle 'mattn/emmet-vim', {'autoload': {'filetypes': ['html', 'htmldjango']}}
" this plugin has css.vim, that conflicts with vim-less
"NeoBundle 'Better-CSS-Syntax-for-Vim'
NeoBundle 'kchmck/vim-coffee-script', {'autoload': {'filetypes': 'coffee'}}
NeoBundleLazy 'tpope/vim-haml', {'autoload': {'filetypes': 'haml'}}
NeoBundle 'othree/html5.vim', {'autoload': {'filetypes': ['html', 'htmldjango']}}
"NeoBundle 'nono/vim-handlebars'
"NeoBundle 'groenewege/vim-less'
NeoBundle 'gregsexton/MatchTag', {'autoload': {'filetypes': ['html', 'htmldjango']}}
"NeoBundle 'othree/javascript-libraries-syntax.vim'

" don't forget to execute npm install in the tern_for_vim directory
NeoBundle 'marijnh/tern_for_vim.git', {'autoload': {'filetypes': 'js'}}
NeoBundle 'heartsentwined/vim-emblem', {'autoload': {'filetypes': 'emblem'}}

"--- Po ------------------------------------
"NeoBundle 'vim-scripts/po.vim--Bailey'

"--- Other ---------------------------------
"NeoBundle 'ervandew/eclim'
NeoBundle 'wombat256.vim'
"NeoBundle 'gavinheavyside/vim-asciidoc'
"NeoBundle 'TwitVim'
"NeoBundle 'erthalion/vim-reddit'
"NeoBundle 'Floobits/floobits-vim'
"NeoBundle 'vim-soundcloud'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Valloric/YouCompleteMe'

"" Timetracking
"NeoBundle 'wakatime/vim-wakatime'
call neobundle#end()

""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " for vundle


"--- Plugins settings ----------------------------------------------------

"" lightline -------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'branch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"ro":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \ },
      \ 'component_function': {
      \   'branch': 'Branch',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! Branch()
    if fugitive#head() != ''
        return fugitive#head()
    elseif HGRev() != 0
        return HGRev()
    else
        return ''
    endif
endfunction
""--------------------------------------------------------------------------

"" youcompleteme"
"" autoclose preview
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_auto_trigger=0

"" hgrev -------------------------------------------------------------------
let g:hgrevAutoUpdate = 1
"" -------------------------------------------------------------------------

"" flake8 ------------------------------------------------------------------
let g:flake8_max_line_length=100
"" -------------------------------------------------------------------------

"" jedi-vim ----------------------------------------------------------------
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
"" -------------------------------------------------------------------------

"" TwitVim -----------------------------------------------------------------
let twitvim_enable_python = 1
let twitvim_count = 100
"" -------------------------------------------------------------------------

"" Vimroom -----------------------------------------------------------------
let g:vimroom_min_sidebar_width = 5
let g:vimroom_sidebar_height = 5
let g:vimroom_width = 100
"" -------------------------------------------------------------------------

"" LargeFile ---------------------------------------------------------------
" Maximum size of file in megabytes (for enable largefile plugin)
let g:LargeFile=10
"" -------------------------------------------------------------------------

"" PyMode ------------------------------------------------------------------
let g:pymode_options_colorcolumn = 0
let g:pymode_breakpoint_key = "<leader>br"
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint_write = 0
let g:pymode_lint = 1
let g:pymode_lint_checker = ["pyflakes", "pep8", "mccabe"]
let g:pymode_lint_onfly = 0
" Load rope plugin
let g:pymode_rope = 0
" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1
" Enable autoimport
 let g:pymode_rope_enable_autoimport = 1
" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_global_prefix = "<C-x>p"
let g:pymode_rope_local_prefix = "<C-c>r"
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 0
let g:pymode_rope_goto_def_newwin = ""
let g:pymode_rope_always_show_complete_menu = 0
" Enable python folding
let g:pymode_folding = 1
" Enable python objects and motion
let g:pymode_motion = 1
" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1
"Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1
" Enable all python highlightings
let g:pymode_syntax_all = 1
" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0
" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all
" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all
" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all
" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all
" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
" For fast machines
let g:pymode_syntax_slow_sync = 0
"" -------------------------------------------------------------------------


"" pyflakes ----------------------------------------------------------------
let g:pyflakes_use_quickfix = 0
"" -------------------------------------------------------------------------

"" NERDTree ----------------------------------------------------------------
let NERDTreeIgnore = ['\.pyc$','\.orig$','\.rej$','\.*\~$']
"" -------------------------------------------------------------------------

"" Taglist ----------------------------------------------------------------
" Настройки для Tlist (показвать только текущий файл в окне навигации по  коду)
let g:Tlist_Show_One_File = 1
"" -------------------------------------------------------------------------


"" Floobits ----------------------------------------------------------------
" Настройки для SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"
"" -------------------------------------------------------------------------

"" Syntastic settings
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }


"" The silver searcher instead ack"
"" It must be installed: emerge -av the_silver_searcher"
let g:ackprg = 'ag --nogroup --nocolor --column'

"" YouCompleteMe
"" set global conf file
let g:ycm_global_ycm_extra_conf = '/home/erthalion/.ycm_extra_conf.py'

"" Language tool
let g:languagetool_jar='/home/erthalion/build/LanguageTool-2.6/languagetool-commandline.jar'

"--- Vim settings ----------------------------------------------------------

set shell=/bin/bash

set autoread

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set wrap
set hlsearch
set cursorline
set nobackup
set noswapfile
set nocompatible
set ruler
set nu
set rnu
set foldmethod=indent
set foldlevelstart=40
set incsearch
set ignorecase " Make searches case-sensitive...
set smartcase  " ...unless they contain at least one uppercase character
"set gdefault   " Use global search by default
"set nohlsearch
set scrolljump=7
set scrolloff=7
set novisualbell
set t_vb=
set mouse=a
set mousemodel=popup
set breakindent

if has("win32")
    set termencoding=cp1251,utf-8
    set encoding=cp1251
else
    set termencoding=utf-8,cp1251
    set encoding=utf8
endif

set fileencoding=utf-8
set fileencodings=utf8,koi8r,cp1251,cp866

set hidden
set ch=1
set mousehide
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab

set laststatus=2
set smartindent
set smarttab
set fo+=cr
set sessionoptions=curdir,buffers,tabpages
set tabstop=4
set shiftwidth=4
set expandtab

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
"set wildmode=longest,list,full
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

set nocp

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Set comma as <leader> instead of default backslash
let mapleader=","

" Prevent Vim from clearing the scrollback buffer
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" Use the OS clipboard by default
set clipboard=unnamed

" Copy to X11 primary clipboard
map <leader>y "*y

" Paste from unnamed register and fix indentation
nmap <leader>p pV`]=

" Optimize for fast terminal connections
set ttyfast

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Update syntax highlighting for more lines increased scrolling performance
syntax sync minlines=256

" Don't syntax highlight long lines
set synmaxcol=256

"" Blowfish for encryption
setlocal cm=zip
setlocal cm=blowfish

" make hjkl movements accessible from insert mode via the <Alt> modifier key
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b

" Disable arrow keys in normal mode and insert mode
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

"" For ru lang
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Set <c-n> and <c-p> to act like Up/Down so will filter command history
" Practical Vim p.69
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" Expand %% to current directory
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"all themes are in /usr/share/vim/vim73/colors
if exists('$DISPLAY')
"if $DISPLAY == ""
    set t_Co=256
    :colorscheme wombat256mod
else
    :colorscheme evening
endif

let python_highlight_all = 1
""----------------------------------------------------------------------------------


"--- Events ------------------------------------------------------------------------
au BufRead,BufNewFile *.adoc    set syntax=asciidoc
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent"cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.cs set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -T4A1

autocmd FileType javascript setlocal omnifunc=tern#Complete
"------------------------------------------------------------------------------------


"--- Keybind

"" Unmap F1
nmap <F1> <nop>
map <F1> <Esc>
imap <F1> <Esc>

"" Unmap F1 F2
nmap <F2><F1> <nop>
map <F2><F1> <Esc>
imap <F2><F1> <Esc>

"" Tabs
nmap <leader>tc :tabnew<cr>i
imap <F6> <esc> :tabnext<cr>i
nmap <leader>tn :tabnext<cr>
nmap <leader>tb :tabprevious<cr>
nmap <leader>tq :tabclose<cr>

" F3 - NERDTree toggle
map <F3> :NERDTreeToggle<cr>
vmap <F3> <esc>:NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>

"Clear search selection
nmap <leader>cls :noh<cr>

nmap <C-T> <C-W><C-W>
" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

"vim CTRL-F для omni completion
imap <C-F> <C-X><C-O>
"imap <C-F> <C-X><C-U>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - быстрое сохранение
nmap <F2> :w<cr>
inoremap <F2> <c-o>:w<cr>
"
" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F11 - показать окно Taglist
map <F10> :Tagbar<cr>
vmap <F10> <esc>:Tagbar<cr>
imap <F10> <esc>:Tagbar<cr>

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

" \d - Go to definition (rope)
map <leader>def :RopeGotoDefinition<cr>
vmap <leader>def :RopeGotoDefinition<cr>
imap <leader>def :RopeGotoDefinition<cr>

" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" Copy/Paste from buffer
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Mapping for vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Quick select text you just pasted
noremap gV `[v`]
""-----------------------------------------------------------------------------

"--- Functions ----------------------------------------------------------------
"cmake
let g:cmake_build_type = 'Debug'

function! SetCppStatusLine()
    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P\ Branch\ %{g:branch}\ BuildType:\ %{g:cmake_build_type}
endfunction
au FileType c,cc,cpp,h,hpp,s call SetCppStatusLine()

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
au FileType c,cc,cpp,h,hpp,s call BindCmake()

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
au FileType c,cc,cpp,h,hpp,s call BindF5_C()

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
au FileType c,cc,cpp,h,hpp,s call BindF9_C()

function! BindTag_C()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endfunction
au FileType c,cc,cpp,h,hpp,s call BindTag_C()

function! BindTag_Python()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --python-kinds=-i<CR>
endfunction
au FileType python call BindTag_Python()

""" For Vimroom
function! ReadRoom()
    execute ":NERDTreeClose"
    execute ":set nocursorline"
    execute ":set nonumber"
    execute ":VimroomToggle"
endfunction

if !exists(":ReadRoom")
    command ReadRoom :call ReadRoom()
endif

map <F4>  :call TRANSLATE()<cr>
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

" Запуск проверки правописания
setlocal spell spelllang=
setlocal nospell
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

" map spell on/off for English/Russian
map <leader>spl <Esc>:call ChangeSpellLang()<CR>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Search word under cursor "
nnoremap <leader>s :Ack <CR>:cw<CR>

" for ii
map <leader>ii :.w >> ~/irc/$SERVER/$CHANNEL/in<cr>dd

" use vcs for CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']
let g:ctrlp_use_caching = 0

set wildignore+=*/build/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/public/*,*/tmp/*,*/vendor/*,
let g:ctrlp_custom_ignore = '\v[\/]\build\|node_modules\|public\|tmp\|vendor\|bower_components$'

" snipmate
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

map <leader>cl :redraw!<cr>
