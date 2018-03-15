syntax enable
colorscheme monokai
"colo desert
"syntax on

" Spaces & Tabs
" =============================================================================

set smartindent                 " does the right thing (mostly)
set autoindent                  " indenting on
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=0               " number of spaces in TAB when editing
set noexpandtab                 " tabs are not spaces
set shiftwidth=4                " how many spaces are reindented when shifting
set paste           " allows for proper pasting with formating

" Layout
" =============================================================================

syntax enable                   " enable syntax processing
set number                              " show line numbers
set showcmd                             " show command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set nowrap                              " nowrap fix (can be wrap for small screens)
set textwidth=80                " if wrap is used re-format wrap to 80
"set colorcolumn=80             " add a ruler at 80
"highlight ColorColumn guibg=Gray12
set splitbelow                  " open horizontal splits below current window

" Searching
" =============================================================================

set showmatch                   " highlight matching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " ignore case when searching
set smartcase                   " use case if any case is used

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
