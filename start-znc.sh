#!/bin/bash

if [ ${SSL^^} = TRUE ]; then

  mkdir ~/.znc
  znc --makepem
  if [ ! -f /data/znc.pem ]; then
    cp ~/.znc/znc.pem /data
  fi
  
  ssl=true
  port=6697

else

  ssl=false
  port=6667

fi

if [ ! -d /data/configs ]; then
  mkdir /data/configs
  eval "echo \"$(cat ~/znc.conf.tmpl)\"" > /data/configs/znc.conf
fi

znc --foreground --no-color --datadir /data
