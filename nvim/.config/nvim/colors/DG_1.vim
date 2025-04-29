" Name:         Dan Garcia Theme I
" Description:  Custom Stata-esque color scheme.
" Author:       Dan Garcia
" Last Change:  April 21, 2025

set background=dark

hi clear
let g:colors_name = 'dg1'

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#7f7f8c', '#cd5c5c', '#9acd32', '#bdb76b', '#75a0ff', '#eeee00', '#cd853f', '#666666', '#8a7f7f', '#ff0000', '#89fb98', '#f0e68c', '#6dceeb', '#ffde9b', '#ffa0a0', '#c2bfa5']
endif
"All Edits Occur Here
  hi! link Terminal Normal
  hi! link LineNrAbove RelativeLineNr
  hi! link LineNrBelow RelativeLineNr
  hi! link CurSearch Search
  hi! link CursorLineFold CursorLine
  hi! link CursorLineSign CursorLine
  hi! link EndOfBuffer NonText
  hi! link MessageWindow Pmenu
  hi! link PopupNotification Todo
  hi Normal guibg=NONE ctermbg=NONE "Transparent Background
  hi StatusLine ctermfg=236 ctermbg=144 cterm=NONE
  hi StatusLineNC ctermfg=242 ctermbg=144 cterm=NONE
  hi StatusLineTerm ctermfg=236 ctermbg=144 cterm=NONE
  hi StatusLineTermNC ctermfg=231 ctermbg=144 cterm=NONE
  hi VertSplit ctermfg=242 ctermbg=144 cterm=NONE
  hi Pmenu ctermfg=231 ctermbg=241 cterm=NONE
  hi PmenuSel ctermfg=236 ctermbg=186 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=236 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=144 cterm=NONE
  hi PmenuMatch ctermfg=217 ctermbg=241 cterm=NONE
  hi PmenuMatchSel ctermfg=167 ctermbg=186 cterm=NONE
  hi TabLine ctermfg=236 ctermbg=144 cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=144 cterm=NONE
  hi TabLineSel ctermfg=236 ctermbg=186 cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=241 cterm=NONE
  hi ToolbarButton ctermfg=236 ctermbg=222 cterm=bold
  hi NonText ctermfg=81 ctermbg=239 cterm=NONE
  hi SpecialKey ctermfg=112 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=226 ctermbg=239 cterm=NONE
  hi Visual ctermfg=186 ctermbg=64 cterm=NONE
  hi VisualNOS ctermfg=186 ctermbg=81 cterm=NONE
  hi LineNr ctermfg=244 ctermbg=NONE cterm=NONE "Gray Main Line Number
  hi RelativeLineNr ctermfg=239 ctermbg=NONE cterm=NONE "Dark Gray Relative Line Numbers
  hi FoldColumn ctermfg=226 ctermbg=239 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=241 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=241 cterm=NONE
  hi CursorLineNr ctermfg=226 ctermbg=NONE cterm=bold
  hi QuickFixLine ctermfg=236 ctermbg=186 cterm=NONE
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=111 ctermbg=NONE cterm=underline
  hi Error ctermfg=196 ctermbg=231 cterm=reverse
  hi ErrorMsg ctermfg=196 ctermbg=231 cterm=reverse
  hi ModeMsg ctermfg=222 ctermbg=NONE cterm=bold
  hi WarningMsg ctermfg=167 ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=112 ctermbg=NONE cterm=bold
  hi Question ctermfg=120 ctermbg=NONE cterm=bold
  hi Todo ctermfg=196 ctermbg=226 cterm=NONE
  hi MatchParen ctermfg=242 ctermbg=143 cterm=NONE
  hi Search ctermfg=186 ctermbg=242 cterm=NONE
  hi IncSearch ctermfg=186 ctermbg=172 cterm=NONE
  hi WildMenu ctermfg=236 ctermbg=226 cterm=NONE
  hi ColorColumn ctermfg=231 ctermbg=167 cterm=NONE
  hi debugPC ctermfg=241 ctermbg=NONE cterm=reverse
  hi debugBreakpoint ctermfg=217 ctermbg=NONE cterm=reverse
  hi SpellBad ctermfg=167 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=111 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=222 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=112 ctermbg=NONE cterm=underline
  hi Define ctermfg=67 ctermbg=NONE cterm=NONE "Dark Blue Commands
  hi Comment ctermfg=64 ctermbg=NONE cterm=NONE "Green Comments
  hi Identifier ctermfg=73 ctermbg=NONE cterm=NONE "Light Blue Macros/Objects
  hi String ctermfg=167 ctermbg=NONE cterm=NONE "Dark Red Strings 
  hi Statement ctermfg=136 ctermbg=NONE cterm=bold "Light Brown Special Commands
  hi Constant ctermfg=223 ctermbg=NONE cterm=NONE "Light Orange Numbers
  hi PreProc ctermfg=214 ctermbg=NONE cterm=NONE "Dark Brown Terms (130)
  hi Type ctermfg=248 ctermbg=NONE cterm=bold "Light Gray Special Terms
  hi Special ctermfg=222 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=81 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=241 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Title ctermfg=167 ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=231 ctermbg=65 cterm=NONE
  hi DiffChange ctermfg=231 ctermbg=67 cterm=NONE
  hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
  hi DiffDelete ctermfg=231 ctermbg=133 cterm=NONE
  unlet s:t_Co
  finish

" Background: dark
" Color: foreground  #ffffff        231            white
" Color: background  #333333        236            black
" Color: color00     #7f7f8c        242            black
" Color: color08     #8a7f7f        244            darkgrey
" Color: color01     #cd5c5c        167            darkred
" Color: color09     #ff0000        196            red
" Color: color02     #9acd32        112            darkgreen
" Color: color10     #89fb98        120            green
" Color: color03     #bdb76b        143            darkyellow
" Color: color11     #f0e68c        186            yellow
" Color: color04     #75a0ff        111            darkblue
" Color: color12     #6dceeb        81             blue
" Color: color05     #eeee00        226            darkmagenta
" Color: color13     #ffde9b        222            magenta
" Color: color06     #cd853f        172            darkcyan
" Color: color14     #ffa0a0        217            cyan
" Color: color07     #666666        241            grey
" Color: color15     #c2bfa5        144            white
" Color: color16     #6b8e24        64             darkgreen
" Color: color17     #4d4d4d        239            grey
" Term colors: color00 color01 color02 color03 color04 color05 color06 color07
" Term colors: color08 color09 color10 color11 color12 color13 color14 color15
" Color: bgDiffA     #5F875F        65             darkgreen
" Color: bgDiffC     #5F87AF        67             blue
" Color: bgDiffD     #AF5FAF        133            magenta
" Color: bgDiffT     #C6C6C6        251            grey
" Color: fgDiffW     #FFFFFF        231            white
" Color: fgDiffB     #000000        16             black
" Color: bgDiffC8    #5F87AF        67             darkblue
" Color: bgDiffD8    #AF5FAF        133            darkmagenta
" vim: et ts=8 sw=2 sts=2
