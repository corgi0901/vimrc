" editor style
set number
set tabstop=4
set cursorline

" Syntax highlight
syntax on

" compatibility
set nocompatible
set backspace=indent,eol,start

" copy word
noremap yyy yiw

" move window
noremap w <C-w><C-w>

" search word (:S <search-word> <file-extension>)
:command! -nargs=+ S call SearchFunc(<f-args>)
function! SearchFunc(word, extension)
	execute(":vim /\\v<" . a:word . ">/ **/*." . a:extension . " | cw")
endfunction

" search word at cursor
nnoremap <silent> <Tab><Tab> "zyiw:execute("vim /\\v<" . @z . ">/ **/*.* \| cw")<CR>

" highlight word at cursor
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nnoremap <silent> <Esc><Esc> :noh<CR>