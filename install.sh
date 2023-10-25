#!/bin/bash

Cur_dir=$(pwd)

ln -sf $Cur_dir/de /usr/local/bin/de
ln -sf $Cur_dir/dp /usr/local/bin/dp
ln -sf $Cur_dir/root /usr/local/bin/root
ln -sf $Cur_dir/jump /usr/local/bin/jump
ln -sf $Cur_dir/devhome /usr/local/bin/devhome

exit

if [ ! -e gitools/upfilelist ]; then
    git clone https://github.com/praglody/gitools.git
    chmod +x gitools/upfilelist
fi

ln -sf $Cur_dir/gitools/upfilelist /usr/local/bin/upfilelist

