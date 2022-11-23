" NOTE:
" This script is for Pgmnt, template engine for creating Vim color scheme.
" See the official site for more information:
" https://github.com/cocopon/pgmnt.vim

function! s:create_colors(palette) abort
  let p = a:palette
  let c = p.cterm
  let g = p.gui

  let rules = []

  " Rules {{{
  call extend(rules, pgmnt#hi#group(
        \ 'Normal', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.normal_bg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['ColorColumn', 'CursorColumn', 'CursorLine'], {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorline_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.cursorline_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Comment', {
        \   'ctermfg': c.comment_fg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Conceal', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.comment_fg,
        \   'guibg': g.normal_bg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Constant', {
        \   'ctermfg': c.purple,
        \   'guifg': g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Cursor', {
        \   'ctermbg': c.normal_fg,
        \   'ctermfg': c.normal_bg,
        \   'guibg': g.normal_fg,
        \   'guifg': g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'CursorLineNr', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorlinenr_bg,
        \   'ctermfg': c.cursorlinenr_fg,
        \   'guibg': g.cursorlinenr_bg,
        \   'guifg': g.cursorlinenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Delimiter', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffAdd', {
        \   'ctermbg': c.green_tint_bg,
        \   'ctermfg': c.green_tint_fg,
        \   'guibg': g.green_tint_bg,
        \   'guifg': g.green_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffChange', {
        \   'ctermbg': c.lblue_tint_bg,
        \   'ctermfg': c.lblue_tint_fg,
        \   'guibg': g.lblue_tint_bg,
        \   'guifg': g.lblue_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffDelete', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.red_tint_bg,
        \   'ctermfg': c.red_tint_fg,
        \   'gui': 'NONE',
        \   'guibg': g.red_tint_bg,
        \   'guifg': g.red_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffText', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.difftext_bg,
        \   'ctermfg': c.difftext_fg,
        \   'gui': 'NONE',
        \   'guibg': g.difftext_bg,
        \   'guifg': g.difftext_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Directory', {
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Error', 'ErrorMsg', 'WarningMsg'], {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.normal_bg,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EndOfBuffer', 'NonText', 'Whitespace'], {
        \   'ctermfg': c.whitespace_fg,
        \   'guifg': g.whitespace_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Folded', {
        \   'ctermbg': c.folded_bg,
        \   'ctermfg': c.folded_fg,
        \   'guibg': g.folded_bg,
        \   'guifg': g.folded_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'FoldColumn', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Function', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Identifier', {
        \   'cterm': 'NONE',
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Ignore', {
        \   'ctermbg': 'NONE',
        \   'ctermfg': 'NONE',
        \   'guibg': 'NONE',
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Include', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'IncSearch', {
        \   'cterm': 'reverse',
        \   'ctermfg': 'NONE',
        \   'gui': 'reverse',
        \   'guifg': 'NONE',
        \   'term': 'reverse',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'LineNr', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MatchParen', {
        \   'ctermbg': c.matchparen_bg,
        \   'ctermfg': c.matchparen_fg,
        \   'guibg': g.matchparen_bg,
        \   'guifg': g.matchparen_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ModeMsg', {
        \   'ctermfg': c.comment_fg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MoreMsg', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Operator', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Pmenu', {
        \   'ctermbg': c.pmenu_bg,
        \   'ctermfg': c.pmenu_fg,
        \   'guibg': g.pmenu_bg,
        \   'guifg': g.pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSbar', {
        \   'ctermbg': c.pmenu_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.pmenu_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSel', {
        \   'ctermbg': c.pmenusel_bg,
        \   'ctermfg': c.pmenusel_fg,
        \   'guibg': g.pmenusel_bg,
        \   'guifg': g.pmenusel_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuThumb', {
        \   'ctermbg': c.pmenu_fg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.pmenu_fg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PreProc', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Question', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'QuickFixLine', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.visual_bg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Search', {
        \   'ctermbg': c.search_bg,
        \   'ctermfg': c.search_fg,
        \   'guibg': g.search_bg,
        \   'guifg': g.search_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SignColumn', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Special', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpecialKey', {
        \   'ctermfg': c.specialkey_fg,
        \   'guifg': g.specialkey_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellBad', {
        \   'ctermbg': c.red_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': 'NONE',
        \   'guisp': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellCap', {
        \   'ctermbg': c.blue_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': 'NONE',
        \   'guisp': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellLocal', {
        \   'ctermbg': c.lblue_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': 'NONE',
        \   'guisp': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellRare', {
        \   'ctermbg': c.purple_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guifg': 'NONE',
        \   'guisp': g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Statement', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLine', 'StatusLineTerm'], {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statusline_fg,
        \   'ctermfg': c.statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statusline_fg,
        \   'guifg': g.statusline_bg,
        \   'term': 'reverse',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLineNC', 'StatusLineTermNC'], {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statuslinenc_fg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statuslinenc_fg,
        \   'guifg': g.statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StorageClass', {
        \     'ctermfg': c.blue,
        \     'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'String', {
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Structure', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLine', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.statuslinenc_bg,
        \   'ctermfg': c.statuslinenc_fg,
        \   'gui': 'NONE',
        \   'guibg': g.statuslinenc_bg,
        \   'guifg': g.statuslinenc_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineFill', {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statuslinenc_fg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statuslinenc_fg,
        \   'guifg': g.statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineSel', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'NONE',
        \   'guibg': g.tablinesel_bg,
        \   'guifg': g.tablinesel_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TermCursorNC', {
        \   'ctermbg': c.comment_fg,
        \   'ctermfg': c.normal_bg,
        \   'guibg': g.comment_fg,
        \   'guifg': g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Title', {
        \   'ctermfg': c.orange,
        \   'gui': 'NONE',
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Todo', {
        \   'ctermbg': c.todo_bg,
        \   'ctermfg': c.todo_fg,
        \   'guibg': g.todo_bg,
        \   'guifg': g.todo_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Type', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Underlined', {
        \   'cterm': 'underline',
        \   'ctermfg': c.blue,
        \   'gui': 'underline',
        \   'guifg': g.blue,
        \   'term': 'underline',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VertSplit', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.statuslinenc_bg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'NONE',
        \   'guibg': g.statuslinenc_bg,
        \   'guifg': g.statuslinenc_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Visual', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.visual_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VisualNOS', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': 'NONE',
        \   'guibg': g.visual_bg,
        \   'guifg': 'NONE',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'WildMenu', {
        \   'ctermbg': c.wildmenu_bg,
        \   'ctermfg': c.wildmenu_fg,
        \   'guibg': g.wildmenu_bg,
        \   'guifg': g.wildmenu_fg,
        \ }))
  " }}}

  " Custom rules {{{
  call extend(rules, pgmnt#hi#group(
        \ 'icebergNormalFg', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  " }}}

  " Rules for filetypes {{{
  " diff
  call extend(rules, pgmnt#hi#group(
        \ 'diffAdded', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'diffRemoved', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))
  " }}}

  " Rules for plugins {{{
  " [ALE](https://github.com/w0rp/ale)
  call extend(rules, pgmnt#hi#group(
        \ 'ALEErrorSign', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEWarningSign', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.orange,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEVirtualTextError', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEVirtualTextWarning', {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))

  " [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  call extend(rules, pgmnt#hi#group(
        \ 'CtrlPMode1', {
        \   'ctermbg': c.xline_gradient_bg,
        \   'ctermfg': c.xline_gradient_fg,
        \   'guibg': g.xline_gradient_bg,
        \   'guifg': g.xline_gradient_fg,
        \ }))

  " [EasyMotion](https://github.com/easymotion/vim-easymotion)
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionShade', {
        \   'ctermfg': c.easymotion_shade_fg,
        \   'guifg': g.easymotion_shade_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'EasyMotionTarget', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EasyMotionTarget2First', 'EasyMotionTarget2Second'], {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))

  " [Git Gutter](https://github.com/airblade/vim-gitgutter)
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterAdd', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.green,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['GitGutterChange', 'GitGutterChangeDelete'], {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.lblue,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterDelete', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.red,
        \ }))

  " [git-messenger.vim](https://github.com/rhysd/git-messenger.vim)
  call extend(rules, pgmnt#hi#group(
        \ 'gitmessengerEndOfBuffer', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'gitmessengerPopupNormal', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.normal_fg,
        \ }))

  " [Sneak](https://github.com/justinmk/vim-sneak/)
  call extend(rules, pgmnt#hi#group(
        \ 'Sneak', {
        \   'ctermbg': c.purple,
        \   'ctermfg': c.normal_bg,
        \   'guibg': g.purple,
        \   'guifg': g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SneakScope', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': c.comment_fg,
        \   'guibg': g.visual_bg,
        \   'guifg': g.comment_fg,
        \ }))
  
  " [Syntastic](http://github.com/vim-syntastic/syntastic)
  call extend(rules, pgmnt#hi#group(
        \ ['SyntasticErrorSign', 'SyntasticStyleErrorSign'], {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['SyntasticStyleWarningSign', 'SyntasticWarningSign'], {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.orange,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.orange,
        \ }))

  " [zenspace.vim](https://github.com/thinca/vim-zenspace)
  call extend(rules, pgmnt#hi#group(
        \ 'ZenSpace', {
        \   'ctermbg': c.red,
        \   'guibg': g.red,
        \ }))

  " [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  call extend(rules, pgmnt#hi#group(
        \ ['TSFunction', 'TSFunctionBuiltin', 'TSFunctionMacro'], {
        \   'ctermfg': c.pale,
        \   'guifg': g.pale,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['TSMethod'], {
        \   'ctermfg': c.pale,
        \   'guifg': g.pale,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['TSURI'], {
        \   'cterm': 'underline',
        \   'ctermfg': c.lblue,
        \   'gui': 'underline',
        \   'guifg': g.lblue,
        \   'term': 'underline',
        \ }))
  " }}}

  " [Neovim built-in diagnostics](https://neovim.io/doc/user/diagnostic.html) {{{
  for [group, color] in items({
        \   'Error': 'red',
        \   'Hint': 'comment_fg',
        \   'Info': 'lblue',
        \   'Warn': 'orange',
        \ })
    call extend(rules, pgmnt#hi#group(
          \ 'DiagnosticUnderline' . group, {
          \   'cterm': 'underline',
          \   'ctermfg': c[color],
          \   'gui': 'underline',
          \   'guisp': g[color],
          \   'term': 'underline',
          \ }))
    call extend(rules, pgmnt#hi#group(
          \ 'Diagnostic' . group, {
          \   'ctermfg': c[color],
          \   'guifg': g[color],
          \ }))
    call extend(rules, pgmnt#hi#group(
          \ 'DiagnosticSign' . group, {
          \   'ctermbg': c.linenr_bg,
          \   'ctermfg': c[color],
          \   'guibg': g.linenr_bg,
          \   'guifg': g[color],
          \ }))
  endfor
  " Info color is hard to read within floating window, so use normal text
  " color instead.
  call extend(rules, pgmnt#hi#group(
        \ 'DiagnosticFloatingHint', {
        \   'ctermbg': c.pmenu_bg,
        \   'ctermfg': c.pmenu_fg,
        \   'guibg': g.pmenu_bg,
        \   'guifg': g.pmenu_fg,
        \ }))
  " }}}

  " Palettes for statusline plugins {{{
  call extend(rules, pgmnt#hi#group(
        \ 'icebergALAccentRed', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))
  " }}}

  let quoted_term_colors = map(
        \ copy(g.term_colors),
        \ '"''" . v:val . "''"')

  let neovim_term_defs = map(
        \ copy(quoted_term_colors),
        \ '"let g:terminal_color_" . v:key . " = " . v:val')
  let vim_term_defs = printf(
        \ 'let g:terminal_ansi_colors = [%s]',
        \ join(quoted_term_colors, ', '),
        \ )
  
  return {
        \   'neovim_term_defs': neovim_term_defs,
        \   'rules': rules,
        \   'vim_term_defs': vim_term_defs,
        \ }
