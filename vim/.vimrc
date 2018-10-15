runtime! debian.vim

if has("syntax")
  syntax on
endif

set background=dark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin on
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
" set mouse=a		" Enable mouse usage (all modes)
set nowrap

set backspace=indent,eol,start

"shows File is read-only notification
"au BufReadPost *  
"  \ if &readonly |
"  \   echohl ErrorMsg |
"  \   echomsg "File is read-only!" |
"  \   echohl None |
"  \ endif

" sx cmd
command! -nargs=0 -bang W :silent! w !sudo tee % &>/dev/null
" command! -nargs=0 -bang Sx :silent! w !sudo cat > %


" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif



