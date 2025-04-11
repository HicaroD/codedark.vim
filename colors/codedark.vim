if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "codedark"

" Paleta base (VS Code Dark+)
let s:fg = "#abb2bf"
let s:bg = "NONE"
let s:gray = "#5c6370"
let s:blue = "#61afef"
let s:green = "#98c379"
let s:red = "#e06c75"
let s:yellow = "#e5c07b"
let s:purple = "#c678dd"
let s:cyan = "#56b6c2"
let s:orange = "#d19a66"

" Fundo e texto padrão
hi! Normal guifg=s:fg guibg=s:bg
hi! CursorLine guibg=#2c313a
hi! CursorLineNr guifg=s:fg gui=NONE
hi! LineNr guifg=#3e4451
hi! VertSplit guifg=#3e4451 guibg=NONE

" Código
hi! Comment guifg=s:gray gui=italic
hi! Constant guifg=s:orange
hi! String guifg=s:green
hi! Identifier guifg=s:blue
hi! Function guifg=s:blue gui=NONE
hi! Statement guifg=s:purple
hi! Keyword guifg=s:purple gui=NONE
hi! Operator guifg=s:fg
hi! Type guifg=s:yellow gui=NONE
hi! Special guifg=s:cyan

" Busca e seleção
hi! Visual guibg=NONE gui=underline
hi! Search guibg=NONE gui=underline
hi! IncSearch guibg=NONE gui=underline

" Diagnóstico LSP
hi! DiagnosticError guifg=s:red gui=NONE
hi! DiagnosticWarn  guifg=s:yellow gui=NONE
hi! DiagnosticInfo  guifg=s:blue gui=NONE
hi! DiagnosticHint  guifg=s:cyan gui=NONE

" UI
hi! Pmenu guibg=#2c313a guifg=s:fg
hi! PmenuSel guibg=#3e4451 guifg=s:fg

" Sem destaque em excesso
hi! Title guifg=s:fg gui=NONE
hi! Underlined guifg=s:blue gui=NONE
hi! Bold gui=NONE
hi! Italic gui=NONE

" Terminal colors (opcional)
let g:terminal_ansi_colors = [
  \ '#282c34', '#e06c75', '#98c379', '#e5c07b',
  \ '#61afef', '#c678dd', '#56b6c2', '#abb2bf',
  \ '#5c6370', '#e06c75', '#98c379', '#e5c07b',
  \ '#61afef', '#c678dd', '#56b6c2', '#ffffff'
\ ]
