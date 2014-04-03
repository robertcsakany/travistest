#!/bin/bash
 
# Formatting constants
BOLD=`tput bold`
UNDERLINE_ON=`tput smul`
UNDERLINE_OFF=`tput rmul`
TEXT_BLACK=`tput setaf 0`
TEXT_RED=`tput setaf 1`
TEXT_GREEN=`tput setaf 2`
TEXT_YELLOW=`tput setaf 3`
TEXT_BLUE=`tput setaf 4`
TEXT_MAGENTA=`tput setaf 5`
TEXT_CYAN=`tput setaf 6`
TEXT_WHITE=`tput setaf 7`
BACKGROUND_BLACK=`tput setab 0`
BACKGROUND_RED=`tput setab 1`
BACKGROUND_GREEN=`tput setab 2`
BACKGROUND_YELLOW=`tput setab 3`
BACKGROUND_BLUE=`tput setab 4`
BACKGROUND_MAGENTA=`tput setab 5`
BACKGROUND_CYAN=`tput setab 6`
BACKGROUND_WHITE=`tput setab 7`
RESET_FORMATTING=`tput sgr0`

UNDERLINE_ON=`echo -e "\033[4m"`
UNDERLINE_OFF=`echo -e "\033[0m"`
BOLD_ON=`echo -e "\033[1m"`
BOLD_OFF=`echo -e "\033[0m"`
Black=`echo -e "\033[0;30m"`
BlackBG=`echo -e "\033[0;40m"`
DarkGrey=`echo -e "\033[1;30m"`
DarkGreyBG=`echo -e "\033[1;40m"`
LightGrey=`echo -e "\033[0;37m"`
LightGreyBG=`echo -e "\033[0;47m"`
White=`echo -e "\033[1;37m"`
WhiteBG=`echo -e "\033[1;47m"`
Red=`echo -e "\033[0;31m"`
RedBG=`echo -e "\033[0;41m"`
LightRed=`echo -e "\033[1;31m"`
LightRedBG=`echo -e "\033[1;41m"`
Green=`echo -e "\033[0;32m"`
GreenBG=`echo -e "\033[0;42m"`
LightGreen=`echo -e "\033[1;32m"`
LightGreenBG=`echo -e "\033[1;42m"`
Brown=`echo -e "\033[0;33m"`
BrownBG=`echo -e "\033[0;43m"`
Yellow=`echo -e "\033[1;33m"`
YellowBG=`echo -e "\033[1;43m"`
Blue=`echo -e "\033[0;34m"`
BlueBG=`echo -e "\033[0;44m"`
LightBlue=`echo -e "\033[1;34m"`
LightBlueBG=`echo -e "\033[1;44m"`
Purple=`echo -e "\033[0;35m"`
PurpleBG=`echo -e "\033[0;45m"`
Pink=`echo -e "\033[1;35m"`
PinkBG=`echo -e "\033[1;45m"`
Cyan=`echo -e "\033[0;36m"`
CyanBG=`echo -e "\033[0;46m"`
LightCyan=`echo -e "\033[1;36m"`
LightCyanBG=`echo -e "\033[1;46m"`

LC_CTYPE=C
 
#mvn $@ 
#               -e "s/\(\[INFO\]\ Downloading(.*))/${TEXT_GREEN}.${RESET_FORMATTING}/g" \
#               -e "s/\(\[INFO\]\ Downloaded(.*))/${TEXT_GREEN}\n\1${RESET_FORMATTING}/g" \
# -e ':a' -e 'N' -e '$!ba'
#-e "s/\(\[INFO\]\ Downloading.*\)/${TEXT_GREEN}${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ Downloaded.*\)/${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ \-.*\)/${TEXT_CYAN}${BOLD}\1/g" \
#-e "s/\(\[INFO\]\ \-\-\-\ .*\)/${RESET_FORMATTING}${BOLD}${UNDERLINE_ON}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ Installing\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ BUILD SUCCESS\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[WARNING\].*\)/${BOLD}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[ERROR\].*\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
#-e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BOLD}${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${BOLD}${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${BOLD}${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${BOLD}${TEXT_YELLOW}\4${RESET_FORMATTING}/g"
#-e ':a' -e 'N' -e '$!ba'
#-e "s/\([0-9]*\/[0-9]*.KB\)\n/${TEXT_GREEN}->KB${RESET_FORMATTING}/g"
#-e 's/\n/&/g' \
#-e "s/\(Downloading.*\n\)/./g" \
#-e "s/\(Downloaded.*\n\)/./g" \
#-e 's/\n/&/g'

