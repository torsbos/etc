#!/bin/sh
# cup.sh - a calcurse script for non-destructive updates
#          without duplicates
# thanks to jonhiggs for the deduplication script
# https://github.com/jonhiggs/dedupe-calcurse-appointments
# GPLv3 license

curl -s \
'https://cloud.timeedit.net/gu/web/schema/ri6Q58224n7055QQ13Z67Y6Z0ZyQ3106.ics' \
> ~/calcurse-import
calcurse -i ~/calcurse-import
rm ~/calcurse-import
dedupe
