#!/bin/bash
if [ -z "$ROOT_PASS" ]
then
	echo "default password = Public..."
	echo -e "Public...\nPublic..." | passwd root
else
	echo -e "$ROOT_PASS\n$ROOT_PASS" | passwd root
fi

/etc/init.d/ssh start
cat
