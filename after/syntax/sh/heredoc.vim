" Delimiter is the delimiter used in the heredoc
" Syntax should be the name of the syntax, e.g. `sh` for shell
function Heredoc_highlight(delimiter, syntax)
    let s:bcs = b:current_syntax
    unlet b:current_syntax
    execute 'syntax include @' . a:syntax . ' syntax/' . a:syntax . '.vim'
    let b:current_syntax = s:bcs

    execute 'syntax region heredoc' . a:delimiter . ' matchgroup=Statement start=+<<\s*[''\"]*' . a:delimiter . '.*$+ end=+^' . a:delimiter . '\s*$+ contains=@'. a:syntax
endfunction

" Set up highlighting for all defined matches, or default to just SHELL
if exists('g:heredoc_matches')
    for match in g:heredoc_matches
        call Heredoc_highlight(match[0], match[1])
    endfor
else
    call Heredoc_highlight('SHELL', 'sh')
endif
