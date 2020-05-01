augroup filetype_markdown
    autocmd!
    autocmd FileType markdown nnoremap <buffer> <C-i> Bi*<esc>Ea*<esc>
    autocmd FileType markdown inoremap <buffer> <C-i> <esc>Bi*<esc>Ea*
    autocmd FileType markdown nnoremap <buffer> <leader>` i```<cr><esc>}i```<cr><esc>
    autocmd FileType markdown set indentexpr=''
augroup END

augroup misc
    autocmd!
    autocmd InsertEnter * norm zz
    " formatting options, don't start comment or list element on <CR> in insert mode
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
