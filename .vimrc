" Erthalion <9erthalion6@gmail.com>

if !isdirectory('/home/erthalion/.vim/bundle') && isdirectory('/home/erthalion/vim')
    echo "Initialize .vim tmpfs directory..."
    call system("cp -r ~/vim/* ~/.vim/")
endif

if !exists('s:vimrc_loaded')
  source ~/.vim/bundles.vim
  source ~/.vim/functions.vim
  source ~/.vim/settings.vim
  source ~/.vim/autocmd.vim
  source ~/.vim/keymappings.vim

  for fpath in split(globpath('~/.vim/plugins/', '*.vim'), '\n')
    exe 'source' fpath
  endfor
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if !exists('s:vimrc_loaded')
  let s:vimrc_loaded = 1
endif

" python host is not actual, clipboard should be investigated
"if has('neovim')
    "let s:python_host_init = 'python -c "import neovim; neovim.start_host()"'
    "let &initpython = s:python_host_init
    "let &initclipboard = s:python_host_init
    "set unnamedclip " Automatically use clipboard as storage for the unnamed register"
"endif
