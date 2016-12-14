" Author:  cocopon <cocopon@me.com>
" License: MIT License


let s:save_cpo = &cpo
set cpo&vim


function! s:attr(name, what, mode, default) abort
	let attr = synIDattr(synIDtrans(hlID(a:name)), a:what, a:mode)
	return !empty(attr) ? attr : a:default
endfunction


function! s:col(name) abort
	return [
				\ 	s:attr(a:name, 'fg', 'gui', 'Black'),
				\ 	s:attr(a:name, 'bg', 'gui', 'Red'),
				\ 	s:attr(a:name, 'fg', 'cterm', 0),
				\ 	s:attr(a:name, 'bg', 'cterm', 9),
				\ ]
endfunction


function! s:build_palette() abort
	let p = {
				\ 'normal':   {},
				\ 'inactive': {},
				\ 'insert':   {},
				\ 'replace':  {},
				\ 'visual':   {},
				\ 'tabline':  {}}

	echomsg string(s:col('icebergLLBase'))

	let p.normal.middle = [
				\ s:col('icebergLLBase')]
	let p.normal.left = [
				\ s:col('icebergLLNormal'),
				\ s:col('icebergLLGradient')]
	let p.normal.right = [
				\ s:col('icebergLLEdge'),
				\ s:col('icebergLLGradient')]
	let p.normal.error = [
				\ s:col('icebergLLError')]
	let p.normal.warning = [
				\ s:col('icebergLLWarning')]

	let p.insert.left = [
				\ s:col('icebergLLInsert'),
				\ s:col('icebergLLGradient')]
	let p.replace.left = [
				\ s:col('icebergLLReplace'),
				\ s:col('icebergLLGradient')]
	let p.visual.left = [
				\ s:col('icebergLLVisual'),
				\ s:col('icebergLLGradient')]

	let p.inactive.middle = [
				\ s:col('icebergLLNC')]
	let p.inactive.left = [
				\ s:col('icebergLLNC'),
				\ s:col('icebergLLNC')]
	let p.inactive.right = [
				\ s:col('icebergLLNC'),
				\ s:col('icebergLLNC')]

	let p.tabline.middle = [
				\ s:col('icebergLLTabFill')]
	let p.tabline.left = [
				\ s:col('icebergLLTabFill')]
	let p.tabline.tabsel = [
				\ s:col('icebergLLTabSel')]

	let p.tabline.right = copy(p.normal.right)

	return p
endfunction


" Iceberg should be applied ahead
" because this palette uses colors declared by Iceberg
if g:colors_name !=# 'iceberg'
	let message = 'iceberg.vim: Execute `:colorscheme iceberg` before loading lightline colorscheme'

	" Call both echomsg and echoerr
	" because lightline doesn't show thrown error message
	echomsg message
	echoerr message
endif
let g:lightline#colorscheme#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
