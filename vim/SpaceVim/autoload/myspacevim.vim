function! myspacevim#before() abort
    let g:neomake_python_flake8_maker = {
        \ 'args': [
            \'--ignore=E221,E241,E272,E251,W702,E203,E201,E202',
            \'--format=default',
            \'--max-line-length=120',
          \],
        \ 'errorformat':
            \ '%E%f:%l: could not compile,%-Z%p^,' .
            \ '%A%f:%l:%c: %t%n %m,' .
            \ '%A%f:%l: %t%n %m,' .
            \ '%-G%.%#',
        \ }
    let g:neomake_python_enabled_makers = ['flake8']
endfunction

function! myspacevim#after() abort
    inoremap jk <esc>
endfunction
