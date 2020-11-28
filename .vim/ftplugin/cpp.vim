:imap <expr> <C-_> getline(".")[col("^")] == "/" ? '<Esc>:s/^\/\/ //g<Return>A':'<Esc>:s/^/\/\/ /g<Return>A'
:nmap <expr> <C-_> getline(".")[col("^")] == "/" ? ':s/^\/\/ //g<Return>$':':s/^/\/\/ /g<Return>$'
:vmap <expr> <C-_> getline(".")[col("^")] == "/" ? 'S^\/\/ /<Return>':'S^/\/\/ <Return>'

:inoremap #<Return> #include <><Left>
:inoremap main<Return> int<Space>main()<Return>{<Return><Tab><Return>return 0;<Return><Esc>0i}<Up><Up><Tab>
:inoremap ide<Return> #ifndef _HPP<Return>#define _HPP<Return>#endif<Esc>0i<Return><Return><Return><Esc>5k$3hi
:inoremap cout<Return> std::cout <<  << std::endl;<Esc>13hi
:inoremap cin<Return> std::cin >> ;<Left>
:inoremap getline<Return> std::getline(std::cin, );<Esc>hi
:inoremap ignore<Return> std::cin.ignore();<Left><Left>
