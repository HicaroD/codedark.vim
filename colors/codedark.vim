" Minimal codedark.vim - baseado no tema Dark+ do VS Code
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "codedark"

" Fundo e texto principal
hi! Normal        guifg=#abb2bf guibg=NONE
hi! CursorLine    guibg=#2c313a
hi! CursorLineNr  guifg=#abb2bf gui=NONE
hi! LineNr        guifg=#3e4451
hi! VertSplit     guifg=#3e4451 guibg=NONE

" Comentários e strings
hi! Comment       guifg=#5c6370 gui=italic
hi! Constant      guifg=#d19a66
hi! String        guifg=#98c379
hi! Identifier    guifg=#61afef
hi! Function      guifg=#61afef gui=NONE
hi! Statement     guifg=#c678dd
hi! Keyword       guifg=#c678dd gui=NONE
hi! Operator      guifg=#abb2bf
hi! Type          guifg=#e5c07b gui=NONE
hi! Special       guifg=#56b6c2

" Busca e seleção
hi! Visual        guibg=#3e4451
hi! Search        guibg=#3e4451 guifg=#ffffff
hi! IncSearch     guibg=#3e4451 guifg=#ffffff

" Diagnóstico LSP
hi! DiagnosticError guifg=#e06c75 gui=NONE
hi! DiagnosticWarn  guifg=#e5c07b gui=NONE
hi! DiagnosticInfo  guifg=#61afef gui=NONE
hi! DiagnosticHint  guifg=#56b6c2 gui=NONE

" Menu pop-up
hi! Pmenu         guibg=#2c313a guifg=#abb2bf
hi! PmenuSel      guibg=#3e4451 guifg=#abb2bf

" Sem destaques chamativos
hi! Title         guifg=#abb2bf gui=NONE
hi! Underlined    guifg=#61afef gui=NONE
hi! Bold          gui=NONE
hi! Italic        gui=NONE

" Cores do terminal
let g:terminal_ansi_colors = [
  \ '#282c34', '#e06c75', '#98c379', '#e5c07b',
  \ '#61afef', '#c678dd', '#56b6c2', '#abb2bf',
  \ '#5c6370', '#e06c75', '#98c379', '#e5c07b',
  \ '#61afef', '#c678dd', '#56b6c2', '#ffffff'
\ ]
