#!/bin/bash

if type npm >/dev/null 2>&1; then
  npm config set prefix '~/.npm-global'
else
  echo "npmをインストールしたらprefixの設定をしよう！"
  echo ""
  echo "    $ npm config set prefix '~/.npm-global'"
  echo ""
fi

