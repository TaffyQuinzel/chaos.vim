" Name:       chaos
" License:    MIT
" Author:     Louis van der Burg

" SETUP -----------------------------------------------------------------------

hi clear
if exists('syntax on')
    syntax reset
endif
let g:colors_name='chaos'


" PALETTE -----------------------------------------------------------------------

" misc
if &background == "dark"
    let s:foreground       = '#f1a95b' ", 0]
    let s:background       = '#1F2D3A' ", 0]
else
    " if &background == "light"
    let s:foreground       = '#FF0000' ", 0]
    let s:background       = '#f1a95b' ", 0]

    " let s:foreground       = '#0e56a4' " 0]
    " let s:background       = '#e0d2c5' " 0]
    "
    " let s:black          = '#d3c1af' " 0]
    " let s:red            = '#3fc6d4' " 1]
    " let s:green          = '#d8519f' " 2]
    " let s:yellow         = '#0c63ed' " 3]
    " let s:blue           = '#d67f46' " 4]
    " let s:magenta        = '#71bb52' " 5]
    " let s:cyan           = '#e95f7a' " 6]
    " let s:white          = '#423c38' " 7]
    "
    " let s:bright_black   = '#cbb6a1' " 8]
    " let s:bright_red     = '#18b3c3' " 9]
    " let s:bright_green   = '#d1338e' " 10]
    " let s:bright_yellow  = '#0e3bf0' " 11]
    " let s:bright_blue    = '#cb6724' " 12]
    " let s:bright_magenta = '#64a649' " 13]
    " let s:bright_cyan    = '#d55e67' " 14]
    " let s:bright_white   = '#130f0e' " 15]
endif

let s:cursor           = '#24c8f1' ", 0]
let s:reverse_cursor   = '#f14d24' ", 0]
let s:light_foreground = '#0e56a4' ", 0]
let s:light_background = '#e0d2c5' ", 0]

let s:black            = '#2c3e50' ", 0]
let s:red              = '#c0392b' ", 1]
let s:green            = '#27ae60' ", 2]
let s:yellow           = '#f39c12' ", 3]
let s:blue             = '#2980b9' ", 4]
let s:magenta          = '#8e44ad' ", 5]
let s:cyan             = '#16a085' ", 6]
let s:white            = '#bdc3c7' ", 7]

let s:bright_black     = '#34495e' ", 8]
let s:bright_red       = '#e74c3c' ", 9]
let s:bright_green     = '#2ecc71' ", 10]
let s:bright_yellow    = '#f1c40f' ", 11]
let s:bright_blue      = '#3498db' ", 12]
let s:bright_magenta   = '#9b59b6' ", 13]
let s:bright_cyan      = '#2AA198' ", 14]
let s:bright_white     = '#ecf0f1' ", 15]

"  FLAT-UI colors
" black 0, 8
" #34495E WET ASPHALT    8
" #2C3E50 MIDNIGHT BLUE  0
" red 1, 9
" #E74C3C ALIZARIN       9
" #C0392B POMEGRANATE    1
" green 2, 10
" #2ECC71 EMERALD        10
" #27AE60 NEPHRITIS      2
" yellow 3, 11
" #F1C40F SUN FLOWER     11
" #F39C12 ORANGE         3
" blue 4, 12
" #3498DB PETER RIVER    12
" #2980B9 BELIZE HOLE    4
" magenta 5, 13
" #9B59B6 AMETHYST       13
" #8E44AD WISTERIA       5
" cyan 6, 14
" #1ABC9C TURQUOISE      14
" #16A085 GREEN SEA      6
" white 7, 15
" #ECF0F1 CLOUDS         15
" #BDC3C7 SILVER         7
" orange
" #E67E22 CARROT         foreground
" #D35400 PUMPKIN
" grey
" #95A5A6 CONCRETE
" #7F8C8D ASBESTOS


" HIGHLIGHTS ------------------------------------------------------------------

" hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=#bbbbbb guibg=#000000

if &background == "dark"
    " amber foreground
    execute "hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=" . s:foreground . " guibg=" . s:background
    " execute "hi! NormalFG ctermfg=249 guifg=" . s:foreground
    " white/grey foreground
    " hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=#bdc3c7 guibg=#1F2D3A
else
    execute "hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=" . s:light_foreground . " guibg=" . s:light_background
    " hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=#F39C12 guibg=#dae8f5
    " hi! Normal cterm=NONE ctermfg=249 ctermbg=16 guifg=#0e56a4 guibg=#e0d2c5
endif

execute "hi! Cursor cterm=none ctermbg=blue gui=none guibg=" . s:bright_green
execute "hi! iCursor cterm=none ctermbg=red gui=none guibg=" . s:red
set guicursor+=i-ci:ver25-iCursor

