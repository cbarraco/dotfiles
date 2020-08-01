# install ppas
add-apt-repository ppa:bashtop-monitor/bashtop
apt-get update

# install dev tools
apt-get install -y build-essential git neovim autoconf cmake golang python3-pip nodejs icecream

# install network tools
apt-get install -y wget nmap curl

# install tui programs
apt-get install -y ncdu bashtop htop powertop taskwarrior
go get -u github.com/gokcehan/lf
npm i -g termllo
