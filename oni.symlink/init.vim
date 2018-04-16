set nocompatible
filetype off

call plug#begin('~/.config/nvim/pluggers')

Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-vinegar'

call plug#end()

" Basic Settings
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set numberwidth=1             " using only 1 column (and 1 space) while possible
set relativenumber
set number
set wildmenu                  " Menu completion in command mode on <Tab>
set regexpengine=1
set wildmode=full             " <Tab> cycles between all matching choices.
set noautochdir
set sessionoptions=buffers,tabpages,curdir
set winminheight=0
set winminwidth=0
set textwidth=0
set spell spelllang=en_us
set hid

" Syntax/color
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
let base16colorspace=256

" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=8             " Keep 8 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
" set showmatch               " Briefly jump to a paren once it's balanced
" set matchtime=2             " (for only .2 seconds).
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set tabstop=2               " <tab> inserts 4 spaces
set shiftwidth=2            " but an indent level is 2 spaces wide.
set softtabstop=2           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set clipboard=unnamed
"
" set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=manual       " allow us to fold on indents
set foldlevel=99            " don't fold by default
set foldlevelstart=99            " don't fold by default
set splitright
set splitbelow

" Undo/swap
set undodir=$HOME/.oni/undo//,/var/tmp/oni/undo//
set backupdir=$HOME/.oni/backup//,/var/tmp/oni/backup//
set directory=$HOME/.oni/swap//,/var/tmp/oni/swap//
set undofile

" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
"set laststatus=2            " Always show statusline, even if only 1 window.

" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
set nolist

" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" Per-directory config
set exrc
set secure

let mapleader=","
map <space> <leader>

cabbr %% <C-R>=expand('%:p:h')<CR>
     
map ; :
noremap ;; ;
nnoremap <F5> :buffers<CR>:buffer<Space>
" vimrc shortcuts
map <leader>v :tabe ~/.oni/init.vim<CR>
map <leader>V :source ~/.oni/init.vim<CR>

map <leader>wst :w !sudo tee > /dev/null %
map <leader>no :noh<CR>
nmap <leader>a <Esc>:Ack!<Space>
map <leader>rs <ESC>:call ReloadAllSnippets() <CR>
nmap <leader>ss :wa<CR>:call DeleteHiddenBuffers()<CR>:mksession! ~/.oni/sessions/
nmap <leader>so :wa<CR>:so ~/.oni/sessions/
nmap <silent> <leader>tp :set paste!<cr>
nnoremap <C-l> :tabn <CR>
nnoremap <C-h> :tabp <CR>
nnoremap <leader>tc :tabclose<CR>
map <leader>dcl :%s/^.*console\.log.*\n//gc <CR>
map <leader>ccl :%s/\(^.*\)\(console\.log.*\n\)/\1\/\/\2/gc <CR>
map <leader>b :buffer<Space>
nnoremap <Leader>sr :%s/<C-r><C-w>//gic<Left><Left><Left><Left>
nnoremap <Leader>sts :call SetTabStops()<Left>
nmap <leader>cd :lcd %:p:h<cr>
nmap <leader>sar :!sudo /usr/sbin/service apache2 restart<cr>
nnoremap <leader>ln :set relativenumber!<cr>
nmap <leader>sa :bufdo w
nmap <leader>fw :FixWhitespace<cr>
nmap <leader>ln :lnext<cr>
nmap <leader>lp :lprev<cr>
nmap <leader>rg :GrepperRg<Space>
nmap <leader>sw :set wrap!<cr>
nmap <leader>nt :Explore<cr>


imap jj <esc>

" nnoremap <Leader>stm :SyntasticToggleMode<cr>
" nnoremap <Leader>stc :SyntasticCheck<cr>

" CtrlP MRU mode
" nnoremap <c-p> :CtrlPMRUFiles<cr>

" DWM plugin
"nmap <leader>wf <Plug>DWMFocus
"nmap <leader>wl <Plug>DWMGrowMaster
"nmap <leader>wh <Plug>DWMShrinkMaster
"nmap <c-,> <Plug>DWMRotateCounterclockwise

" Goldenview
" nmap <silent> <C-N>       <Plug>GoldenViewSplit
" nmap <silent> <leader>wf  <Plug>GoldenViewSwitchMain
" nmap <silent> <S-F8>      <Plug>GoldenViewSwitchToggle
" nmap <silent> <C-J>       <Plug>GoldenViewNext
" nmap <silent> <C-K>       <Plug>GoldenViewPrevious
nnoremap <c-j> <C-W>w
nnoremap <c-k> <C-W>W
nnoremap <c-n> :sp<cr>
nnoremap <c-m> :vsp<cr>

" NERDTree
" nmap <leader>nt <plug>NERDTreeTabsToggle<cr>

" Comments at beginning of line respecting indentation
" map <leader># :s/^\(\s*\)/\1#/<cr>:noh <cr>
" map <leader>/ :s/^\(\s*\)/\1\/\//<CR>:noh <CR>
" map <leader>> :s/^\(\s*\)/\1> /<CR>:noh <CR>
" map <leader>" :s/^\(\s*\)/\1\"/<CR>:noh <CR>
" map <leader>% :s/^\(\s*\)/\1%/<CR>:noh <CR>
" map <leader>! :s/^\(\s*\)/\1!/<CR>:noh <CR>
" map <leader>; :s/^\(\s*\)/\1;/<CR>:noh <CR>
" map <leader>- :s/^\(\s*\)/\1--/<CR>:noh <CR>
map <leader>/ :Commentary<CR>

map <leader>d/ :s/^\(\s*\)\/\//\1/<cr>:noh <cr>

map <leader>dhb <ESC>:call DeleteHiddenBuffers() <CR>

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Python json tool
nmap <leader>json :%!python -m json.tool<cr>gg=G

" jsdoc
nnoremap <leader>jsd :JsDoc<CR>

augroup startup
  au bufwritepost init.vim source ~/.oni/init.vim
augroup END
