#!/usr/bin/env bash
#
# Converts time from timestamp to date and vice versa.
param_one="$1"
param_two="$2"
# Return the current date in Unix eppoch time.
function current_unix_epoch() {
  date=$(date "+%s");
  echo $date;
}

# Convert the Unix epoch time to date.
function unix_to_date() {
  date=$(date -d @$param_two);
  echo $date;
}
# Decide matey.
if [ "$param_one" == "date" ]; then
  unix_to_date
elif [ "$1" == "unix" ]; then
  current_unix_epoch
elif [ "$param_one" == "help" ]; then
  echo "See the source code yo geek!";
else
  echo "Nothing";
fi
