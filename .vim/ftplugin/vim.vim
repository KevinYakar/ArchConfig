:imap <expr> <C-_> getline(".")[col("^")] == "\"" ? '<Esc>:s/^\" //g<Return>A':'<Esc>:s/^/\" /g<Return>A'
:nmap <expr> <C-_> getline(".")[col("^")] == "\"" ? ':s/^\" //g<Return>$':':s/^/\" /g<Return>$'
:vmap <expr> <C-_> getline(".")[col("^")] == "\"" ? 'S^\" /<Return>':'S^/\" <Return>'
