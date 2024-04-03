#!/bin/bash

# TOKEN is the token given to your Telegram bot when created with @BotFather
TOKEN=""

# List of IDs of Telegram users to receive the message, separated by space
IDS=""

if [[ -z $1 ]]; then
	echo "I need a parameter!"
	exit 1
fi

INFO=$1

for ID in $IDS
do
	# If parameter $1 is a file, and exists and has content, then send a message and the file attached
	if [[ -s $INFO ]]; then	
		curl -s -o /dev/null -X POST https://api.telegram.org/bot$TOKEN/sendmessage -d chat_id="$ID" -d text="Sending file from $(hostname -f) :"
		curl -s -o /dev/null -X POST https://api.telegram.org/bot$TOKEN/sendDocument -F chat_id="$ID" -F document="@$INFO"
	else
	# If $1 is not a file then I consider it is a message and send it.
		curl -s -o /dev/null -X POST https://api.telegram.org/bot$TOKEN/sendmessage -d chat_id="$ID" -d text="$INFO"
	fi
		
done

# That's all folks!
exit

