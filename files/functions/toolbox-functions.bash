#!/usr/bin/env bash
# print a message if it's inside a toolbox
boxicon="󰏖 "
is_toolbox() {
 if ! [ -z ${TOOLBOX_PATH} ];then
      printf "${boxicon}"
 fi
}
