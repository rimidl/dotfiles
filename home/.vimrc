" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" = Vundles
  " Filetype off is required by vundle
  filetype off

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'
  Plugin 'lyokha/vim-xkbswitch'

  Plugin 'xolox/vim-misc'
  Plugin 'artnez/vim-wipeout' " :Wipeout - Destroy all buffers that are not open in any tabs or windows
  Plugin 'tpope/vim-dispatch' " - asynchronous build and test dispatcher
  Plugin 'benmills/vimux'

  Plugin 'tpope/vim-fugitive'

  Plugin 'yegappan/greplace'
  Plugin 'mileszs/ack.vim'
  Plugin 'rking/ag.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'bling/vim-airline'
  Plugin 'majutsushi/tagbar'

  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'AutoClose'
  Plugin 'bronson/vim-visual-star-search'
  Plugin 'terryma/vim-expand-region'
  Plugin 'godlygeek/tabular'

  Plugin 'jceb/vim-orgmode'
  Plugin 'utl.vim' " Univeral Text Linking - Execute URLs, footnotes, open emails, organize ideas
  Plugin 'speeddating.vim' " Use CTRL-A/X to increment dates, times, and more
  Plugin 'taglist.vim' " Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
  Plugin 'SyntaxRange' " Define a different filetype syntax on regions of a buffer

  Plugin 'vim-ruby/vim-ruby'
  Plugin 'rorymckinley/vim-rubyhash'
  Plugin 'tpope/vim-rails'
  Plugin 'skalnik/vim-vroom'
  Plugin 'tpope/vim-endwise'

  Plugin 'plasticboy/vim-markdown'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'XadillaX/json-formatter.vim'
  Plugin 'elzr/vim-json'

  " Plugin 'w0ng/vim-hybrid'
  Plugin 'nanotech/jellybeans.vim'
  call vundle#end()            " required

  "Filetype plugin indent on is required by vundle
  filetype plugin indent on

" = General Settings
  " == Main
    set encoding=utf8

    set backspace=indent,eol,start  " to allow backspacing over everything in insert mode (including automatically inserted indentation, line breaks and start of insert)

    set history=1000      " loong commands history

    set clipboard=unnamed " OS X clipboard integration

    let mapleader = "\<Space>"

    let maplocalleader = ","

  " == Indentation
    filetype plugin on
    filetype indent on

    set expandtab    " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
    set tabstop=2    " Number of spaces that a <Tab> in the file counts for
    set shiftwidth=2 " Number of spaces to use for each step of (auto)indent.  Used for 'cindent', >>, <<, etc.

    set list                      " show unprintable characters
    set listchars=tab:▸\ ,trail:· " display extra whitespaces with dots and tabs with triangles

  " == Backups
    set nobackup      " no tilde backup files (eg. myfile.txt~)
    set nowritebackup " no backups on save
    set noswapfile    " no swap files (eg. .myfile.txt.swp)

  " == Buffers
    set autoread          " look for external writings to the current buffer
    "set hidden            " buffers can live in background

  " == Folding
    " set foldenable
    set nofoldenable
    set foldcolumn=0      " no folding columns
    set foldmethod=indent
    set foldlevel=3

  " == Splits
    set splitright        " put new windows on the right
    set splitbelow        " and below

  " == Search & Grep
    set hlsearch
    set incsearch  " show search matches while typing
    set ignorecase " case insensitive search
    set smartcase  " case sensitive when capitals present

    set grepprg=ag\ --nogroup\ --nocolor

  " == Russian Language Support
    set iminsert=0               " Use latin by default
    set imsearch=0               " Use latin by default

    " set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

    map р :call USLayout()<CR>
    map о :call USLayout()<CR>
    map д :call USLayout()<CR>
    map д :call USLayout()<CR>

    " autocmd InsertLeave * call USLayout()
    autocmd BufWritePost * call USLayout()

  " == GUI
    set guifont=Monaco:h11

    set number

    set t_ut=          " Fixing Vim's Background Color Erase for 256-color tmux - http://sunaku.github.io/vim-256color-bce.html

    set textwidth=120
    set nowrap         " do not wrap lines

    set showcmd " display incomplete commands
    set laststatus=2 " show the satus line all the time

" = Plugin Settings
  " == Ack
    set shellpipe=&>      " prevent ack output to bleed into the terminal

    let g:ackprg='ack -H --nocolor --nogroup --column --smart-case --sort-files'
    let g:ackhighlight = 1
    let g:ack_use_dispatch = 1

  " == CtrlP
    "let g:ctrlp_match_window_bottom = 0 " Show at top of window
    "let g:ctrlp_dotfiles=1
    let g:ctrlp_use_caching = 0
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " let g:ctrlp_prompt_mappings = {
    "       \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    "       \ }

    nmap <silent> <leader>b :CtrlPBuffer<CR>
    nmap <silent> <leader>@ :CtrlPTag<CR>

  " == Orgmode
    au FileType org setlocal textwidth=300
    au FileType org setlocal wrap
    au FileType org setlocal tabstop=2
    au FileType org setlocal shiftwidth=2

  " == tagbar
    " let g:tagbar_compact = 1     " Omit help and empty lines
    " let g:tagbar_autoshowtag = 1 " Auto open closed folds
    let g:tagbar_zoomwidth = 0     " Use the width of the longest currently visible tag.
    let g:tagbar_autofocus = 1     " Move focus to tagbar window on open
    let g:tagbar_sort = 0
    let g:tagbar_iconchars = ['▸', '▾']

    nnoremap <silent> <F8> :TagbarToggle<CR>

