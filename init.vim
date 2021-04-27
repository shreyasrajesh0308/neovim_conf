
" Directory where plugins are to be downloaded
call plug#begin('~/.local/share/nvim/plugged')

" List of Plugins
"
"Jedi Vim for Python Autocomplete
Plug 'davidhalter/jedi-vim'

"Supertab for tab completion
Plug 'ervandew/supertab'

"Deoplete for auto complete (Async autocompletion)
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " General Deoplete Plugin
Plug 'deoplete-plugins/deoplete-jedi' " Deoplete autocompletion for python
Plug 'zchee/deoplete-clang' " Deoplete Autocomplete for C/C++

"Gruvbox for color scheme
Plug 'morhetz/gruvbox'

" Modified status bar with vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " Mulitple Themes for the vim-airline status bar

" Bracket close and open
Plug 'jiangmiao/auto-pairs'

"Auto format code
Plug 'sbdchd/neoformat'

"Async Lint Engine for syntax and semantic checking
Plug 'dense-analysis/ale'

"Multi line comment plugin
Plug 'tpope/vim-commentary'

call plug#end()

" Some Preferences for Jedi-Vim
"
" Use tabs instead of buffers when moving to definitions 
let g:jedi#use_splits_not_buffers = "right"
" Disable Completion to use Deoplete
let g:jedi#completions_enabled = 0


" Some Preferences for Deoplete
let g:deoplete#enable_at_startup = 1 " Enable Deoplete at Startup
let g:SuperTabDefaultCompletionType = "<c-n>" " SuperTab Completion from top to bottom
" Deoplete C setup
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-10/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-10/lib/clang'
" Color Preferences
colorscheme gruvbox
set background=dark

" Set numbering for nvim 
set number

" Vim-airline theme set
let g:airline_theme='simple' " <theme> is a valid theme name

"Set linting style for ALE python
let g:ale_linters = {'python': ['pylint']}

"Set python for use with conda environments
"let g:python3_host_prog = 'python3'
