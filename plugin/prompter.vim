
" Ensure python3 is available
if !has('python3')
  echohl ErrorMsg | echomsg "Error: Required vim compiled with +python3" | echohl None
  finish
endif

" set default key mappings
" they will be activated by command PrompterSetup
let g:prompter_setup_keystroke = '<F9>'
let g:prompter_info_keystroke = '<F10>'
let g:prompter_generate_keystroke =  '<F12>'
"let g:prompter_regenerate_keystroke =  '<F8>'

" immediate shortcut for PrompterSetup itself
execute 'map ' . g:prompter_setup_keystroke . ' :PrompterSetup<CR>'

" set completion highlight default colors,  
" orange = 3. green = 10
let g:prompter_completion_ctermbg = 3
let g:prompter_completion_ctermfg = 0

"
"~/.vim/
"└── pack/
"    └── my_plugin/
"        └── start/
"            └── my_plugin/