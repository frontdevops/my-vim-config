""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings							 {{{

""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
"
    "Включаем нумерацию строк
    set nu
    "Включить поддержку мыши
    set mouse=a
    "Спрятать курсор мыши когда набираем текст
    set mousehide
    "Не мигать
    set novisualbell
    " Выключаем звук в Vim
    set visualbell t_vb=
    "Не пищать! (Опции 'не портить текст', к сожалению, нету)
    set t_vb=
    " Удобное поведение backspace
    set backspace=indent,eol,start whichwrap+=<,>,[,]
    " Вырубаем черточки на табах
    set showtabline=1

    " Вырубаем .swp и ~ (резервные) файлы
    set nobackup
    set noswapfile

    set clipboard=unnamed
    set ruler
    set hidden

    " Always split below
    set splitbelow
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""
" Search settings						 {{{
"
	" Set incremental search
	set incsearch

	" Ignore case while search
	set ignorecase

	" Highlight search results
	set hlsearch
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""
"	Bars, rulers and cursor			 {{{
"
	" Show status line as 2nd line
	set laststatus=2

	" Highlight line with cursor
	set cursorline

	" Set line numbers
	set number

	" Move cursor to the last edited line
	function! ResetCursorPosition()
		if line("'\"") <= line("$")
			normal! g`"
			return 1
		endif
	endfunc
	augroup resetCursor
		autocmd! BufWinEnter * call ResetCursorPosition()
	augroup END
"	}}}
""""""""""""""""""""""""""""""""""""""""""""""""
"	Whitespaces						 {{{
"
	" Show whitespaces
	set list
	set listchars=tab:⤚—,trail:·,extends:⇥,precedes:⇤

    " Настройки табов для Python, согласно рекоммендациям
    " Tab width
    set shiftwidth=4
    set tabstop=4
    set smarttab
    set expandtab "Ставим табы пробелами
    set softtabstop=4 "4 пробела в табе
    " Автоотступ
    set autoindent
	" Automatically remove trailing spaces
	"autocmd BufWritePre * %s/\s\+$//e


""""""""""""""""""""""""""""""""""""""""""""""""
"	Line wrapping						 {{{
"
	" Set line wrapping
    " Переносим на другую строчку, разрываем строки
    set wrap
    set linebreak
"	}}}

""""""""""""""""""""""""""""""""""""""""""""""""
"	Interface							 {{{
"
	" Enable wildmenu
	set wildmenu
	set wildignore=*.map,*.swp
"	}}}
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
"	Python							 {{{
"
    " Подсвечиваем все что можно подсвечивать
    let python_highlight_all = 1

    " Перед сохранением вырезаем пробелы на концах (только в .py файлах)
    autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
    " В .py файлах включаем умные отступы после ключевых слов
    autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" }}}



""""""""""""""""""""""""""""""""""""""""""""""""
" Code foldings							 {{{
"
	" Set code foldings
	set fdm=syntax
	autocmd Syntax * normal zR

	" Set custom folding rules for vim settings files
	function! SetVimFoldingMarkers()
		setlocal fdm=marker
		setlocal foldmarker={{{,}}}
	endfunc
	augroup vimFileType
		autocmd! BufRead,BufNewFile .vimrc,*.vim call SetVimFoldingMarkers()
	augroup END
" }}}


""""""""""""""""""""""""""""""""""""""""""""""""
" Git settings							 {{{
"
	" Set update time for git line diff (ms)
	set updatetime=100
	" Always show column for git diff signs
	let g:gitgutter_sign_column_always = 1
" }}}

