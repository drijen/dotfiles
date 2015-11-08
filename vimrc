"VIM by drijen@drijen.net

"Glogal Options
filetype plugin on               "Autodetect file type
filetype indent plugin on        "Automatic Idents p/file

syntax on                        "Syntax Highlighting

"Python Specific 
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

"Set spell check
au BufRead *.txt setlocal spell   "Restrict to txt files
setglobal spell spelllang=en_us   "Set language

"Save cursor position in files
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

