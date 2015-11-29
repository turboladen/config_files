"-----------------------------------------------------------------------------
" Ruby settings
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
" Set up folding.
"-----------------------------------------------------------------------------
set foldexpr=turboladen#RubyMethodFold(v:lnum)
set foldmethod=expr
let ruby_fold=1

autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"-----------------------------------------------------------------------------
" Ruby Debugging
" Make those debugger statements painfully obvious
"-----------------------------------------------------------------------------
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"
au BufEnter *.rb syn match error contained "\<byebug\>"

"-----------------------------------------------------------------------------
" yardoc
"-----------------------------------------------------------------------------
hi link yardGenericTag rubyInstanceVariable
hi link yardTypeList rubyConstant
hi link yardType rubyConstant
" hi link yardLiteral rubyLocalVariableOrMethod
