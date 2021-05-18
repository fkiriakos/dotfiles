set nocompatible                                             " vim not vi
set encoding=utf-8
set spelllang=en_gb

" ---------------------------------------------------------------------
"                                Vundle
" ---------------------------------------------------------------------

" Call on Vundle packages from an external file
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" ---------------------------------------------------------------------
"                           Appearance & Colour
" ---------------------------------------------------------------------

colorscheme github                                          " Favourites: gruvbox, sourcerer, hybrid

set cursorline                                               " Highlight current cursor line

set hlsearch
set incsearch
hi Search ctermfg=green ctermbg=NONE cterm=underline         " Search results are coloured and underlined

" ---------------------------------------------------------------------
"                              vim Settings
" ---------------------------------------------------------------------

" Allow pasting
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  else
    return ''
  endif
endfunction

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set shell=$SHELL                                             " Default shell is ZSH
set noswapfile                                               " Don't create .swp files
set nobackup                                                 " Don't create <file>~ backup files
set showmatch                                                " Flashes matching brackets or parentheses
set history=50                                               " Just remember last 50 commands
set ruler                                                    " Show the cursor position all the time
set scrolloff=7                                              " Keep 7 lines at the top or bottom displayed while scrolling
set foldcolumn=0
set autoread                                                 " Refresh any unchanged files
set number                                                   " Show line numbers
set relativenumber                                           " Show relative line numbers
set showcmd                                                  " Display incomplete commands
set ignorecase                                               " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
set backspace=2                                              " Backspace deletes like most programs in insert mode
set tabstop=2                                                " Tabs are always 2 spaces
set expandtab                                                " Expand tabs into spaces
set shiftwidth=2                                             " Reindent with 2 spaces (using <<)
set clipboard=unnamed                                        " Mac OS X Clipboard sharing
set splitbelow                                               " Split panes to below
set splitright                                               " Split panes to right
set foldmethod=indent                                        " Folding performance
set foldlevelstart=999                                       " Only auto-fold if file > 999 levels
set tags=tags                                                " Look for the ctags in the project directory.

filetype plugin indent on

" ---------------------------------------------------------------------
"                            Plugin Options
" ---------------------------------------------------------------------

" Call on custom plugin options from an external file
if filereadable(expand("~/.vimrc.options"))
  source ~/.vimrc.options
endif

" ---------------------------------------------------------------------
"                                Commands
" ---------------------------------------------------------------------

" Call on commands from an external file
if filereadable(expand("~/.vimrc.commands"))
  source ~/.vimrc.commands
endif

" ---------------------------------------------------------------------
"                              Mappings
" ---------------------------------------------------------------------

" Call on mappings from an external file
if filereadable(expand("~/.vimrc.mappings"))
  source ~/.vimrc.mappings
endif
