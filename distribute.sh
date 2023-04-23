#!/bin/bash
exit

targets=\.??*
for target in $targets
do
  if [ "${target}" = ".git" ]; then continue; fi
  
  cmd="mv ${HOME}/${target} ${HOME}/${target}.bak"
  $cmd
  cmd="cksum ${target} ${HOME}/${target}"
  $cmd
  cmd="ln ${target} ${HOME}/${target}"
  $cmd

done
