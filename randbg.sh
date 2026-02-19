#!/bin/bash
# a simple random background picker using ls, shuf and feh
# change the dir to match the folder you want
# GPLv3 license

img=$(ls ~/pic/bg | shuf -n 1)
feh --no-fehbg --bg-fill ~/pic/bg/$img
