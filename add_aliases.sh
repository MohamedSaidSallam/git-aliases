#!/bin/bash

git config --global alias.ci  $'commit'
git config --global alias.cia  $'commit --amend'
git config --global alias.cian  $'commit --amend --no-edit'
git config --global alias.cim  $'commit -m'

git config --global alias.co  $'checkout'
git config --global alias.cob  $'checkout -tb'

git config --global alias.st  $'status -sb'

git config --global alias.cl  $'clone'
git config --global alias.br  $'branch'
git config --global alias.r  $'reset'
git config --global alias.cp  $'cherry-pick'
git config --global alias.gr  $'grep -Ii'

git config --global alias.s  $'stash'
git config --global alias.sl  $'stash list'
git config --global alias.sa  $'stash apply'
git config --global alias.ss  $'stash save'


git config --global alias.lasttag  $'describe --tags --abbrev=0'
git config --global alias.lt  $'describe --tags --abbrev=0'

git config --global alias.p  $'push'
git config --global alias.po  $'push -u origin HEAD'

git config --global alias.um  $'!(git checkout master || git checkout main) && git pull -r'

git config --global alias.lsa-raw  $'!git config -l | grep ^alias | cut -c 7-'
git config --global alias.lsa   $'!git lsa-raw  | awk -F= \'{first=$1;$1="";printf("%-12s %s\\n",first,$0);}\''
git config --global alias.lsal  $'!git lsa-raw  | awk -F= \'{first=$1;$1="";printf("%12s %s\\n",first,$0);}\''
git config --global alias.glsa  $'!git lsa | grep'

git config --global alias.qc  $'!f() { git stash && git um && git co -tb "$1" && git stash pop && git add . && git ci -m "${1}: ${2}" -m \'\' -m "${3:-desc}"; } ; f'

git config --global alias.empty  $'!git commit -am"[empty] Initial commit" --allow-empty'


git config --global alias.lightclone  $'!echo -e "!--------------------!
Depth is set to 10!
Can lead to UNEXPECTED behaviour.
Usefull if you are only checking out repo, not using it for development
!--------------------!" && git clone --depth 10 --single-branch'
git config --global alias.lc  $'lightclone'

git config --global alias.logg  $'log --graph --oneline --decorate'
git config --global alias.logga  $'logg --all'

git config --global alias.lg  $'log --color --graph --pretty=format:\'%C(yellow)%h%Creset -%C(cyan)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commit'
git config --global alias.lga  $'lg --all'
