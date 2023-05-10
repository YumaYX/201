#!/bin/bash

targets=\.??*
for target in $targets
do
  if [ "${target}" = ".git" ]; then continue; fi
  if [ "${target}" = ".DS_Store" ]; then continue; fi
  
  cmd="ln ${target} ${HOME}/${target}"
  $cmd

done
