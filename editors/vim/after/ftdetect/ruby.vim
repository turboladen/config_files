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