" set listchars color to bright black
if &background == "dark"
    execute "hi! SpecialKey term=NONE ctermfg=0 gui=NONE guifg=" . s:bright_black
else
    execute "hi! SpecialKey term=NONE ctermfg=0 gui=NONE guifg=" . s:bright_red
endif

if &background == "dark"
    execute "hi! CursorLine cterm=NONE ctermbg=0 gui=NONE guibg=" . s:black
else
    execute "hi! CursorLine cterm=NONE ctermbg=0 gui=NONE guibg=" . s:white
endif
hi! link CursorColumn CursorLine
execute "hi! TelescopeSelection cterm=NONE ctermbg=0 gui=BOLD guibg=" . s:black

" make the statusline of the currently active window red
execute "hi! StatusLine term=BOLD ctermfg=1 gui=BOLD,inverse guifg=" . s:bright_red
hi! StatusLineNC term=BOLD ctermfg=1 gui=BOLD,inverse
if &background == "dark"
    execute "hi! VertSplit ctermfg=1 guifg=" . s:foreground . " guibg=" . s:foreground
else
    execute "hi! VertSplit ctermfg=1 guifg=" . s:light_foreground . " guibg=" . s:light_foreground
endif

execute "hi! Comment cterm=NONE ctermfg=240 ctermbg=NONE guifg=" . s:bright_cyan
execute "hi! DiffAdd cterm=NONE ctermfg=2 ctermbg=NONE gui=inverse guifg=" . s:green
execute "hi! DiffChange cterm=NONE ctermfg=15 ctermbg=NONE gui=inverse guifg=" . s:blue
execute "hi! DiffDelete cterm=NONE ctermfg=9 ctermbg=NONE gui=inverse guifg=" . s:red
execute "hi! DiffText cterm=NONE ctermfg=6 ctermbg=NONE gui=inverse guifg=" . s:yellow
execute "hi! Title cterm=bold ctermfg=NONE ctermbg=NONE gui=underline,bold guifg=" . s:magenta . " guibg=NONE"
execute "hi! Todo cterm=bold,underline ctermfg=15 ctermbg=NONE gui=BOLD guifg=" . s:bright_red . " guibg=" . s:bright_yellow
hi! Underlined cterm=underline ctermfg=249 ctermbg=NONE gui=underline
" hi! ColorColumn cterm=NONE ctermfg=NONE ctermbg=233
if &background == "dark"
    execute "hi! Folded cterm=italic ctermfg=245 ctermbg=NONE gui=NONE guifg=" . s:blue . " guibg=" . s:bright_black
else
    execute "hi! Folded cterm=italic ctermfg=245 ctermbg=NONE gui=NONE guifg=" . s:blue . " guibg=" . s:white
endif
" hi! IncSearch cterm=NONE ctermfg=240 ctermbg=11
" hi! MatchParen cterm=NONE ctermfg=249 ctermbg=240
hi! link NonText SpecialKey
" hi! Search cterm=NONE ctermfg=249 ctermbg=240
" hi! Visual cterm=NONE ctermfg=NONE ctermbg=236
hi! Visual cterm=NONE ctermfg=NONE ctermbg=236 gui=NONE,inverse
" hi! CursorLineNr cterm=NONE ctermfg=15 ctermbg=NONE
" hi! FoldColumn cterm=NONE ctermfg=240 ctermbg=NONE
" hi! LineNr cterm=NONE ctermfg=240 ctermbg=NONE
" hi! MoreMsg cterm=bold ctermfg=240 ctermbg=NONE
" hi! Pmenu cterm=NONE ctermfg=249 ctermbg=240
" hi! PmenuSel cterm=NONE ctermfg=249 ctermbg=236
hi! link Pmenu Normal
" hi! link PmenuThumb Normal
hi! link NormalFloat Pmenu
" hi! link FloatBorder Normal
execute "hi! FloatBorder cterm=NONE ctermfg=249 ctermbg=16 guifg=" . s:yellow . " guibg=" . s:background
" execute "hi! PmenuSel cterm=NONE ctermfg=249 ctermbg=236 gui=reverse guifg=" . s:yellow
" hi! Question cterm=NONE ctermfg=9 ctermbg=NONE
" hi! QuickFixLine cterm=underline ctermfg=NONE ctermbg=NONE
execute "hi! SignColumn cterm=NONE ctermfg=NONE ctermbg=16 guibg=" . s:black
" hi! TabLine cterm=NONE ctermfg=240 ctermbg=234
" hi! TabLineFill cterm=NONE ctermfg=249 ctermbg=234
" hi! TabLineSel cterm=NONE ctermfg=249 ctermbg=233
" hi! WarningMsg cterm=NONE ctermfg=16 ctermbg=11
" hi! WildMenu cterm=NONE ctermfg=249 ctermbg=236
execute "hi! TabLine cterm=NONE ctermfg=240 ctermbg=234 gui=NONE guifg=" . s:foreground . " guibg=" . s:black
" hi! link TabLineFill Normal
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
" execute "hi! TabLineFill cterm=NONE ctermfg=249 ctermbg=234 gui= guifg=" . s:
" execute "hi! TabLineSel cterm=NONE ctermfg=249 ctermbg=233 gui=reverse,bold"
hi! link TabLineSel StatusLine
" guifg=" . s:
" hi! WarningMsg cterm=NONE ctermfg=16 ctermbg=11
execute "hi! WildMenu cterm=NONE ctermfg=249 ctermbg=236 gui=NONE guifg=" . s:foreground . " guibg=" . s:black
hi! link VimCommentString Comment
hi! Constant gui=NONE guifg=#9b59b6
hi! Identifier gui=NONE guifg=#3498db
hi! Statement gui=NONE guifg=#f1c40f
" hi! PreProc gui=NONE guifg=#e74c3c
hi! Type gui=NONE guifg=#27ae60
execute "hi! Constant gui=NONE guifg=" . s:bright_magenta
execute "hi! Identifier gui=NONE guifg=" . s:bright_blue
if &background == "dark"
    execute "hi! Statement gui=NONE guifg=" . s:bright_yellow
