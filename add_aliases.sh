#!/bin/bash

git config --global alias.ci  $'commi'
git config --global alias.cia  $'commit --amen'
git config --global alias.cian  $'commit --amend --no-edi'
git config --global alias.cim  $'commit -'

git config --global alias.co  $'checkou'
git config --global alias.cob  $'checkout -t'

git config --global alias.st  $'status -s'

git config --global alias.cl  $'clon'
git config --global alias.br  $'branc'
git config --global alias.r  $'rese'
git config --global alias.cp  $'cherry-pic'
git config --global alias.gr  $'grep -I'

git config --global alias.s  $'stas'
git config --global alias.sl  $'stash lis'
git config --global alias.sa  $'stash appl'
git config --global alias.ss  $'stash sav'


git config --global alias.lasttag  $'describe --tags --abbrev='
git config --global alias.lt  $'describe --tags --abbrev='

git config --global alias.p  $'pus'
git config --global alias.po  $'push -u origin HEA'

git config --global alias.um  $'!(git checkout master || git checkout main) && git pull -'

git config --global alias.lsa-raw  $'!git config -l | grep alias | cut -c 7'
git config --global alias.lsa   $'!git lsa-raw  | awk -F= \'{first=$1;$1="";printf("%-12s %s\\n",first,$0);}'
git config --global alias.lsal  $'!git lsa-raw  | awk -F= \'{first=$1;$1="";printf("%12s %s\\n",first,$0);}'

git config --global alias.qc  $'!f() { git stash && git um && git co -tb $1 && git stash pop && git add . && git ci -m \'${1}: ${2}\' -m \'\' -m \'${3:-desc}\' && git ci --amend; } ; '

git config --global alias.empty  $'!git commit -am"[empty] Initial commit" --allow-empt'


git config --global alias.lightclone  $'!echo -e "!--------------------!
Depth is set to 10!
Can lead to UNEXPECTED behaviour.
Usefull if you are only checking out repo, not using it for development
!--------------------!" && git clone --depth 10 --single-branc'
git config --global alias.lc  $'lightclon'

git config --global alias.logg  $'log --graph --oneline --decorat'
git config --global alias.logga  $'logg --al'

git config --global alias.lg  $'log --color --graph --pretty=format:\'%C(yellow)%h%Creset -%C(cyan)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commi'
git config --global alias.lga  $'lg --al'
