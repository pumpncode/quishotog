try
	do shell script "killall 'System Settings'"
end try

do shell script "defaults write -g AppleKeyboardUIMode -int 2"

do shell script "killall cfprefsd"

do shell script "killall SystemUIServer"


tell application "System Settings" to activate
delay 0.5

tell application "System Events"
	tell process "System Settings"
		set frontmost to true
		delay 0.5

		keystroke "f" using command down
		delay 0.5

		keystroke "keyboard and mouse short"
		delay 0.5

		key code 125
		delay 0.5
		key code 125
		delay 0.5

		keystroke tab
		delay 0.5
		keystroke space
		delay 0.5

		keystroke "-"
		delay 0.5
		keystroke return

		keystroke tab
		delay 0.5
		keystroke tab
		delay 0.5
		keystroke space
		delay 0.5

		keystroke "-"
		delay 0.5
		keystroke return

		keystroke tab
		delay 0.5
		keystroke tab
		delay 0.5
		keystroke tab
		delay 0.5
		keystroke return
		delay 0.5
	end tell
end tell

do shell script "killall 'System Settings'"

do shell script "defaults write -g AppleKeyboardUIMode -int 0"

do shell script "killall cfprefsd"

do shell script "killall SystemUIServer"