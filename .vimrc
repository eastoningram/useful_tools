" source: https://www.thegeekstuff.com/2008/12/vi-and-vim-autocommand-3-steps-to-add-custom-header-to-your-file/
" c
autocmd bufnewfile *.c so /home/username/c_header.txt
autocmd bufnewfile *.c exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a"

" cpp
autocmd bufnewfile *.cpp so /home/username/cpp_header.txt
autocmd bufnewfile *.cpp exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.cpp exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.cpp exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cpp execute "normal `a"

" python
autocmd bufnewfile *.py so /home/username/py_header.txt
autocmd bufnewfile *.py exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"

" background color
:set background=dark

" persistent undo
' source: https://stackoverflow.com/questions/5700389/using-vims-persistent-undo
set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
