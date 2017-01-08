let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
  echo "Installing neobundle.vim..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
endif

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

""""""""""""""""""""""""""""""""""""""""""""""

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', { 'build': {'unix': 'make'} }

"--- VCS -------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vcscommand.vim'
NeoBundle 'hgrev'
NeoBundle 'junegunn/vim-github-dashboard', {'autoload': {'commands': ['GHD', 'GHA']}}

"" Git log viewer
NeoBundleLazy 'gregsexton/gitv', {'autoload': {'commands': 'Gitv'}}

"--- Utils -----------------------------------
"NeoBundle 'snipMate'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tpope/vim-dispatch', {'autoload': {'commands': 'Dispatch'}}
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
"NeoBundle 'Shougo/vimshell.vim'
NeoBundleLazy 'Z1MM32M4N/vim-superman', {'autoload': {'commands': 'SuperMan'}}
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'chrisbra/vim-diff-enhanced'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'embear/vim-localvimrc'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
NeoBundle 'pearofducks/ansible-vim'
NeoBundle 'python-syntax'
NeoBundle 'mcasper/vim-infer-debugger'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'junegunn/vim-easy-align'

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
NeoBundle 'rhysd/committia.vim'

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
"NeoBundle 'klen/python-mode', {'autoload': {'filetypes': 'py'}}
NeoBundle 'hynek/vim-python-pep8-indent', {'autoload': {'filetypes': 'py'}}
NeoBundle 'alfredodeza/coveragepy.vim', {'autoload': {'filetypes': 'py'}}
NeoBundle 'ehamberg/vim-cute-python', {'autoload': {'filetypes': 'py'}}
NeoBundle 'pignacio/vim-yapf-format'

" Temporary disabled, because this plugin has strange behaviour
" and map <F5>, which break cpp build
"NeoBundle 'ivanov/vim-ipython'

NeoBundle 'davidhalter/jedi-vim'
" probably this plugin is the source of slowness
"NeoBundle 'lambdalisue/vim-django-support', {'autoload': {'filetypes': 'py'}}
NeoBundle 'nvie/vim-flake8', {'autoload': {'filetypes': 'py'}}
" dont forget copy snippets from
" https://github.com/robhudson/snipmate_for_django

"--- Haskell -------------------------------
" cabal install ghc-mod
NeoBundle 'eagletmt/neco-ghc', {'autoload': {'filetypes': 'haskell'}}
NeoBundle 'haskell.vim', {'autoload': {'filetypes': 'haskell'}}
" cabal install hoogle
NeoBundle 'Twinside/vim-hoogle', {'autoload': {'filetypes': 'haskell'}}
NeoBundle 'Shougo/neocomplete.vim', {'autoload': {'filetypes': 'haskell'}}
" cabal install hdevtools
NeoBundle 'bitc/vim-hdevtools', {'autoload': {'filetypes': 'haskell'}}
NeoBundle 'enomsg/vim-haskellConcealPlus', {'autoload': {'filetypes': 'haskell'}}

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

"--- Latex ----------------------------------
 NeoBundleLazy 'LaTeX-Box-Team/LaTeX-Box', { 'autoload' :
        \   { 'filetypes' : [ 'tex'
        \ , 'latex'
        \ ]
        \   }
        \ }

"--- Po ------------------------------------
"NeoBundle 'vim-scripts/po.vim--Bailey'

"--- Other ---------------------------------
"NeoBundle 'ervandew/eclim'
NeoBundle 'wombat256.vim'
"NeoBundle 'gavinheavyside/vim-asciidoc'
"NeoBundle 'TwitVim'
"NeoBundle 'vim-reddit'
"NeoBundle 'Floobits/floobits-vim'
"NeoBundle 'vim-soundcloud'
NeoBundle 'takac/vim-hardtime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'mhinz/vim-rfc.git'
"NeoBundle "joshhartigan/vim-reddit"

"" Timetracking
"NeoBundle 'wakatime/vim-wakatime'
call neobundle#end()

""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " for vundle
