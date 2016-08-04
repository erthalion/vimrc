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
let g:pymode_rope_auto_project = 0
" Enable autoimport
let g:pymode_rope_enable_autoimport = 0
" Auto generate global cache
let g:pymode_rope_autoimport_generate = 0
let g:pymode_rope_autoimport = 0
"let g:pymode_rope_autoimport_underlineds = 0
"let g:pymode_rope_codeassist_maxfixes = 10
"let g:pymode_rope_sorted_completions = 1
"let g:pymode_rope_extended_complete = 1
"let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
"let g:pymode_rope_confirm_saving = 1
"let g:pymode_rope_global_prefix = "<C-x>p"
"let g:pymode_rope_local_prefix = "<C-c>r"
"let g:pymode_rope_vim_completion = 1
"let g:pymode_rope_guess_project = 0
"let g:pymode_rope_goto_def_newwin = ""
"let g:pymode_rope_always_show_complete_menu = 0
let g:pymode_rope_goto_definition_bind = "<C-]>"
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
