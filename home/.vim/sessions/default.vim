" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.10.1 on 16 April 2015 at 10:03:29.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrL
silent! set guifont=Monaco:h11
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'jellybeans' | colorscheme jellybeans | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/showjet-project/showjet-src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 ~/projects/showjet-project/todo-235.org
badd +1 app/controllers/admin/serial_seasons_controller.rb
badd +1 app/controllers/admin/serial_episodes_controller.rb
badd +0 app/views/admin/serial_episodes/edit.html.haml
badd +0 app/views/admin/serial_episodes/index.html.haml
badd +0 app/views/admin/serial_episodes/new.html.haml
badd +0 app/views/admin/serial_episodes/show.html.haml
badd +0 app/views/admin/serial_seasons/edit.html.haml
badd +0 app/views/admin/serial_seasons/index.html.haml
badd +0 app/views/admin/serial_seasons/new.html.haml
badd +1 app/views/admin/serial_seasons/show.html.haml
badd +1 Gemfile
badd +1 app/views/admin/serial_seasons/_form.html.haml
badd +1 app/views/admin/movies/_form.html.haml
badd +22 ~/.vimrc
argglobal
silent! argdel *
edit app/views/admin/movies/_form.html.haml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 147) / 295)
exe 'vert 2resize ' . ((&columns * 263 + 147) / 295)
argglobal
enew
" file NERD_tree_3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 38 - ((37 * winheight(0) + 42) / 84)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 03|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 147) / 295)
exe 'vert 2resize ' . ((&columns * 263 + 147) / 295)
tabedit ~/projects/showjet-project/todo-235.org
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 11 - ((10 * winheight(0) + 42) / 85)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 03|
2wincmd w
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/projects/showjet-project/showjet-src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 84|vert 1resize 31|2resize 84|vert 2resize 263|
2wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128