let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  if &background == 'light'
    let col_base     = {{light_col_base}}
    let col_edge     = {{light_col_edge}}
    let col_error    = {{light_col_error}}
    let col_gradient = {{light_col_gradient}}
    let col_nc       = {{light_col_nc}}
    let col_warning  = {{light_col_warning}}
    let col_insert   = {{light_col_insert}}
    let col_replace  = {{light_col_replace}}
    let col_visual   = {{light_col_visual}}
    let col_red      = {{light_col_red}}
  else
    let col_base     = {{dark_col_base}}
    let col_edge     = {{dark_col_edge}}
    let col_error    = {{dark_col_error}}
    let col_gradient = {{dark_col_gradient}}
    let col_nc       = {{dark_col_nc}}
    let col_warning  = {{dark_col_warning}}
    let col_insert   = {{dark_col_insert}}
    let col_replace  = {{dark_col_replace}}
    let col_visual   = {{dark_col_visual}}
    let col_red      = {{dark_col_red}}
  endif

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_gradient,
        \ col_base)
  let p.terminal = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  " Terminal
  let p.normal.airline_term = col_base
  let p.terminal.airline_term = col_base
  let p.visual.airline_term = col_base

  return p
endfunction


let g:airline#themes#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