" = Custom Settings
  " == DiffOrig
    " Convenient command to see the difference between the current buffer and the
    " file it was loaded from, thus the changes you made.
    " Only define it when not defined already.
    if !exists(":DiffOrig")
      command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
    endif

  " == VisualSelection
    " Visual mode pressing * or # searches for the current selection
    " Super useful! From an idea by Michael Naumann
    vnoremap <silent> * :call VisualSelection('f', '')<CR>
    vnoremap <silent> # :call VisualSelection('b', '')<CR>

    " When you press gv you Ag after the selected text
    vnoremap <silent> gf :call VisualSelection('gv', '')<CR>

    " When you press <leader>r you can search and replace the selected text
    vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>


" Section: Plugins options {{{1

  " vim-vroom
    let g:vroom_use_vimux = 1

  " vim-xkbswitch
    " let g:XkbSwitchEnabled = 1
    " let g:XkbSwitchIMappings = ['ru']
    " let g:XkbSwitchILayout = 'us'

  " NERDTree {{{
    let NERDTreeMinimalUI = 1        " Disable bookmarks and help labels
    let NERDChristmasTree = 1        " Be colorful
    let NERDTreeQuitOnOpen = 1       " Close tree on file open
  "}}}

  " rusmode {{{
    let g:rusmode_autotoggle_insertleave=0
  " }}}

  " vim-surround {{{
  let g:surround_{char2nr('#')} = "#{\r}" " ysiw# to wrap word under cursow with #{}

  " vim-airline
  let g:airline_theme='powerlineish'
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_section_z=''

" Section: Mappings non-leader

  " override defaults
  map K <nop>
  map q: :q
  nnoremap Q <nop>
  map Q :q<CR>

  " Treat long lines as break lines (useful when moving around in them):
  map j gj
  map k gk

  " Paste in visual mode without copying
  " xnoremap p pgvy

  " stop using the arrow keys
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>

  " Easy window navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

  " Automatically jump to end of text you pasted:
    vnoremap <silent> y y`]
    vnoremap <silent> p p`]
    nnoremap <silent> p p`]

  " Quickly select text you just pasted:
  noremap gV `[v`]

  " Stop that stupid window from popping up:

  " Copy file path
  noremap <silent> <F4> :let @+=expand("%:p")<CR>

  " H to start of line, L to end of line
  noremap H ^
  noremap L $

  " make star “*” command stay on current word
  " nnoremap * *``

  " Yank from cursor to end of line
  nnoremap Y y$

" Section: Mappings Plugins

  " nerdtree
    nmap <silent> <leader>n :NERDTreeToggle<CR>
    nmap <silent> <leader>N :NERDTreeFind<CR>

  " vimux
    map <Leader>vr :VimuxRunCommand("bundle exec rspec")<CR>
    map <Leader>vc :VimuxRunCommand("bundle exec rubocop && bundle exec haml-lint app/views")<CR>
    map <Leader>vl :VimuxRunLastCommand<CR>

  " vim-fugitive
    nnoremap <leader>gb :Gblame<CR>
    nnoremap <leader>gs :Gstatus<CR>
    nnoremap <leader>gd :Gdiff<CR>

    nnoremap <leader>do :DiffOrig<CR>

  " tabular
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>

" Section: Mappings Leader
  map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

  nmap <silent> <leader>W :call TrimSpaces()<CR>:w!<CR>

  " It clears the search buffer
  nmap <silent> <leader>/ :nohlsearch<CR>

  " nmap <silent> <leader>w :wa<CR>:redraw!<CR>
  " nmap <silent> <leader>ц :wa<CR>:redraw!<CR>
  nmap <silent> <leader>w :wa<CR>
  nmap <silent> <leader>ц :wa<CR>
  nmap <silent> <leader>q :q<CR>

  nmap <silent> <leader>- :split<CR>
  nmap <silent> <leader>\| :vsplit<CR>

  nmap <Leader><Leader> V

  " Search and replace the word under the cursor
  " nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<left><left><left>
  " Search and replace selected text
  vnoremap r "hy:%s/<C-r>h//gc<left><left><left>
  " Search for the word under the cursor
  " nnoremap <Leader>R :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

  " vim-expand-region
  vmap v <Plug>(expand_region_expand)
  vmap <C-v> <Plug>(expand_region_shrink)

" Section: Autocommands

  "autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.jbuilder,Gemfile,Rakefile,config.ru,Vagrantfile,Guardfile,Capfile,Cheffile set filetype=ruby

" Section: Colors, fonts, etc
  colorscheme jellybeans

  syntax on    " Enable syntax higlighter

  " Highlight VCS conflict markers (thanks, @sjl)
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Section: = Functions
  function! CmdLine(str)
      exe "menu Foo.Bar :" . a:str
      emenu Foo.Bar
      unmenu Foo
  endfunction

  function! VisualSelection(direction, extra_filter) range
      let l:saved_reg = @"
      execute "normal! vgvy"

      let l:pattern = escape(@", '\\/.*$^~[]')
      let l:pattern = substitute(l:pattern, "\n$", "", "")

      if a:direction == 'b'
          execute "normal ?" . l:pattern . "^M"
      elseif a:direction == 'gv'
          call CmdLine("Ag \"" . l:pattern . "\" " )
      elseif a:direction == 'replace'
          call CmdLine("%s" . '/'. l:pattern . '/')
      elseif a:direction == 'f'
          execute "normal /" . l:pattern . "^M"
      endif

      let @/ = l:pattern
      let @" = l:saved_reg
  endfunction

  fun! TrimSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
  endfunction

  fun! USLayout()
    call system('~/changeInput U.S.')
  endfunction
