#!/usr/bin/env bash
function guessinggame {
  local status=1
  local exit_val=0
  local file_cnt=$( ls -lth | wc -l)
  while [[ $status -ne $exit_val ]]
  do
	echo "Enter a value # of files in Current Directory"
	read user_input
	if [[ $user_input =~ ^[0-9]+$ || $user_input =~ ^-[0-9]+$ ]]
	then
		if [[ $user_input -eq $file_cnt ]]
		then
			status=0
			echo "Input:: $user_input,  is equal to file Count in Current Directory"
		elif [[ $user_input -lt $file_cnt ]]
		then
			echo "Input:: $user_input, is Less then file Count in Current Directory"
		else
			echo "Input:: $user_input, is Greater then file Count in Current Directory"
		fi
	else
		echo "Invalid Input: enter a Integer value"
		
	fi
  done
}
guessinggame
