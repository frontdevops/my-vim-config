""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Theme							 {{{
"
	" Main theme
    set guifont=Monaco:h12
	set background=dark

    if has("gui_running")
	    source $VIMHOME/macvim/.vimrc
    else
        colorscheme OceanicNext
    endif
" }}}


