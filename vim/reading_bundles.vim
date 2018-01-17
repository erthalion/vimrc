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

NeoBundle 'LargeFile'

"" Make gist
NeoBundleLazy 'mattn/gist-vim', {'autoload': {'commands': 'Gist'}, 'depends': 'mattn/webapi-vim'}
NeoBundleLazy 'mattn/webapi-vim'

"NeoBundle 'erthalion/taskpaper.vim'
NeoBundle 'camelcasemotion'

NeoBundleLazy 'mikewest/vimroom', {'autoload': {'commands': 'VimroomToggle'}}

"" Light powerline analog
NeoBundle 'itchyny/lightline.vim'

"--- Other ---------------------------------
NeoBundle 'wombat256.vim'
NeoBundle 'TwitVim'
NeoBundle 'erthalion/vim-reddit'

call neobundle#end()

""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " for vundle
