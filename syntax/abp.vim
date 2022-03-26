if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

" Blocking
syntax match abpBlocking "^[^\$]*" nextgroup=abpBlockingSeparator
syntax match abpBlockingSeparator "\$" contained nextgroup=abpBlockingOption
syntax match abpBlockingOption ".*" contained

" Blocking Exception
syntax match abpBlockingExceptionSeparator "^@@" nextgroup=abpBlockingException
syntax match abpBlockingException "[^\$]*" contained nextgroup=abpBlockingSeparator

" Comments
syntax match abpHeader "\c^\s*\[\s*adblock\s*\(plus\s*\(\d\+\(\.\d\+\)*\s*\)\?\)\?]\s*$"
syntax match abpComment "^\s*!.*" contains=abpCommentKey
syntax match abpCommentKey "^\s*!\s*[^:]\+:" contained nextgroup=abpCommentValue skipwhite
syntax match abpCommentValue ".*" contained

" Element Hiding
syntax match abpHidingOption "^[^#]*#@\?#.*" contains=abpHidingSeparator,abpHidingExceptionSeparator
syntax match abpHidingSeparator "##" contained nextgroup=abpHiding
syntax match abpHidingExceptionSeparator "#@#" contained nextgroup=abpHidingException
syntax match abpHiding ".*" contained
syntax match abpHidingException ".*" contained

" Highlights
hi def link abpBlocking Statement
hi def link abpBlockingException Operator
hi def link abpBlockingExceptionSeparator Delimiter
hi def link abpBlockingOption Statement
hi def link abpBlockingSeparator Delimiter
hi def link abpComment Comment
hi def link abpCommentKey Comment
hi def link abpCommentValue SpecialComment
hi def link abpHeader Comment
hi def link abpHiding Statement
hi def link abpHidingException Operator
hi def link abpHidingExceptionSeparator Delimiter
hi def link abpHidingOption Statement
hi def link abpHidingSeparator Delimiter

let b:current_syntax = 'adp'
let &cpoptions = s:cpo_save
unlet s:cpo_save

" vim: ft=vim
