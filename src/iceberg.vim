" NOTE:
" This script is for Pgmnt, template engine for creating Vim color scheme.
" See the official site for more information:
" https://github.com/cocopon/pgmnt.vim


" Definitions {{{
let s:hue_base = 230

let s:hue_red = 0
let s:hue_orange = 25
let s:hue_green = 70
let s:hue_lblue = 190
let s:hue_blue = 215
let s:hue_purple = 255

" gui
let s:g = {}
let s:g.blue   = pgmnt#color#hsl(s:hue_blue,   0.37, 0.65)
let s:g.green  = pgmnt#color#hsl(s:hue_green,  0.32, 0.63)
let s:g.lblue  = pgmnt#color#hsl(s:hue_lblue,  0.32, 0.65)
let s:g.orange = pgmnt#color#hsl(s:hue_orange, 0.65, 0.68)
let s:g.purple = pgmnt#color#hsl(s:hue_purple, 0.32, 0.68)
let s:g.red    = pgmnt#color#hsl(s:hue_red,    0.65, 0.68)

let s:g.normal_bg = pgmnt#color#hsl(s:hue_base, 0.20, 0.11)
let s:g.normal_fg = pgmnt#color#hsl(s:hue_base, 0.10, 0.80)

let s:g.comment_fg = pgmnt#color#hsl(s:hue_base, 0.12, 0.48)
let s:g.linenr_bg = pgmnt#color#adjust_color(s:g.normal_bg, {
      \   'saturation': +0.05,
      \   'lightness': +0.05,
      \ })
let s:g.linenr_fg = pgmnt#color#lighten(s:g.linenr_bg, 0.20)
let s:g.pmenu_bg = pgmnt#color#hsl(s:hue_base, 0.20, 0.30)
let s:g.pmenu_fg = s:g.normal_fg
let s:g.statusline_bg = pgmnt#color#hsl(s:hue_base, 0.09, 0.55)
let s:g.statusline_fg = pgmnt#color#hsl(s:hue_base, 0.09, 0.10)
let s:g.statuslinenc_bg = pgmnt#color#darken(s:g.normal_bg, 0.03)
let s:g.statuslinenc_fg = pgmnt#color#lighten(s:g.normal_bg, 0.20)

let s:g.cursorline_bg = s:g.linenr_bg
let s:g.folded_bg = s:g.linenr_bg
let s:g.folded_fg = pgmnt#color#adjust_color(s:g.folded_bg, {
      \   'saturation': -0.05,
      \   'lightness': +0.35,
      \ })

let s:g.xline_base_bg = pgmnt#color#lighten(s:g.normal_bg, 0.15)
let s:g.xline_base_fg = pgmnt#color#adjust_color(s:g.normal_bg, {
      \   'saturation': -0.10,
      \   'lightness': +0.35,
      \ })
let s:g.xline_edge_bg = s:g.statusline_bg
let s:g.xline_edge_fg = s:g.statusline_fg
let s:g.xline_gradient_bg = pgmnt#color#mix(s:g.xline_base_bg, s:g.xline_edge_bg, 0.50)
let s:g.xline_gradient_fg = s:g.xline_edge_fg

" cterm
let s:c = {}
let s:c.blue = 110
let s:c.green = 150
let s:c.lblue = 109
let s:c.orange = 216
let s:c.purple = 140
let s:c.red = 203

let s:c.normal_bg = 234
let s:c.normal_fg = 252

let s:c.comment_fg = 242
let s:c.linenr_bg = 235
let s:c.linenr_fg = 239
let s:c.pmenu_bg = 236
let s:c.pmenu_fg = 251
let s:c.statusline_bg = 245
let s:c.statusline_fg = 234
let s:c.statuslinenc_bg = 233
let s:c.statuslinenc_fg = 238

let s:c.cursorline_bg = s:c.linenr_bg
let s:c.folded_bg = s:c.linenr_bg
let s:c.folded_fg = 245