endfunction

function! s:create_links() abort
  let links = []

  call add(links, pgmnt#hi#link('TermCursor', 'Cursor'))
  call add(links, pgmnt#hi#link('ToolbarButton', 'TabLineSel'))
  call add(links, pgmnt#hi#link('ToolbarLine', 'TabLineFill'))

  " Rules for filetypes {{{
  " css
  call add(links, pgmnt#hi#link('cssBraces', 'Delimiter'))
  call add(links, pgmnt#hi#link('cssClassName', 'Special'))
  call add(links, pgmnt#hi#link('cssClassNameDot', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('cssPseudoClassId', 'Special'))
  call add(links, pgmnt#hi#link('cssTagName', 'Statement'))

  " help
  call add(links, pgmnt#hi#link('helpHyperTextJump', 'Constant'))

  " html
  call add(links, pgmnt#hi#link('htmlArg', 'Constant'))
  call add(links, pgmnt#hi#link('htmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('htmlTag', 'Statement'))

  " json
  call add(links, pgmnt#hi#link('jsonQuote', 'icebergNormalFg'))

  " php
  call add(links, pgmnt#hi#link('phpVarSelector', 'Identifier'))

  " python
  call add(links, pgmnt#hi#link('pythonFunction', 'Title'))

  " ruby
  call add(links, pgmnt#hi#link('rubyDefine', 'Statement'))
  call add(links, pgmnt#hi#link('rubyFunction', 'Title'))
  call add(links, pgmnt#hi#link('rubyInterpolationDelimiter', 'String'))
  call add(links, pgmnt#hi#link('rubySharpBang', 'Comment'))
  call add(links, pgmnt#hi#link('rubyStringDelimiter', 'String'))

  " rust
  call add(links, pgmnt#hi#link('rustFuncCall', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('rustFuncName', 'Title'))
  call add(links, pgmnt#hi#link('rustType', 'Constant'))

  " sass
  call add(links, pgmnt#hi#link('sassClass', 'Special'))

  " sh
  call add(links, pgmnt#hi#link('shFunction', 'icebergNormalFg'))

  " vim
  call add(links, pgmnt#hi#link('vimContinue', 'Comment'))
  call add(links, pgmnt#hi#link('vimFuncSID', 'vimFunction'))
  call add(links, pgmnt#hi#link('vimFuncVar', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('vimFunction', 'Title'))
  call add(links, pgmnt#hi#link('vimGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiTerm', 'Identifier'))
  call add(links, pgmnt#hi#link('vimMapModKey', 'Special'))
  call add(links, pgmnt#hi#link('vimOption', 'Identifier'))
  call add(links, pgmnt#hi#link('vimVar', 'icebergNormalFg'))

  " xml
  call add(links, pgmnt#hi#link('xmlAttrib', 'Constant'))
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
  call add(links, pgmnt#hi#link('CtrlPMode2', 'StatusLine'))

  " [Denite](https://github.com/Shougo/denite.nvim)
  call add(links, pgmnt#hi#link('deniteMatched', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('deniteMatchedChar', 'Title'))

  " [vim-elixir](https://github.com/elixir-editors/vim-elixir)
  call add(links, pgmnt#hi#link('elixirBlockDefinition', 'Statement'))
  call add(links, pgmnt#hi#link('elixirDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirDocSigilDelimiter', 'String'))
  call add(links, pgmnt#hi#link('elixirDocTest', 'String'))
  call add(links, pgmnt#hi#link('elixirExUnitMacro', 'Statement'))
  call add(links, pgmnt#hi#link('elixirExceptionDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirFunctionDeclaration', 'Title'))
  call add(links, pgmnt#hi#link('elixirKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('elixirModuleDeclaration', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('elixirModuleDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirPrivateDefine', 'Statement'))
  call add(links, pgmnt#hi#link('elixirStringDelimiter', 'String'))

  " [vim-flow](https://github.com/flowtype/vim-flow)
  call add(links, pgmnt#hi#link('jsFlowMaybe', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('jsFlowObject', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('jsFlowType', 'PreProc'))

  " [vim-graphql](https://github.com/jparise/vim-graphql)
  call add(links, pgmnt#hi#link('graphqlName', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('graphqlOperator', 'icebergNormalFg'))

  " [git-messenger.vim](https://github.com/rhysd/git-messenger.vim)
  call add(links, pgmnt#hi#link('gitmessengerHash', 'Comment'))
  call add(links, pgmnt#hi#link('gitmessengerHeader', 'Statement'))
  call add(links, pgmnt#hi#link('gitmessengerHistory', 'Constant'))

  " [vim-javascript](https://github.com/pangloss/vim-javascript)
  call add(links, pgmnt#hi#link('jsArrowFunction', 'Operator'))
  call add(links, pgmnt#hi#link('jsClassDefinition', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('jsClassFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsExport', 'Statement'))
  call add(links, pgmnt#hi#link('jsFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsFutureKeys', 'Statement'))
  call add(links, pgmnt#hi#link('jsFuncCall', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('jsGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleKeywords', 'Statement'))
  call add(links, pgmnt#hi#link('jsModuleOperators', 'Statement'))
  call add(links, pgmnt#hi#link('jsNull', 'Constant'))
  call add(links, pgmnt#hi#link('jsObjectFuncName', 'Title'))
  call add(links, pgmnt#hi#link('jsObjectKey', 'Identifier'))
  call add(links, pgmnt#hi#link('jsSuper', 'Statement'))
  call add(links, pgmnt#hi#link('jsTemplateBraces', 'Special'))
  call add(links, pgmnt#hi#link('jsUndefined', 'Constant'))

  " [vim-markdown](https://github.com/tpope/vim-markdown)
  call add(links, pgmnt#hi#link('markdownBold', 'Special'))
  call add(links, pgmnt#hi#link('markdownCode', 'String'))
  call add(links, pgmnt#hi#link('markdownCodeDelimiter', 'String'))
  call add(links, pgmnt#hi#link('markdownHeadingDelimiter', 'Comment'))
  call add(links, pgmnt#hi#link('markdownRule', 'Comment'))

  " [nginx.vim](https://github.com/chr4/nginx.vim)
  call add(links, pgmnt#hi#link('ngxDirective', 'Statement'))

  " [vim-plug](https://github.com/junegunn/vim-plug)
  call add(links, pgmnt#hi#link('plug1', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('plug2', 'Identifier'))
  call add(links, pgmnt#hi#link('plugDash', 'Comment'))
  call add(links, pgmnt#hi#link('plugMessage', 'Special'))

  " [Signify](https://github.com/mhinz/vim-signify/)
  call add(links, pgmnt#hi#link('SignifySignAdd', 'GitGutterAdd'))
  call add(links, pgmnt#hi#link('SignifySignChange', 'GitGutterChange'))
  call add(links, pgmnt#hi#link('SignifySignChangeDelete', 'GitGutterChangeDelete'))
  call add(links, pgmnt#hi#link('SignifySignDelete', 'GitGutterDelete'))
  call add(links, pgmnt#hi#link('SignifySignDeleteFirstLine', 'SignifySignDelete'))

  " [Startify](https://github.com/mhinz/vim-startify)
  call add(links, pgmnt#hi#link('StartifyBracket', 'Comment'))
  call add(links, pgmnt#hi#link('StartifyFile', 'Identifier'))
  call add(links, pgmnt#hi#link('StartifyFooter', 'Constant'))
  call add(links, pgmnt#hi#link('StartifyHeader', 'Constant'))
  call add(links, pgmnt#hi#link('StartifyNumber', 'Special'))
  call add(links, pgmnt#hi#link('StartifyPath', 'Comment'))
  call add(links, pgmnt#hi#link('StartifySection', 'Statement'))
  call add(links, pgmnt#hi#link('StartifySlash', 'Comment'))
  call add(links, pgmnt#hi#link('StartifySpecial', 'icebergNormalFg'))

  " [SVSS](https://github.com/cocopon/svss.vim)
  call add(links, pgmnt#hi#link('svssBraces', 'Delimiter'))

  " [vim-swift](https://github.com/toyamarinyon/vim-swift)
  call add(links, pgmnt#hi#link('swiftIdentifier', 'icebergNormalFg'))

  " [nvim-treesitter (old declaration)](https://github.com/nvim-treesitter/nvim-treesitter)
  call add(links, pgmnt#hi#link('TSAttribute', 'Special'))
  call add(links, pgmnt#hi#link('TSBoolean', 'Constant'))
  call add(links, pgmnt#hi#link('TSCharacter', 'Constant'))
  call add(links, pgmnt#hi#link('TSComment', 'Comment'))
  call add(links, pgmnt#hi#link('TSConstructor', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSConditional', 'Statement'))
  call add(links, pgmnt#hi#link('TSConstant', 'Constant'))
  call add(links, pgmnt#hi#link('TSConstBuiltin', 'Constant'))
  call add(links, pgmnt#hi#link('TSConstMacro', 'Constant'))
  call add(links, pgmnt#hi#link('TSError', 'Error'))
  call add(links, pgmnt#hi#link('TSException', 'Statement'))
  call add(links, pgmnt#hi#link('TSField', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSFloat', 'Constant'))
  call add(links, pgmnt#hi#link('TSInclude', 'Statement'))
  call add(links, pgmnt#hi#link('TSKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('TSKeywordFunction', 'Function'))
  call add(links, pgmnt#hi#link('TSLabel', 'Special'))
  call add(links, pgmnt#hi#link('TSNamespace', 'Statement'))
  call add(links, pgmnt#hi#link('TSNumber', 'Constant'))
  call add(links, pgmnt#hi#link('TSOperator', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSParameter', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSParameterReference', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSProperty', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSPunctDelimiter', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSPunctBracket', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSPunctSpecial', 'Special'))
  call add(links, pgmnt#hi#link('TSRepeat', 'Statement'))
  call add(links, pgmnt#hi#link('TSString', 'String'))
  call add(links, pgmnt#hi#link('TSStringRegex', 'String'))
  call add(links, pgmnt#hi#link('TSStringEscape', 'Special'))
  call add(links, pgmnt#hi#link('TSTag', 'htmlTagName'))
  call add(links, pgmnt#hi#link('TSTagAttribute', 'htmlArg'))
  call add(links, pgmnt#hi#link('TSTagDelimiter', 'htmlTagName'))
  call add(links, pgmnt#hi#link('TSText', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSTitle', 'Title'))
  call add(links, pgmnt#hi#link('TSType', 'Type'))
  call add(links, pgmnt#hi#link('TSTypeBuiltin', 'Type'))
  call add(links, pgmnt#hi#link('TSVariable', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('TSVariableBuiltin', 'Statement'))

  " [typescript-vim](https://github.com/leafgarland/typescript-vim)
  call add(links, pgmnt#hi#link('typescriptAjaxMethods', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('typescriptBraces', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('typescriptEndColons', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('typescriptFuncKeyword', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptGlobalObjects', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptHtmlElemProperties', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('typescriptIdentifier', 'Statement'))
  call add(links, pgmnt#hi#link('typescriptMessage', 'icebergNormalFg'))
  call add(links, pgmnt#hi#link('typescriptNull', 'Constant'))
  call add(links, pgmnt#hi#link('typescriptParens', 'icebergNormalFg'))
  " }}}

  return links
endfunction

function! s:create_neovim_08_links() abort
  let links = []

  " Rules for only Neovim 0.8 or higher plugins {{{
  " [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  call add(links, pgmnt#hi#link('@attribute', 'TSAttribute'))
  call add(links, pgmnt#hi#link('@boolean', 'TSBoolean'))
  call add(links, pgmnt#hi#link('@character', 'TSCharacter'))
  call add(links, pgmnt#hi#link('@comment', 'TSComment'))
  call add(links, pgmnt#hi#link('@constructor', 'TSConstructor'))
  call add(links, pgmnt#hi#link('@conditional', 'TSConditional'))
  call add(links, pgmnt#hi#link('@constant', 'TSConstant'))
  call add(links, pgmnt#hi#link('@constant.builtin', 'TSConstBuiltin'))
  call add(links, pgmnt#hi#link('@constant.macro', 'TSConstMacro'))
  call add(links, pgmnt#hi#link('@error', 'TSError'))
  call add(links, pgmnt#hi#link('@exception', 'TSException'))
  call add(links, pgmnt#hi#link('@field', 'TSField'))
  call add(links, pgmnt#hi#link('@float', 'TSFloat'))
  call add(links, pgmnt#hi#link('@function', 'TSFunction'))
  call add(links, pgmnt#hi#link('@function.builtin', 'TSFunctionBuiltin'))
  call add(links, pgmnt#hi#link('@function.macro', 'TSFunctionMacro'))
  call add(links, pgmnt#hi#link('@include', 'TSInclude'))
  call add(links, pgmnt#hi#link('@keyword', 'TSKeyword'))
  call add(links, pgmnt#hi#link('@keyword.function', 'TSKeywordFunction'))
  call add(links, pgmnt#hi#link('@label', 'TSLabel'))
  call add(links, pgmnt#hi#link('@method', 'TSMethod'))
  call add(links, pgmnt#hi#link('@namespace', 'TSNamespace'))
  call add(links, pgmnt#hi#link('@number', 'TSNumber'))
  call add(links, pgmnt#hi#link('@operator', 'TSOperator'))
  call add(links, pgmnt#hi#link('@parameter', 'TSParameter'))
  call add(links, pgmnt#hi#link('@parameter.reference', 'TSParameterReference'))
  call add(links, pgmnt#hi#link('@property', 'TSProperty'))
  call add(links, pgmnt#hi#link('@punctuation.delimiter', 'TSPunctDelimiter'))
  call add(links, pgmnt#hi#link('@punctuation.bracket', 'TSPunctBracket'))
  call add(links, pgmnt#hi#link('@punctuation.special', 'TSPunctSpecial'))
  call add(links, pgmnt#hi#link('@repeat', 'TSRepeat'))
  call add(links, pgmnt#hi#link('@string', 'TSString'))
  call add(links, pgmnt#hi#link('@string.regex', 'TSStringRegex'))
  call add(links, pgmnt#hi#link('@string.escape', 'TSStringEscape'))
  call add(links, pgmnt#hi#link('@tag', 'TSTag'))
  call add(links, pgmnt#hi#link('@tag.attribute', 'TSTagAttribute'))
  call add(links, pgmnt#hi#link('@tag.delimiter', 'TSTagDelimiter'))
  call add(links, pgmnt#hi#link('@text', 'TSText'))
  call add(links, pgmnt#hi#link('@text.note', 'Todo'))
  call add(links, pgmnt#hi#link('@text.title', 'TSTitle'))
  call add(links, pgmnt#hi#link('@text.uri', 'TSURI'))
  call add(links, pgmnt#hi#link('@type', 'TSType'))
  call add(links, pgmnt#hi#link('@type.builtin', 'TSTypeBuiltin'))
  call add(links, pgmnt#hi#link('@variable', 'TSVariable'))
  call add(links, pgmnt#hi#link('@variable.builtin', 'TSVariableBuiltin'))
  " }}}

  return links
endfunction

function! s:create_context() abort
  let d = s:create_colors(
        \ iceberg#palette#dark#create())
  let l = s:create_colors(
        \ iceberg#palette#light#create())
  let links = s:create_links()
  let neovim_08_links = s:create_neovim_08_links()

  return {
        \   'modified': strftime('%Y-%m-%d %H:%M%z'),
        \   'dark_rules': d.rules,
        \   'dark_neovim_term_defs': d.neovim_term_defs,
        \   'dark_vim_term_defs': d.vim_term_defs,
        \   'light_rules': l.rules,
        \   'light_neovim_term_defs': l.neovim_term_defs,
        \   'light_vim_term_defs': l.vim_term_defs,
        \   'links': links,
        \   'neovim_08_links': neovim_08_links,
        \ }
endfunction

call pgmnt#compile(s:create_context(), {
      \   'output': '../colors/iceberg.vim',
      \   'template': './template.vim',
      \ })

function! s:create_xline_context() abort
  let ps = {
        \   'dark': iceberg#palette#dark#create(),
        \   'light': iceberg#palette#light#create(),
        \ }
  let context = {}
  for [bg, p] in items(ps)
    let c = p.cterm
    let g = p.gui

    let col_base = string([
          \   g.xline_base_fg,
          \   g.xline_base_bg,
          \   c.xline_base_fg,
          \   c.xline_base_bg,
          \ ])
    let col_edge = string([
          \   g.xline_edge_fg,
          \   g.xline_edge_bg,
          \   c.xline_edge_fg,
          \   c.xline_edge_bg,
          \ ])
    let prefix = bg . '_col_'
    let context = extend(context, {
          \   prefix . 'base': col_base,
          \   prefix . 'tabfill': col_base,
          \   prefix . 'edge': col_edge,
          \   prefix . 'normal': col_edge,
          \   prefix . 'tabsel': col_edge,
          \   prefix . 'error': string([
          \     g.normal_bg,
          \     g.red,
          \     c.normal_bg,
          \     c.red,
          \   ]),
          \   prefix . 'gradient': string([
          \     g.xline_gradient_fg,
          \     g.xline_gradient_bg,
          \     c.xline_gradient_fg,
          \     c.xline_gradient_bg,
          \   ]),
          \   prefix . 'nc': string([
          \     g.statuslinenc_fg,
          \     g.statuslinenc_bg,
          \     c.statuslinenc_fg,
          \     c.statuslinenc_bg,
          \   ]),
          \   prefix . 'warning': string([
          \     g.normal_bg,
          \     g.orange,
          \     c.normal_bg,
          \     c.orange,
          \   ]),
          \   prefix . 'insert': string([
          \     g.normal_bg,
          \     g.blue,
          \     c.normal_bg,
          \     c.blue,
          \   ]),
          \   prefix . 'replace': string([
          \     g.normal_bg,
          \     g.orange,
          \     c.normal_bg,
          \     c.orange,
          \   ]),
          \   prefix . 'visual': string([
          \     g.normal_bg,
          \     g.green,
          \     c.normal_bg,
          \     c.green,
          \   ]),
          \   prefix . 'red': string([
          \     g.red,
          \     g.normal_bg,
          \     c.red,
          \     c.normal_bg,
          \   ]),
          \ })
  endfor

  return context
endfunction

call pgmnt#compile(
      \ s:create_xline_context(), {
      \   'output': '../autoload/airline/themes/iceberg.vim',
      \   'template': './template-airline.vim',
      \ })
call pgmnt#compile(
      \ s:create_xline_context(), {
      \   'output': '../autoload/lightline/colorscheme/iceberg.vim',
      \   'template': './template-lightline.vim',
      \ })
