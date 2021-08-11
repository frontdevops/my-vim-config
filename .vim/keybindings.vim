""""""""""""""""""""""""""""""""""""""""""""""""
" Basic bindings						 {{{
"
	" Set leader key
	let mapleader=','

    nnoremap <C-N> :bnext<CR>
    nnoremap <C-P> :bprev<CR>
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""
" Autocompletion						 {{{
"
	" Automatically add braces
	inoremap {<CR> {<CR>}<Esc>ko
	inoremap {} {}
	inoremap { {}<Left>
	inoremap (<CR> (<CR>)<Esc>ko
	inoremap () ()
	inoremap ( ()<Left>
	inoremap [<CR> [<CR>]<Esc>ko
	inoremap [] []
	inoremap [ []<Left>
	inoremap <<Space> <<Space>
	inoremap <> <>
	inoremap < <><Left>

	" Automatically add quotes
	inoremap " ""<Left>
	inoremap "" ""
	inoremap ' ''<Left>
	inoremap '' ''
	inoremap ` ``<Left>
	inoremap `` ``
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation							 {{{
"
	" Buffers navigation
	nnoremap <Leader>h :bp<CR>
	nnoremap <Leader>l :bn<CR>
	nnoremap <Leader>p :b#<CR>
	nnoremap <Leader>d :bd<CR>

	" Windows navigation
	nnoremap <C-h>		<C-w>h
	nnoremap <C-j>		<C-w>j
	nnoremap <C-k>		<C-w>k
	nnoremap <C-l>		<C-w>l
	nnoremap <C-Left>	<C-w>h
	nnoremap <C-Down>	<C-w>j
	nnoremap <C-Up>		<C-w>k
	nnoremap <C-Right>	<C-w>l
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
" Interface								 {{{
"
	" Toggle relative number line
	function! RelNumToggle()
		if (&relativenumber == 1)
			set norelativenumber
		else
			set relativenumber
		endif
	endfunc
	nnoremap <silent> <Leader>n :call RelNumToggle()<CR>

	" Browse old buffers
	nnoremap <Leader>b :browse old<CR>
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins								 {{{
"
	" NERDTree bindings
    " nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
	map <silent> <F6> :NERDTreeToggle<CR>
	map <silent> <F7> :NERDTreeFind<CR>
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

	" Toggle Tagbar
    " nmap <F8> :TagbarToggle<CR>
	map <silent> <F8> :TagbarToggle<CR>

    " nmap <C-d> :t.<CR>

    " Following to have Vim jump to the last position when reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
    endif

" }}}