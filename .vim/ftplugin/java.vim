:vmap <expr> <C-_> getline(".")[col("^")] == "/" ? 'S^\s*\/\/ /<Return>':'S^/\/\/ <Return>'
:imap <C-_> <Esc>V<C-_>A
:nmap <C-_> V<C-_>

:inoremap syso<Return> System.out.println();<Left><Left>
:imap psvm<Return> public static void main(String[<Right> args<Right><Return>{<Return>
