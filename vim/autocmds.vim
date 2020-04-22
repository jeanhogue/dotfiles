augroup filetype_markdown
    autocmd!
    autocmd FileType markdown nnoremap <buffer> <C-i> Bi*<esc>Ea*<esc>
    autocmd FileType markdown inoremap <buffer> <C-i> <esc>Bi*<esc>Ea*
    autocmd FileType markdown nnoremap <buffer> <leader>` i```<cr><esc>}i```<cr><esc>
    autocmd FileType markdown set indentexpr=''
augroup END

