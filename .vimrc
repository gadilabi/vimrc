let mapleader="\\"
set autoindent
set shiftwidth=4
set tabstop=4
set number
set relativenumber
set t_co=xterm-256color
colorscheme elflord
syntax on
hi Normal ctermbg=NONE
set path+=**
set wildignorecase
set hlsearch
set is

" Open the vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Stop search highlight
nnoremap <space>h :noh<return><esc>

" Add an empty line
nnoremap <tab>o o<esc>k

" Surround with double quotes
nnoremap <leader>" bi"<esc>lea"<esc>

" Surround visually selected text with double quotes
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

" window actions prefix
nnoremap <tab> <c-w>

" scroll to end
nnoremap ge G
vnoremap ge G
onoremap ge G

" scroll page down
nnoremap s <c-f>
vnoremap s <c-f>
onoremap s <c-f>

" scroll page up
nnoremap S <c-b>
vnoremap S <c-b>
onoremap S <c-b>

" source vimscript in current file
nnoremap <leader>s :source %<cr>

" complete the pair
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i

" save
nnoremap <space>s :w<cr>

" autocommands
""autocmd VimLeave *.c mksession!
""autocmd VimEnter *.c source Session.vim

augroup c_syntax
	autocmd!
	autocmd FileType c :iabbrev <buffer> forl for(int i=0<esc>mia; i<length<esc>mla; i++<esc>A{<cr><cr><esc>`lh
	autocmd FileType c :iabbrev <buffer> iff if(<esc>mpA{<cr><cr><esc>`ph 
augroup END

