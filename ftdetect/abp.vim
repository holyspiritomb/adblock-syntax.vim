function! s:DetectABP()
  if match(getline(1),'\c\(adblock\)\|\(adguard\)\|\(ABP\)') >= 0
    set filetype=abp
  endif
endfunction
au BufNewFile,BufRead *.txt call s:DetectABP()
