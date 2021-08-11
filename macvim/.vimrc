" ───▄▀▀▀▄▄▄▄▄▄▄▄▀▀▀▄─── "
" ───█▒▒░░░░░░░░░░▒▒█─── "
" ────█░░█░░░░░░█░░█──── "
" ─▄▄──█░░░▀██▀░░░█──▄▄─ "
" █░░█─▀▄░░░░░░░░▄▀─█░░█ "
" █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█ "
" █░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█ "
" █░░║║║╠─║─║─║║║║║╠─░░█ "
" █░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█ "
" █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ "

"Переключение табов по CMD+number для MacVim
" if has("gui_macvim")
if has("gui_running")
    colorscheme cleanroom
    " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
    " the right side. Ctrl-Shift-Tab goes the other way.
    noremap <C-Tab> :tabnext<CR>
    noremap <C-S-Tab> :tabprev<CR>

    " Switch to specific tab numbers with Command-number
    noremap <D-1> :tabn 1<CR>
    noremap <D-2> :tabn 2<CR>
    noremap <D-3> :tabn 3<CR>
    noremap <D-4> :tabn 4<CR>
    noremap <D-5> :tabn 5<CR>
    noremap <D-6> :tabn 6<CR>
    noremap <D-7> :tabn 7<CR>
    noremap <D-8> :tabn 8<CR>
    noremap <D-9> :tabn 9<CR>
    " Command-0 goes to the last tab
    noremap <D-0> :tablast<CR>

    " Отступы для MacVim
    defaults write org.vim.MacVim MMTextInsetTop '20' 
    defaults write org.vim.MacVim MMTextInsetLeft '20'
    defaults write org.vim.MacVim MMTextInsetBottom '20'
    defaults write org.vim.MacVim MMTextInsetRight '20'
else
   colorscheme OceanicNext
endif
