:inoremap #<Return> #include <><Left>
:imap main<Return> int<Space>main(<Right><Return>{<Return>return 0;<Esc>^i<Return><Up>
:inoremap ide<Return> #ifndef _HPP<Return>#define _HPP<Return>#endif<Esc>0i<Return><Return><Return><Esc>5k$3hi
:inoremap cout<Return> std::cout <<
:inoremap endl<Return> std::endl;
:inoremap cin<Return> std::cin >> ;<Left>
:inoremap getline<Return> std::getline(std::cin, );<Esc>hi
:inoremap ignore<Return> std::cin.ignore();<Left><Left>
