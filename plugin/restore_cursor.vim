if exists("g:restore_cursor_loaded")
  finish
endif

let g:restore_cursor_loaded = 1

function RestoreCursor()
  if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$")
    exe "normal g`\""
  endif
endfunction

autocmd BufReadPost * call RestoreCursor()
