" NOTE:
" This script is for Pgmnt, template engine for creating Vim color scheme.
" See the official site for more information:
" https://github.com/cocopon/pgmnt.vim

function! s:create_context() abort
  " Definitions {{{
  let hue_base = 230

  let hue_red = 0
  let hue_orange = 25
  let hue_green = 70
  let hue_lblue = 190
  let hue_blue = 215
  let hue_purple = 255

  " gui
  let g_blue   = pgmnt#color#hsl(hue_blue,   0.37, 0.65)
  let g_green  = pgmnt#color#hsl(hue_green,  0.32, 0.63)
  let g_lblue  = pgmnt#color#hsl(hue_lblue,  0.32, 0.65)
  let g_orange = pgmnt#color#hsl(hue_orange, 0.65, 0.68)
  let g_purple = pgmnt#color#hsl(hue_purple, 0.32, 0.68)
  let g_red    = pgmnt#color#hsl(hue_red,    0.65, 0.68)

  let normal_bg = pgmnt#color#hsl(hue_base, 0.20, 0.11)
  let normal_fg = pgmnt#color#hsl(hue_base, 0.10, 0.80)

  let linenr_bg = pgmnt#color#adjust_color(normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': +0.05,
        \ })
  let linenr_fg = pgmnt#color#lighten(linenr_bg, 0.20)
  let pmenu_bg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  let pmenu_fg = normal_fg
  let statusline_bg = pgmnt#color#hsl(hue_base, 0.09, 0.55)
  let statusline_fg = pgmnt#color#hsl(hue_base, 0.09, 0.10)
  let statuslinenc_bg = pgmnt#color#darken(normal_bg, 0.03)
  let statuslinenc_fg = pgmnt#color#lighten(normal_bg, 0.20)

  let cursorline_bg = linenr_bg
  let folded_bg = linenr_bg
  let folded_fg = pgmnt#color#adjust_color(folded_bg, {
        \   'saturation': -0.05,
        \   'lightness': +0.35,
        \ })

  let lightline_base_bg = pgmnt#color#lighten(normal_bg, 0.15)
  let lightline_base_fg = pgmnt#color#adjust_color(normal_bg, {
        \   'saturation': -0.10,
        \   'lightness': +0.35,
        \ })
  let lightline_edge_bg = statusline_bg
  let lightline_edge_fg = statusline_fg
  let lightline_gradient_bg = pgmnt#color#mix(lightline_base_bg, lightline_edge_bg, 0.50)
  let lightline_gradient_fg = lightline_edge_fg

  " cterm
  let c_blue = 110
  let c_green = 150
  let c_lblue = 109
  let c_orange = 216
  let c_purple = 140
  let c_red = 203

  let c_normal_bg = 234
  let c_normal_fg = 252
  let c_linenr_bg = 235
  let c_linenr_fg = 239
  let c_pmenu_bg = 236
  let c_pmenu_fg = 251
  let c_statusline_bg = 245
  let c_statusline_fg = 234
  let c_statuslinenc_bg = 233
  let c_statuslinenc_fg = 238

  let c_cursorline_bg = c_linenr_bg
  let c_folded_bg = c_linenr_bg
  let c_folded_fg = 245

  let c_lightline_base_bg = 237
  let c_lightline_base_fg = 243
  let c_lightline_edge_bg = c_statusline_bg
  let c_lightline_edge_fg = c_statusline_fg
  let c_lightline_gradient_bg = 241
  let c_lightline_gradient_fg = c_lightline_edge_fg
  " }}}

  let links = []
  let rules = []

  " Rules {{{
  call extend(rules, pgmnt#hi#group(
        \ ['ColorColumn', 'CursorColumn', 'CursorLine'], {
        \   'cterm': 'NONE',
        \   'ctermbg': c_cursorline_bg,
        \   'guibg': cursorline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Comment', {
        \   'ctermfg': 242,
        \   'guifg': pgmnt#color#hsl(hue_base, 0.12, 0.48),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Constant', {
        \   'ctermfg': c_purple,
        \   'guifg': g_purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Cursor', {
        \   'ctermbg': c_normal_fg,
        \   'ctermfg': c_normal_bg,
        \   'guibg': normal_fg,
        \   'guifg': normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'CursorLineNr', {
        \   'ctermbg': 237,
        \   'ctermfg': 253,
        \   'guibg': pgmnt#color#adjust_color(linenr_bg, {
        \     'saturation': +0.10,
        \     'lightness': +0.10,
        \   }),
        \   'guifg': pgmnt#color#adjust_color(linenr_fg, {
        \     'saturation': +0.10, 
        \     'lightness': +0.50,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Delimiter', {
        \   'ctermfg': c_normal_fg,
        \   'guifg': normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffAdd', {
        \   'ctermbg': 29,
        \   'ctermfg': 158,
        \   'guibg': pgmnt#color#mix(g_green, normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(g_green, normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffChange', {
        \   'ctermbg': 23,
        \   'ctermfg': 159,
        \   'guibg': pgmnt#color#mix(g_lblue, normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(g_lblue, normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffDelete', {
        \   'ctermbg': 95,
        \   'ctermfg': 224,
        \   'guibg': pgmnt#color#mix(g_red, normal_bg, 0.30),
        \   'guifg': pgmnt#color#mix(g_red, normal_fg, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffText', {
        \   'cterm': 'NONE',
        \   'ctermbg': 30,
        \   'ctermfg': 195,
        \   'gui': 'NONE',
        \   'guibg': pgmnt#color#mix(g_lblue, normal_bg, 0.6),
        \   'guifg': normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Directory', {
        \   'ctermfg': c_lblue,
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Error', 'ErrorMsg', 'WarningMsg'], {
        \   'ctermbg': c_normal_bg,
        \   'ctermfg': c_red,
        \   'guibg': normal_bg,
        \   'guifg': g_red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EndOfBuffer', 'NonText', 'SpecialKey'], {
        \   'ctermbg': c_normal_bg,
        \   'ctermfg': 236,
        \   'guibg': normal_bg,
        \   'guifg': pgmnt#color#adjust_color(normal_bg, {
        \     'saturation': +0.08,
        \     'lightness': +0.09,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Folded', {
        \   'ctermbg': c_folded_bg,
        \   'ctermfg': c_folded_fg,
        \   'guibg': folded_bg,
        \   'guifg': folded_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'FoldColumn', {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_linenr_fg,
        \   'guibg': linenr_bg,
        \   'guifg': linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Function', {
        \   'ctermfg': c_orange,
        \   'guifg': g_orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Identifier', {
        \   'cterm': 'NONE',
        \   'ctermfg': c_lblue,
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Include', {
        \   'ctermfg': c_blue,
        \   'guifg': g_blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'LineNr', {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_linenr_fg,
        \   'guibg': linenr_bg,
        \   'guifg': linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MatchParen', {
        \   'ctermbg': 237,
        \   'ctermfg': 255,
        \   'guibg': pgmnt#color#lighten(normal_bg, 0.20),
        \   'guifg': pgmnt#color#lighten(normal_fg, 0.50),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MoreMsg', {
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Normal', {
        \   'ctermbg': c_normal_bg,
        \   'ctermfg': c_normal_fg,
        \   'guibg': normal_bg,
        \   'guifg': normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Operator', {
        \   'ctermfg': c_blue,
        \   'guifg': g_blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Pmenu', {
        \   'ctermbg': c_pmenu_bg,
        \   'ctermfg': c_pmenu_fg,
        \   'guibg': pmenu_bg,
        \   'guifg': pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSbar', {
        \   'ctermbg': c_pmenu_bg,
        \   'guibg': pmenu_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSel', {
        \   'ctermbg': 240,
        \   'ctermfg': 255,
        \   'guibg': pgmnt#color#hsl(hue_base, 0.20, 0.45),
        \   'guifg': pgmnt#color#hsl(hue_base, 0.20, 0.95),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuThumb', {
        \   'ctermbg': c_pmenu_fg,
        \   'guibg': pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PreProc', {
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Question', {
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Search', {
        \   'ctermbg': c_orange,
        \   'ctermfg': c_normal_bg,
        \   'guibg': pgmnt#color#hsl(hue_orange, 0.65, 0.70),
        \   'guifg': pgmnt#color#hsl(hue_orange, 0.50, 0.15),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SignColumn', {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_linenr_fg,
        \   'guibg': linenr_bg,
        \   'guifg': linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Special', {
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellBad', {
        \   'guisp': g_red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellCap', {
        \   'guisp': g_blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellLocal', {
        \   'guisp': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellRare', {
        \   'guisp': g_purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Statement', {
        \   'ctermfg': c_blue,
        \   'gui': 'NONE',
        \   'guifg': g_blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLine', 'StatusLineTerm'], {
        \   'cterm': 'reverse',
        \   'ctermbg': c_statusline_fg,
        \   'ctermfg': c_statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': statusline_fg,
        \   'guifg': statusline_bg,
        \   'term': 'reverse',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StatusLineNC', {
        \   'cterm': 'reverse',
        \   'ctermbg': c_statuslinenc_fg,
        \   'ctermfg': c_statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': statuslinenc_fg,
        \   'guifg': statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StorageClass', {
        \     'ctermfg': c_blue,
        \     'guifg': g_blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'String', {
        \   'ctermfg': c_lblue,
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Structure', {
        \   'ctermfg': c_lblue,
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLine', {
        \   'cterm': 'NONE',
        \   'ctermbg': c_statusline_bg,
        \   'ctermfg': c_statusline_fg,
        \   'gui': 'NONE',
        \   'guibg': statusline_bg,
        \   'guifg': statusline_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineFill', {
        \   'cterm': 'reverse',
        \   'ctermbg': c_statusline_fg,
        \   'ctermfg': c_statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': statusline_fg,
        \   'guifg': statusline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineSel', {
        \   'cterm': 'NONE',
        \   'ctermbg': c_normal_bg,
        \   'ctermfg': c_normal_fg,
        \   'gui': 'NONE',
        \   'guibg': normal_bg,
        \   'guifg': pgmnt#color#mix(normal_fg, normal_bg, 0.75),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Title', {
        \   'ctermfg': c_orange,
        \   'gui': 'NONE',
        \   'guifg': g_orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Todo', {
        \   'ctermbg': c_normal_bg,
        \   'ctermfg': c_green,
        \   'guibg': normal_bg,
        \   'guifg': pgmnt#color#hsl(hue_green, 0.60, 0.75),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Type', {
        \   'ctermfg': c_lblue,
        \   'gui': 'NONE',
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Underlined', {
        \   'cterm': 'underline',
        \   'ctermfg': c_blue,
        \   'gui': 'underline',
        \   'guifg': g_blue,
        \   'term': 'underline',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VertSplit', {
        \   'ctermbg': c_statuslinenc_bg,
        \   'ctermfg': c_statuslinenc_bg,
        \   'guibg': statuslinenc_bg,
        \   'guifg': statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Visual', {
        \   'ctermbg': 236,
        \   'guibg': pgmnt#color#adjust_color(normal_bg, {
        \     'saturation': +0.05,
        \     'lightness': +0.10,
        \   }),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'WildMenu', {
        \   'ctermbg': 255,
        \   'ctermfg': c_statusline_fg,
        \   'guibg': pgmnt#color#lighten(statusline_bg, 0.30),
        \   'guifg': statusline_fg,
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
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'diffRemoved', {
        \   'ctermfg': c_red,
        \   'guifg': g_red,
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
  call add(links, pgmnt#hi#link('CtrlPMode1', 'icebergLLGradient'))
  call add(links, pgmnt#hi#link('CtrlPMode2', 'StatusLine'))

  " [Denite](https://github.com/Shougo/denite.nvim)
  call add(links, pgmnt#hi#link('deniteMatched', 'Normal'))
  call add(links, pgmnt#hi#link('deniteMatchedChar', 'Function'))

  " [EasyMotion](https://github.com/easymotion/vim-easymotion)
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionShade', {
        \   'ctermfg': 239,
        \   'guifg': pgmnt#color#hsl(hue_base, 0.20, 0.30),
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionTarget', {
        \   'ctermfg': c_green,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EasyMotionTarget2First', 'EasyMotionTarget2Second'], {
        \   'ctermfg': c_orange,
        \   'guifg': g_orange,
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
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_green,
        \   'guibg': linenr_bg,
        \   'guifg': g_green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['GitGutterChange', 'GitGutterChangeDelete'], {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_lblue,
        \   'guibg': linenr_bg,
        \   'guifg': g_lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterDelete', {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_red,
        \   'guibg': linenr_bg,
        \   'guifg': g_red,
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
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_red,
        \   'guibg': linenr_bg,
        \   'guifg': g_red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['SyntasticStyleWarningSign', 'SyntasticWarningSign'], {
        \   'ctermbg': c_linenr_bg,
        \   'ctermfg': c_orange,
        \   'guibg': linenr_bg,
        \   'guifg': g_orange,
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
        \   'ctermbg': c_red,
        \   'guibg': g_red,
        \ }))
  " }}}

  " Palettes for statusline plugins {{{
  call extend(rules, pgmnt#hi#group(
        \ ['icebergLLBase', 'icebergLLTabFill'], {
        \   'ctermbg': c_lightline_base_bg,
        \   'ctermfg': c_lightline_base_fg,
        \   'guibg': lightline_base_bg,
        \   'guifg': lightline_base_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergLLGradient', {
        \   'ctermbg': c_lightline_gradient_bg,
        \   'ctermfg': c_lightline_gradient_fg,
        \   'guibg': lightline_gradient_bg,
        \   'guifg': lightline_gradient_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['icebergLLEdge', 'icebergLLNormal', 'icebergLLTabSel'], {
        \   'ctermbg': c_lightline_edge_bg,
        \   'ctermfg': c_lightline_edge_fg,
        \   'guibg': lightline_edge_bg,
        \   'guifg': lightline_edge_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergLLNC', {
        \   'ctermbg': c_statuslinenc_bg,
        \   'ctermfg': c_statuslinenc_fg,
        \   'guibg': statuslinenc_bg,
        \   'guifg': statuslinenc_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergLLError', {
        \   'ctermbg': c_red,
        \   'ctermfg': c_normal_bg,
        \   'guibg': g_red,
        \   'guifg': normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergLLInsert', {
        \   'ctermbg': c_blue,
        \   'ctermfg': c_normal_bg,
        \   'guibg': g_blue,
        \   'guifg': normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['icebergLLReplace', 'icebergLLWarning'], {
        \   'ctermbg': c_orange,
        \   'ctermfg': c_normal_bg,
        \   'guibg': g_orange,
        \   'guifg': normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergLLVisual', {
        \   'ctermbg': c_green,
        \   'ctermfg': c_normal_bg,
        \   'guibg': g_green,
        \   'guifg': normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'icebergALAccentRed', {
        \   'ctermfg': c_red,
        \   'guifg': g_red,
        \ }))
  " }}}
  
  return {
        \   'links': links,
        \   'modified': strftime('%Y-%m-%d %H:%M%z'),
        \   'rules': rules,
        \ }
endfunction

call pgmnt#compile(s:create_context(), {
      \   'output': '../colors/iceberg.vim',
      \   'template': './template.vim',
      \ })