#-e "s/\(Downloaded.*\n\)/./g" \
#-e 's/\n/&/g'
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\(Downloading\:.*\)/-ed-&/g" \
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\(Downloaded\:.*\)/-prg-&/g" \

#cat ./test.log \
#| sed -e "s/\([0-9]\+\/[0-9]\+\ \+\)/./g"


#| sed -E 's/(\[INFO\].Downloading:.*)/./g' \
#| sed -E 's/(\[INFO\].Downloaded:.*)/./g' \

cat ./test1.log \
| sed -E '/(\[INFO\].Downloading:.*).*/d' \
| sed -E '/(Downloading:.*).*/d' \
| sed -E '/([0-9]+\/[0-9]+ +K?B +).*/d' \

#| sed -E 's/^ *\.$)/xxx/' \
#| sed -e :a -e '$!N;s/\n\././;ta' -e 'P;D'
#| sed -E 's/(Downloaded:.*)/./' \
#| sed -E 's/(\[INFO\].Downloaded:.*)/./' \

#\
#| sed -e "s/\(\[INFO\]\ \-.*\)/${TEXT_CYAN}${BOLD}\1/g" \
#-e "s/\(\[INFO\]\ \-\-\-\ .*\)/${RESET_FORMATTING}${BOLD}${UNDERLINE_ON}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ Installing\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[INFO\]\ BUILD SUCCESS\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[WARNING\].*\)/${BOLD}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
#-e "s/\(\[ERROR\].*\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
#-e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BOLD}${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${BOLD}${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${BOLD}${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${BOLD}${TEXT_YELLOW}\4${RESET_FORMATTING}/g"



#| sed -e :a -e '/\\$/N; s/\.\n//; ta'
#| sed -e 'N' -e's/^\.\n$/./'

#| sed -e 'N' -e 's/\.*\n//'

#| sed -e ':a' -e 'N' -e '$!ba' -e 's/\.*\n/./'


#cat ./test.log \
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\([0-9]\?\/[0-9]\?[K]\?B.\?.\?.\?.\?.\?\n\)/./g" \
#| sed \
#-e "s/\(\[INFO\]\ \-.*\)/${TEXT_CYAN}${BOLD}\1/g" \
#-e "s/\(\[INFO\]\ BUILD SUCCESS\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \


#cat ./test.log \
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\(Downloading\:.*\)/-ed-&/g" \
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\(Downloaded\:.*\)/-prg-&/g" \
#| sed -e ':a' -e 'N' -e '$!ba' -e "s/\([0-9]*\/[0-9]*.KB...\n\)/./g" \
#| sed \
#-e "s/\(\[INFO\]\ \-.*\)/${TEXT_CYAN}${BOLD}\1/g" \
#-e "s/\(\[INFO\]\ BUILD SUCCESS\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \

echo -ne ${RESET_FORMATTING}

# awk '{match($0, /"money":"([0-9]+)"/); split(substr($0, RSTART, RLENGTH), a, /[":]/); print a[5]}' test.txt

#cat ./test.log | awk '
#	($1 == "[ALL]")  {
#		print "\033[1;37m" $0 "\033[0m"; next;
#	}
#	($1 == "[FATAL]") {
#		print "\033[1;31m" $0 "\033[0m"; next; 
#	}
#	($1 == "[ERROR]") {
#		print "\033[1;31m" $0 "\033[0m"; next; 
#	}
#	($1 == "[WARNING]") {
#		print "\033[1;33m" $0 "\033[0m"; next; 
#	}
#	($1 == "[INFO]") {
#		print "\033[1;37m" $0 "\033[0m"; next;
#	}
#	($1 == "[DEBUG]") {
#		print "\033[1;36m" $0 "\033[0m"; next; 
#	}
#	($1 == "[TRACE]") {
#		print "\033[1;32m" $0 "\033[0m"; next; 
#	} 
#	{ print }' 
