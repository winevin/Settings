set number
set expandtab
set tabstop=4
set shiftwidth=4 " отступ при переносе
set foldenable " включаем сворачивание функций
set foldmethod=syntax " свернуть по синтаксису
set foldmethod=manual " делает возможным установки метки
set ts=4
set showcmd " отображение выполняемой команды
set linebreak " перенос по словам, а не по буквам
set dy=lastline

" <F2> предыдущая вкладка
imap <F2> <Esc> :tabprev <CR>i
map <F2> :tabprev <CR>

" <F3> следующая вкладка
imap <F3> <Esc> :tabnext <CR>i
map <F3> :tabnext <CR>

" <F4> открыть новую вкладку и выбрать файл
imap <F6> <Esc>:browse tabnew<CR> 
map <F6> <Esc>:browse tabnew<CR>

" <F5> сохранить изменения
imap <F5> <Esc>:w<CR>
map <F5> <Esc>:w<CR>

" Пользовательское меню. По <F9> позволяет приостановить работу Vim и вызвать соответствующие программы
set wildmenu
set wcm=<Tab>
" menu Exec.Python  :!python % <CR>
menu Exec.C  :!make NAME=%<CR>
map <F9> :emenu Exec.<Tab>

" Позволяет по <Tab>, более привычному некоторым пользователям, вызывать авто-дополнение для текущего активного синтаксиса
"function! InsertTabWrapper(direction)
"   let col = col('.') - 1
"   if !col || getline('.')[col - 1] !~ '\k'
"       return "\<tab>"
"   elseif "backward" == a:direction
"       return "\<c-p>"
"   else
"       return "\<c-n>"
"   endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
"inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>i

