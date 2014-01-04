" _________________________________________
" \_ _/ ____| ____| ___ \ ____| ___ \  ___/
"  | | |____| ____| ___ < ____| __  / |__ \
" /___\_____|_____|_____/_____|_| \_\_____/
"
"  cool-headed perspective for your coding
"
"
" File:       ${file}
" Maintainer: ${maintainer}
" Modified:   ${date}
" License:    ${license}


if !has('gui_running') && &t_Co < 256
  finish
endif

set background=${background}
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = '${name}'


${highlights}
