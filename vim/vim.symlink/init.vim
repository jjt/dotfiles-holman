set nocompatible
filetype off

let loaded_matchparen = 1

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'zhaocai/GoldenView.Vim'
" Plugin 'mileszs/ack.vim'
" Plugin 'mantiz/vim-plugin-dirsettings'
" Plugin 'mhartington/oceanic-next'
" Plugin 'mattn/webapi-vim'
" Plugin 'mattn/gist-vim'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'ternjs/tern_for_vim'

" Plugin 'triglav/vim-visual-increment'
" Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'terryma/vim-expand-region'
Plugin 'chriskempson/base16-vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'mhinz/vim-grepper'
Plugin 'romainl/vim-qf'

" Plugin 'nono/vim-handlebars'
" Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'wavded/vim-stylus'
Plugin 'pangloss/vim-javascript'
" Plugin 'heavenshell/vim-jsdoc'
" Plugin 'mxw/vim-jsx'
" Plugin 'evidens/vim-twig'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'letientai299/vim-react-snippets', { 'branch': 'es6' }
" Plugin 'elixir-lang/vim-elixir'
" Plugin 'scrooloose/syntastic'

call vundle#end()

let g:gist_post_private = 1

" "Syntastic
" let g:syntastic_javascript_checkers = ['eslint']
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = { "mode": "passive" }

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|bower_components'
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = ['mixed']
let g:ctrlp_cmd = 'CtrlPMixed'

"JsDoc
let g:jsdoc_default_mapping = 0
let g:jsdoc_allow_input_prompt = 1

" NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0

" Python
let g:python_host_prog = '/Users/jjt/.pyenv/shims/python'
let g:python3_host_prog = '/Users/jjt/.pyenv/shims/python3'

" Ag/Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"JSX
let g:jsx_ext_required = 0

"vim-qf
let g:qf_mapping_ack_style = 1

" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim

" Goldenview
let g:goldenview__enable_default_mapping = 0

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
colorscheme base16-default-dark

" Airline
let g:airline_theme='base16_default'
let g:airline_powerline_fonts = 1

" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
hi CursorLine ctermbg=235 guibg=#444444
highlight ColorColumn ctermbg=235 guibg=#565F3F
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
set undodir=./.vim/undo//,$HOME/.vim/undo//,/var/tmp/vim/undo//
set backupdir=./.vim/backup//,$HOME/.vim/backup//,/var/tmp/vim/backup//
set directory=./.vim/swap//,$HOME/.vim/swap//,/var/tmp/vim/swap//
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
map <leader>v :tabe $MYVIMRC<CR>
map <leader>V :source $MYVIMRC<CR>
map <leader>gv :tabe $MYGVIMRC<CR>
map <leader>GV :source $MYGVIMRC<CR>

map <leader>wst :w !sudo tee > /dev/null %
map <leader>no :noh<CR>
nmap <leader>a <Esc>:Ack!<Space>
map <leader>rs <ESC>:call ReloadAllSnippets() <CR>
nmap <leader>ss :wa<CR>:call DeleteHiddenBuffers()<CR>:mksession! ~/.vim/sessions/
nmap <leader>so :wa<CR>:so ~/.vim/sessions/
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


imap jj <esc>

nnoremap <Leader>stm :SyntasticToggleMode<cr>
nnoremap <Leader>stc :SyntasticCheck<cr>

" CtrlP MRU mode
nnoremap <c-p> :CtrlPMRUFiles<cr>

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
nmap <leader>nt <plug>NERDTreeTabsToggle<cr>

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

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [k :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]k :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [k <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]k <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [k :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]k :call NextIndent(1, 1, 1, 1)<CR>

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Python json tool
nmap <leader>json :%!python -m json.tool<cr>gg=G

" jsdoc
nnoremap <leader>jsd :JsDoc<CR>


augroup startup
    " Prevent duplicated autocmds
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    au!

    au bufwritepost .vimrc source $MYVIMRC
    au bufwritepost init.vim source $MYVIMRC
    au bufwritepost .gvimrc source $MYGVIMRC
    " close preview window automatically when we move around
    "au CursorMovedI * if pumvisible() == 0|pclose|endif
    "au InsertLeave * if pumvisible() == 0|pclose|endif

    " Filetype settings
    au BufRead,BufNewFIle *.scss setlocal filetype=scss
    au BufRead,BufNewFile *.php setlocal filetype=php.html
    "au BufRead,BufNewFile *.coffee setlocal filetype=coffee
    "au BufRead,BufNewFile *.js setlocal sw=2 ts=2 sts=2
    au BufRead,BufNewFile *.hamlpy setlocal filetype=haml
    au BufRead,BufNewFile *.py setlocal filetype=pydjango.python
    au BufRead,BufNewFile *.cjsx :SnipMateLoadScope html
    au BufRead,BufNewFile .eslintrc setlocal filetype=javascript

    "autocmd BufEnter * lcd %:p:h
augroup END

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal colorcolumn=80 cul
    au WinLeave * setlocal colorcolumn=0 nocul
augroup END

function! SetTabStops(num)
    let &l:ts = a:num
    let &l:sts = a:num
    let &l:sw = a:num
endfunction

function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction


" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

" Use Ag (Silver Searcher) for CtrlP backend
" if executable('ag')
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_use_caching = 0
" endif

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif
