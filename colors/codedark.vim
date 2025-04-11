scriptencoding utf-8
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="codedark-minimal"

" Highlight function
fun! s:hi(group, fg, bg, attr)
  let l:cmd = "hi " . a:group
  if !empty(a:fg)
    let l:cmd .= " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm256
  endif
  if !empty(a:bg)
    let l:cmd .= " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm256
  endif
  if a:attr != ""
    let l:cmd .= " gui=" . a:attr . " cterm=" . a:attr
  endif
  exec l:cmd
endfun

" Define colors
let s:none      = {'gui': 'NONE',     'cterm256': 'NONE'}
let s:front     = {'gui': '#D4D4D4',  'cterm256': '188'}
let s:back      = {'gui': '#1E1E1E',  'cterm256': '234'}
let s:blue      = {'gui': '#569CD6',  'cterm256': '75'}
let s:green     = {'gui': '#6A9955',  'cterm256': '65'}
let s:red       = {'gui': '#F44747',  'cterm256': '167'}
let s:gray      = {'gui': '#808080',  'cterm256': '245'}
let s:selection = {'gui': '#264F78',  'cterm256': '24'}

" Example highlight usage
call s:hi('Normal',       s:front, s:back, '')
call s:hi('Comment',      s:gray,  s:none, 'italic')
call s:hi('Constant',     s:blue,  s:none, '')
call s:hi('Identifier',   s:blue,  s:none, '')
call s:hi('Statement',    s:green, s:none, '')
call s:hi('PreProc',      s:red,   s:none, '')
call s:hi('Search',       s:none,  s:selection, '')
call s:hi('Visual',       s:none,  s:selection, '')
call s:hi('LineNr',       s:gray,  s:back, '')
