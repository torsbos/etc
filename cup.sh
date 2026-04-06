#!/bin/sh
# cup.sh - a calcurse script for non-destructive updates
#          without duplicates
# thanks to jonhiggs for the deduplication script
# https://github.com/jonhiggs/dedupe-calcurse-appointments
# GPLv3 license

curl -s \
'https://cloud.timeedit.net/gu/web/schema/ri6Q58225n7055QQ14Z60Y6Z0ZyQ6107.ics' \
> ~/calcurse-import
calcurse -i ~/calcurse-import
rm ~/calcurse-import
dedupe
