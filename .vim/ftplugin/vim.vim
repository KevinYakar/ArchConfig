:vmap <expr> <C-_> getline(".")[col("^")] == "\"" ? 'S^\s*\" /<Return>':'S^/\" <Return>'
:imap <C-_> <Esc>V<C-_>A
:nmap <C-_> V<C-_>