else
    execute "hi! Statement gui=NONE guifg=" . s:yellow
endif
" execute "hi! PreProc gui=NONE guifg=" . s:bright_red
execute "hi! Type gui=NONE guifg=" . s:green
hi! link PreProc Type
if &background == "dark"
    execute "hi! Special gui=NONE guifg=" . s:white
else
    execute "hi! Special gui=NONE guifg=" . s:black
endif
" hi! link ModeMsg MoreMsg

" lualine stuff
execute "hi! LuaLine_Normal_a gui=BOLD guibg=" . s:green . " guifg=" . s:background
execute "hi! LuaLine_Normal_b guibg=" . s:red . " guifg=" . s:background
execute "hi! LuaLine_Normal_c guibg=" . s:bright_red . " guifg=" . s:background
execute "hi! LuaLine_Inactive_a guibg=#f1a95b guifg=" . s:background . " gui=BOLD"
execute "hi! LuaLine_Inactive_b guibg=#f1a95b guifg=" . s:background
execute "hi! LuaLine_Inactive_c guibg=#f1a95b guifg=" . s:background
execute "hi! LuaLine_Insert_a guibg=" . s:yellow . " guifg=" . s:background . " gui=BOLD"
execute "hi! LuaLine_Visual_a guibg=" . s:cyan . " guifg=" . s:background . " gui=BOLD"
execute "hi! LuaLine_Replace_a guibg=" . s:bright_black . " guifg=" . s:red . " gui=BOLD"
execute "hi! LuaLine_Command_a guibg=" . s:blue . " guifg=" . s:background . " gui=BOLD"

" Terminal colors
if has('nvim')
    let g:terminal_color_0 =  s:black
    let g:terminal_color_1 =  s:red
    let g:terminal_color_2 =  s:green
    let g:terminal_color_3 =  s:yellow
    let g:terminal_color_4 =  s:blue
    let g:terminal_color_5 =  s:magenta
    let g:terminal_color_6 =  s:cyan
    let g:terminal_color_7 =  s:white
    let g:terminal_color_8 =  s:bright_black
    let g:terminal_color_9 =  s:bright_red
    let g:terminal_color_10 = s:bright_green
    let g:terminal_color_11 = s:bright_yellow
    let g:terminal_color_12 = s:bright_blue
    let g:terminal_color_13 = s:bright_magenta
    let g:terminal_color_14 = s:bright_cyan
    let g:terminal_color_15 = s:bright_white
else
    "execute "let g:terminal_ansi_colors = [" .
    "            \ s:black . "," .
    "            \ s:red . "," .
    "            \ s:green . "," .
    "            \ s:yellow . "," .
    "            \ s:blue . "," .
    "            \ s:magenta . "," .
    "            \ s:cyan . "," .
    "            \ s:white . "," .
    "            \ s:bright_black . "," .
    "            \ s:bright_red . "," .
    "            \ s:bright_green . "," .
    "            \ s:bright_yellow . "," .
    "            \ s:bright_blue . "," .
    "            \ s:bright_magenta . "," .
    "            \ s:bright_cyan . "," .
    "            \ s:bright_white .
    "            \ "]"
endif

" rust
execute "hi! RustLabel guifg=" . s:bright_red