let s:c.xline_base_bg = 237
let s:c.xline_base_fg = 243
let s:c.xline_edge_bg = s:c.statusline_bg
let s:c.xline_edge_fg = s:c.statusline_fg
let s:c.xline_gradient_bg = 241
let s:c.xline_gradient_fg = s:c.xline_edge_fg
" }}}


function! s:create_context() abort
  let links = []
  let rules = []

  " Rules {{{
  call extend(rules, pgmnt#hi#group(
        \ ['ColorColumn', 'CursorColumn', 'CursorLine'], {
        \   'cterm': 'NONE',
        \   'ctermbg': s:c.cursorline_bg,
        \   'guibg': s:g.cursorline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Comment', {
        \   'ctermfg': s:c.comment_fg,
        \   'guifg': s:g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Constant', {
        \   'ctermfg': s:c.purple,
        \   'guifg': s:g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Cursor', {
        \   'ctermbg': s:c.normal_fg,
        \   'ctermfg': s:c.normal_bg,
        \   'guibg': s:g.normal_fg,
        \   'guifg': s:g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'CursorLineNr', {
        \   'ctermbg': 237,
        \   'ctermfg': 253,
        \   'guibg': pgmnt#color#adjust_color(s:g.linenr_bg, {
        \     'saturation': +0.10,
        \     'lightness': +0.10,
        \   }),
        \   'guifg': pgmnt#color#adjust_color(s:g.linenr_fg, {
        \     'saturation': +0.10, 
        \     'lightness': +0.50,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Delimiter', {
        \   'ctermfg': s:c.normal_fg,
        \   'guifg': s:g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffAdd', {
        \   'ctermbg': 29,
        \   'ctermfg': 158,
        \   'guibg': pgmnt#color#mix(s:g.green, s:g.normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(s:g.green, s:g.normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffChange', {
        \   'ctermbg': 23,
        \   'ctermfg': 159,
        \   'guibg': pgmnt#color#mix(s:g.lblue, s:g.normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(s:g.lblue, s:g.normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffDelete', {
        \   'ctermbg': 95,
        \   'ctermfg': 224,
        \   'guibg': pgmnt#color#mix(s:g.red, s:g.normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(s:g.red, s:g.normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffText', {
        \   'cterm': 'NONE',
        \   'ctermbg': 30,
        \   'ctermfg': 195,
        \   'gui': 'NONE',
        \   'guibg': pgmnt#color#mix(s:g.lblue, s:g.normal_bg, 0.6),
        \   'guifg': s:g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Directory', {
        \   'ctermfg': s:c.lblue,
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Error', 'ErrorMsg', 'WarningMsg'], {
        \   'ctermbg': s:c.normal_bg,
        \   'ctermfg': s:c.red,
        \   'guibg': s:g.normal_bg,
        \   'guifg': s:g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EndOfBuffer', 'NonText', 'SpecialKey'], {
        \   'ctermbg': s:c.normal_bg,
        \   'ctermfg': 236,
        \   'guibg': s:g.normal_bg,
        \   'guifg': pgmnt#color#adjust_color(s:g.normal_bg, {
        \     'saturation': +0.08,
        \     'lightness': +0.09,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Folded', {
        \   'ctermbg': s:c.folded_bg,
        \   'ctermfg': s:c.folded_fg,
        \   'guibg': s:g.folded_bg,
        \   'guifg': s:g.folded_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'FoldColumn', {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.linenr_fg,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Function', {
        \   'ctermfg': s:c.orange,
        \   'guifg': s:g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Identifier', {
        \   'cterm': 'NONE',
        \   'ctermfg': s:c.lblue,
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Include', {
        \   'ctermfg': s:c.blue,
        \   'guifg': s:g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'LineNr', {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.linenr_fg,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MatchParen', {
        \   'ctermbg': 237,
        \   'ctermfg': 255,
        \   'guibg': pgmnt#color#lighten(s:g.normal_bg, 0.20),
        \   'guifg': pgmnt#color#lighten(s:g.normal_fg, 0.50),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MoreMsg', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Normal', {
        \   'ctermbg': s:c.normal_bg,
        \   'ctermfg': s:c.normal_fg,
        \   'guibg': s:g.normal_bg,
        \   'guifg': s:g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Operator', {
        \   'ctermfg': s:c.blue,
        \   'guifg': s:g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Pmenu', {
        \   'ctermbg': s:c.pmenu_bg,
        \   'ctermfg': s:c.pmenu_fg,
        \   'guibg': s:g.pmenu_bg,
        \   'guifg': s:g.pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSbar', {
        \   'ctermbg': s:c.pmenu_bg,
        \   'guibg': s:g.pmenu_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSel', {
        \   'ctermbg': 240,
        \   'ctermfg': 255,
        \   'guibg': pgmnt#color#hsl(s:hue_base, 0.20, 0.45),
        \   'guifg': pgmnt#color#hsl(s:hue_base, 0.20, 0.95),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuThumb', {
        \   'ctermbg': s:c.pmenu_fg,
        \   'guibg': s:g.pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PreProc', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Question', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Search', {
        \   'ctermbg': s:c.orange,
        \   'ctermfg': s:c.normal_bg,
        \   'guibg': pgmnt#color#hsl(s:hue_orange, 0.65, 0.70),
        \   'guifg': pgmnt#color#hsl(s:hue_orange, 0.50, 0.15),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SignColumn', {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.linenr_fg,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Special', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellBad', {
        \   'guisp': s:g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellCap', {
        \   'guisp': s:g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellLocal', {
        \   'guisp': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellRare', {
        \   'guisp': s:g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Statement', {
        \   'ctermfg': s:c.blue,
        \   'gui': 'NONE',
        \   'guifg': s:g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLine', 'StatusLineTerm'], {
        \   'cterm': 'reverse',
        \   'ctermbg': s:c.statusline_fg,
        \   'ctermfg': s:c.statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': s:g.statusline_fg,
        \   'guifg': s:g.statusline_bg,
        \   'term': 'reverse',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLineNC', 'StatusLineTermNC'], {
        \   'cterm': 'reverse',
        \   'ctermbg': s:c.statuslinenc_fg,
        \   'ctermfg': s:c.statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': s:g.statuslinenc_fg,
        \   'guifg': s:g.statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StorageClass', {
        \     'ctermfg': s:c.blue,
        \     'guifg': s:g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'String', {
        \   'ctermfg': s:c.lblue,
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Structure', {
        \   'ctermfg': s:c.lblue,
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLine', {
        \   'cterm': 'NONE',
        \   'ctermbg': s:c.statusline_bg,
        \   'ctermfg': s:c.statusline_fg,
        \   'gui': 'NONE',
        \   'guibg': s:g.statusline_bg,
        \   'guifg': s:g.statusline_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineFill', {
        \   'cterm': 'reverse',
        \   'ctermbg': s:c.statusline_fg,
        \   'ctermfg': s:c.statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': s:g.statusline_fg,
        \   'guifg': s:g.statusline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineSel', {
        \   'cterm': 'NONE',
        \   'ctermbg': s:c.normal_bg,
        \   'ctermfg': s:c.normal_fg,
        \   'gui': 'NONE',
        \   'guibg': s:g.normal_bg,
        \   'guifg': pgmnt#color#mix(s:g.normal_fg, s:g.normal_bg, 0.75),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Title', {
        \   'ctermfg': s:c.orange,
        \   'gui': 'NONE',
        \   'guifg': s:g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Todo', {
        \   'ctermbg': s:c.normal_bg,
        \   'ctermfg': s:c.green,
        \   'guibg': s:g.normal_bg,
        \   'guifg': pgmnt#color#hsl(s:hue_green, 0.60, 0.75),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Type', {
        \   'ctermfg': s:c.lblue,
        \   'gui': 'NONE',
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Underlined', {
        \   'cterm': 'underline',
        \   'ctermfg': s:c.blue,
        \   'gui': 'underline',
        \   'guifg': s:g.blue,
        \   'term': 'underline',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VertSplit', {
        \   'cterm': 'NONE',
        \   'ctermbg': s:c.statuslinenc_bg,
        \   'ctermfg': s:c.statuslinenc_bg,
        \   'gui': 'NONE',
        \   'guibg': s:g.statuslinenc_bg,
        \   'guifg': s:g.statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Visual', {
        \   'ctermbg': 236,
        \   'guibg': pgmnt#color#adjust_color(s:g.normal_bg, {
        \     'saturation': +0.05,
        \     'lightness': +0.10,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'WildMenu', {
        \   'ctermbg': 255,
        \   'ctermfg': s:c.statusline_fg,
        \   'guibg': pgmnt#color#lighten(s:g.statusline_bg, 0.30),
        \   'guifg': s:g.statusline_fg,
        \ }))
  " }}}

  " Rules for filetypes {{{
  " css
  call add(links, pgmnt#hi#link('cssBraces', 'Delimiter'))
  call add(links, pgmnt#hi#link('cssClassName', 'Special'))
  call add(links, pgmnt#hi#link('cssClassNameDot', 'Normal'))
  call add(links, pgmnt#hi#link('cssPseudoClassId', 'Function'))
  call add(links, pgmnt#hi#link('cssTagName', 'Statement'))

  " diff
  call extend(rules, pgmnt#hi#group(
        \ 'diffAdded', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'diffRemoved', {
        \   'ctermfg': s:c.red,
        \   'guifg': s:g.red,
        \ }))

  " help
  call add(links, pgmnt#hi#link('helpHyperTextJump', 'Constant'))

  " html
  call add(links, pgmnt#hi#link('htmlArg', 'Constant'))
  call add(links, pgmnt#hi#link('htmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('htmlTag', 'Statement'))

  " json
  call add(links, pgmnt#hi#link('jsonQuote', 'Normal'))

  " php
  call add(links, pgmnt#hi#link('phpVarSelector', 'Identifier'))

  " ruby
  call add(links, pgmnt#hi#link('rubyDefine', 'Statement'))
  call add(links, pgmnt#hi#link('rubyInterpolationDelimiter', 'String'))
  call add(links, pgmnt#hi#link('rubySharpBang', 'Comment'))
  call add(links, pgmnt#hi#link('rubyStringDelimiter', 'String'))

  " sass
  call add(links, pgmnt#hi#link('sassClass', 'Special'))

  " sh
  call add(links, pgmnt#hi#link('shFunction', 'Normal'))

  " vim
  call add(links, pgmnt#hi#link('vimContinue', 'Comment'))
  call add(links, pgmnt#hi#link('vimIsCommand', 'Statement'))

  " xml
  call add(links, pgmnt#hi#link('xmlAttribPunct', 'Statement'))
  call add(links, pgmnt#hi#link('xmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlNamespace', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTagName', 'Statement'))

  " yaml
  call add(links, pgmnt#hi#link('yamlKeyValueDelimiter', 'Delimiter'))
  " }}}

  " Rules for plugins {{{
  " [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  call add(links, pgmnt#hi#link('CtrlPPrtCursor', 'Cursor'))
  call add(links, pgmnt#hi#link('CtrlPMatch', 'Title'))
  call extend(rules, pgmnt#hi#group(
        \ 'CtrlPMode1', {
        \   'ctermbg': s:c.xline_gradient_bg,
        \   'ctermfg': s:c.xline_gradient_fg,
        \   'guibg': s:g.xline_gradient_bg,
        \   'guifg': s:g.xline_gradient_fg,
        \ }))
  call add(links, pgmnt#hi#link('CtrlPMode2', 'StatusLine'))

  " [Denite](https://github.com/Shougo/denite.nvim)
  call add(links, pgmnt#hi#link('deniteMatched', 'Normal'))
  call add(links, pgmnt#hi#link('deniteMatchedChar', 'Function'))

  " [EasyMotion](https://github.com/easymotion/vim-easymotion)
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionShade', {
        \   'ctermfg': 239,
        \   'guifg': pgmnt#color#hsl(s:hue_base, 0.20, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionTarget', {
        \   'ctermfg': s:c.green,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EasyMotionTarget2First', 'EasyMotionTarget2Second'], {
        \   'ctermfg': s:c.orange,
        \   'guifg': s:g.orange,
        \ }))

  " [vim-flow](https://github.com/flowtype/vim-flow)
  call add(links, pgmnt#hi#link('jsFlowType', 'Statement'))
  call add(links, pgmnt#hi#link('jsFlowMaybe', 'Normal'))
  call add(links, pgmnt#hi#link('jsFlowObject', 'Normal'))

  " [vim-graphql](https://github.com/jparise/vim-graphql)
  call add(links, pgmnt#hi#link('graphqlIdentifier', 'Normal'))
  call add(links, pgmnt#hi#link('graphqlOperator', 'Normal'))
  call add(links, pgmnt#hi#link('graphqlStructure', 'Statement'))

  " [Git Gutter](https://github.com/airblade/vim-gitgutter)
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterAdd', {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.green,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['GitGutterChange', 'GitGutterChangeDelete'], {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.lblue,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterDelete', {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.red,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.red,
        \ }))

  " [vim-javascript](https://github.com/pangloss/vim-javascript)
  call add(links, pgmnt#hi#link('jsArrowFunction', 'Operator'))
  call add(links, pgmnt#hi#link('jsClassMethodType', 'Statement'))
  call add(links, pgmnt#hi#link('jsExport', 'Statement'))
  call add(links, pgmnt#hi#link('jsFuncName', 'Normal'))
  call add(links, pgmnt#hi#link('jsFunction', 'Function'))
  call add(links, pgmnt#hi#link('jsGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleKeywords', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleOperators', 'Statement'))
  call add(links, pgmnt#hi#link('jsObjectKey', 'Identifier'))
  call add(links, pgmnt#hi#link('jsSuper', 'Statement'))

  " [vim-markdown](https://github.com/tpope/vim-markdown)
  call add(links, pgmnt#hi#link('markdownBold', 'Special'))
  call add(links, pgmnt#hi#link('markdownCode', 'String'))
  call add(links, pgmnt#hi#link('markdownCodeDelimiter', 'String'))
  call add(links, pgmnt#hi#link('markdownHeadingDelimiter', 'Comment'))
  call add(links, pgmnt#hi#link('markdownRule', 'Comment'))

  " [vim-plug](https://github.com/junegunn/vim-plug)
  call add(links, pgmnt#hi#link('plug1', 'Normal'))
  call add(links, pgmnt#hi#link('plug2', 'Structure'))
  call add(links, pgmnt#hi#link('plugDash', 'Comment'))
  call add(links, pgmnt#hi#link('plugMessage', 'Special'))

  " [SVSS](https://github.com/cocopon/svss.vim)
  call add(links, pgmnt#hi#link('svssBraces', 'Delimiter'))
  
  " [Syntastic](http://github.com/vim-syntastic/syntastic)
  call extend(rules, pgmnt#hi#group(
        \ ['SyntasticErrorSign', 'SyntasticStyleErrorSign'], {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.red,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['SyntasticStyleWarningSign', 'SyntasticWarningSign'], {
        \   'ctermbg': s:c.linenr_bg,
        \   'ctermfg': s:c.orange,
        \   'guibg': s:g.linenr_bg,
        \   'guifg': s:g.orange,
        \ }))

  " [vim-swift](https://github.com/toyamarinyon/vim-swift)
  call add(links, pgmnt#hi#link('swiftIdentifier', 'Normal'))

  " [typescript-vim](https://github.com/leafgarland/typescript-vim)
  call add(links, pgmnt#hi#link('typescriptAjaxMethods', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptBraces', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptEndColons', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptHtmlElemProperties', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptIdentifier', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptMessage', 'Normal'))
  call add(links, pgmnt#hi#link('typescriptNull', 'Constant'))
  call add(links, pgmnt#hi#link('typescriptParens', 'Normal'))

  " [zenspace.vim](https://github.com/thinca/vim-zenspace)
  call extend(rules, pgmnt#hi#group(
        \ 'ZenSpace', {
        \   'ctermbg': s:c.red,
        \   'guibg': s:g.red,
        \ }))
  " }}}

  " Palettes for statusline plugins {{{
  call extend(rules, pgmnt#hi#group(
        \ 'icebergALAccentRed', {
        \   'ctermfg': s:c.red,
        \   'guifg': s:g.red,
        \ }))
  " }}}

  let term_colors = [
        \   s:g.normal_bg,
        \   s:g.red,
        \   s:g.green,
        \   s:g.orange,
        \   s:g.blue,
        \   s:g.purple,
        \   s:g.lblue,
        \   s:g.normal_fg,
        \   s:g.comment_fg,
        \   pgmnt#color#adjust_color(s:g.red,       {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.green,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.orange,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.blue,      {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.purple,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.lblue,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(s:g.normal_fg, {'saturation': +0.05, 'lightness': +0.05}),
        \ ]
  let neovim_term_defs = map(
        \ term_colors,
        \ '"let g:terminal_color_" . v:key . " = ''" . v:val . "''"')
  
  return {
        \   'links': links,
        \   'modified': strftime('%Y-%m-%d %H:%M%z'),
        \   'neovim_term_defs': neovim_term_defs,
        \   'rules': rules,
        \ }
endfunction


call pgmnt#compile(s:create_context(), {
      \   'output': '../colors/iceberg.vim',
      \   'template': './template.vim',
      \ })


function! s:create_xline_context() abort
  let col_base = string([
        \   s:g.xline_base_fg,
        \   s:g.xline_base_bg,
        \   s:c.xline_base_fg,
        \   s:c.xline_base_bg,
        \ ])
  let col_edge = string([
        \   s:g.xline_edge_fg,
        \   s:g.xline_edge_bg,
        \   s:c.xline_edge_fg,
        \   s:c.xline_edge_bg,
        \ ])
  return {
        \   'col_base': col_base,
        \   'col_tabfill': col_base,
        \   'col_edge': col_edge,
        \   'col_normal': col_edge,
        \   'col_tabsel': col_edge,
        \   'col_error': string([
        \     s:g.normal_bg,
        \     s:g.red,
        \     s:c.normal_bg,
        \     s:c.red,
        \   ]),
        \   'col_gradient': string([
        \     s:g.xline_gradient_fg,
        \     s:g.xline_gradient_bg,
        \     s:c.xline_gradient_fg,
        \     s:c.xline_gradient_bg,
        \   ]),
        \   'col_nc': string([
        \     s:g.statuslinenc_fg,
        \     s:g.statuslinenc_bg,
        \     s:c.statuslinenc_fg,
        \     s:c.statuslinenc_bg,
        \   ]),
        \   'col_warning': string([
        \     s:g.normal_bg,
        \     s:g.orange,
        \     s:c.normal_bg,
        \     s:c.orange,
        \   ]),
        \   'col_insert': string([
        \     s:g.normal_bg,
        \     s:g.blue,
        \     s:c.normal_bg,
        \     s:c.blue,
        \   ]),
        \   'col_replace': string([
        \     s:g.normal_bg,
        \     s:g.orange,
        \     s:c.normal_bg,
        \     s:c.orange,
        \   ]),
        \   'col_visual': string([
        \     s:g.normal_bg,
        \     s:g.green,
        \     s:c.normal_bg,
        \     s:c.green,
        \   ]),
        \   'col_red': string([
        \     s:g.red,
        \     s:g.normal_bg,
        \     s:c.red,
        \     s:c.normal_bg,
        \   ]),
        \ }
endfunction


call pgmnt#compile(s:create_xline_context(), {
      \   'output': '../autoload/airline/themes/iceberg.vim',
      \   'template': './template-airline.vim',
      \ })
call pgmnt#compile(s:create_xline_context(), {
      \   'output': '../autoload/lightline/colorscheme/iceberg.vim',
      \   'template': './template-lightline.vim',
      \ })
