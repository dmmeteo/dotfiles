" https://stackoverflow.com/questions/5116344/how-to-make-nerdtree-always-open-on-the-right-side
" https://github.com/SpaceVim/SpaceVim/issues/2142<Paste>
" function! myspacevim#after() abort
"  <Plug>(vimfiler_toggle_visible_ignore_files)
"  autocmd VimEnter * NERDTree
"  let g:vimfiler_ignore_pattern = ['\.pyc$', '^\.git$', '^\.DS_Store$']
"	set foldmethod=manual
" endfunction

function! myspacevim#before() abort
    let g:nerdtree_tabs_open_on_console_startup=1
endfunction

function! myspacevim#after() abort
    let g:nerdtree_tabs_open_on_console_startup=1
endfunction
