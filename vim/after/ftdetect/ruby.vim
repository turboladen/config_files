"-----------------------------------------------------------------------------
" vim-ruby settings
"-----------------------------------------------------------------------------
let g:ruby_operators = 1
let g:ruby_spellcheck_strings = 1
let g:ruby_space_errors = 1

"-----------------------------------------------------------------------------
" Set up folding.
"-----------------------------------------------------------------------------
set foldexpr=turboladen#RubyMethodFold(v:lnum)
set foldmethod=expr
let g:ruby_fold = 1

"-----------------------------------------------------------------------------
" Set up omni.
"-----------------------------------------------------------------------------
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1

"-----------------------------------------------------------------------------
" Ruby Debugging
" Make those debugger statements painfully obvious
"-----------------------------------------------------------------------------
augroup highlight_ruby_debug
  au BufEnter *.rb syn match error contained "\<binding.pry\>"
  au BufEnter *.rb syn match error contained "\<debugger\>"
  au BufEnter *.rb syn match error contained "\<byebug\>"
augroup END

"-----------------------------------------------------------------------------
" yardoc
"-----------------------------------------------------------------------------
hi link yardGenericTag rubyInstanceVariable
hi link yardTypeList rubyConstant
hi link yardType rubyConstant
" hi link yardLiteral rubyLocalVariableOrMethod
