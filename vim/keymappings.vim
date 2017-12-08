" Copy to X11 primary clipboard
map <leader>y "*y

" Paste from unnamed register and fix indentation
nmap <leader>p pV`]=

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

" Set <c-n> and <c-p> to act like Up/Down so will filter command history
" Practical Vim p.69
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" Expand %% to current directory
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

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
inoremap [ []<Left>
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

map <F4>  :call TRANSLATE()<cr>

" map spell on/off for English/Russian
map <leader>spl <Esc>:call ChangeSpellLang()<CR>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Search word under cursor "
nnoremap <leader>s :Ack <CR>:cw<CR>

" for ii
map <leader>ii :.w >> ~/irc/$SERVER/$CHANNEL/in<cr>dd

map <leader>cl :redraw!<cr>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"open definition in another tab
"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
"open definition in vertical split
map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Paste multiple times
" http://stackoverflow.com/a/7164121
xnoremap p pgvy

" Add debugger before line
nmap <Leader>br :call AddDebugger("O")<cr>

nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap n nzz
nnoremap N Nzz
