"------------------------------------------------------------------------------
" syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1

let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']
let g:syntastic_css_checkers = ['csslint']              " npm install -g csslint
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_eruby_checkers = ['ruby']
let g:syntastic_haml_checkers = ['haml', 'haml_lint']   " gem install haml-lint
let g:syntastic_handlebars_checkers = ['handlebars']
let g:syntastic_javascript_checkers = ['standard']      " npm install -g standard
let g:syntastic_markdown_checkers = ['mdl']             " gem install mdl
" let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'reek', 'yard']
let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'yard']
let g:syntastic_sass_checkers = ['sass']
let g:syntastic_sh_checkers = ['sh']
let g:syntastic_slim_checkers = ['slimrb']
" let g:syntastic_text_checkers = ['language_check']      " pip install --user --upgrade language-check
let g:syntastic_yaml_checkers = ['jsyaml']              " npm install -g js-yaml
let g:syntastic_zsh_checkers = ['zsh']

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_ruby_rubocop_args = "--force-exclusion --display-cop-names --no-color"
let g:syntastic_markdown_mdl_args = "--style ~/.mdl_style.rb"
" let g:syntastic_text_language_check_args = '--language=en-US'
" let g:syntastic_debug = 3
