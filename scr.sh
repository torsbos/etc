#!/bin/bash
# screengrab with import with automatic naming
# ex 260219_11-28-06.jpg
# GPLv3 license

date=$(date "+%y%m%d_%H-%M-%S")
import $date.jpg
