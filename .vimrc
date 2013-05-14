"~/.vimrc
runtime! debian.vim
"" Globals Settings

"set compatible     " W/ vi
"set nocompatible
"
"When Vim starts, the 'compatible' option is on. This will be used when Vim
"starts its initializations. But as soon as a user vimrc file is found, or a
"vimrc file in the current directory, or the 'VIMINIT' environment variable is
"set, it will be set to 'nocompatible'.

"" Include configuration
for i in [ "functions","behavior","file","fmap","projet","macro" ] 
    let f = expand($HOME.'/.vim/.'.i.'.vimrc')
    if filereadable(f)
        "let c = expand('Sourcing file : '.f)
        "echom c
        exec ':so ' . f
    endif
endfor

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif
