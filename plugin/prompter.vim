
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
"                ├── plugin/
"                │   ├── prompter.vim
"                │   └── ...
"                └── python/
"                    ├── llm.py
"                    ├── utils.py
"                    └── ...
"
let s:python_path = expand('<sfile>:p:h:h') . '/python'

function! Info()
python3 << EOF
import vim
import sys
sys.path.append(vim.eval('s:python_path'))

from vim_utils import echo, error
from utils import model_settings, help

echo(help())
# print(vim.eval('s:python_path'))

try:
    model = vim.eval('g:model')
    temperature = float(vim.eval('g:temperature'))
    max_tokens = int(vim.eval('g:max_tokens'))
    stop = vim.eval('g:stop')

    echo('\nModel:')
    echo(model_settings(model, temperature, max_tokens, stop))

    echo('\nCommands:')
    echo('PrompterGenerate   ' + vim.eval('g:prompter_generate_keystroke'))
    echo('PrompterInfo       ' + vim.eval('g:prompter_info_keystroke'))
    echo('PrompterSetup      ' + vim.eval('g:prompter_setup_keystroke'))
except:
    error('prompter.vim setup not done! Run in command line :PrompterSetup')
EOF
endfunction


function! Setup()
python3 << EOF
import vim
import sys
sys.path.append(vim.eval('s:python_path'))
from vim_utils import info, error, progress

import llm
# from llm import MODEL, TEMPERATURE, MAX_TOKENS, STOP

progress(f'configuring...')

# set default key mappings
vim.command("execute 'map ' . g:prompter_generate_keystroke . ' :PrompterGenerate<CR>'")
vim.command("execute 'map ' . g:prompter_info_keystroke . ' :PrompterInfo<CR>'")
vim.command("execute 'map ' . g:prompter_setup_keystroke . ' :PrompterSetup<CR>'")