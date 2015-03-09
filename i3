###########################
# Configuration Variables #
###########################
set $mod 			Mod4
set $ns				
set $rp				5
set $gsi			9
set $gso			78
set $fgcolor			#746c48
set $bgcolor			#1a1a1a
floating_modifier 		$mod
focus_follows_mouse 		yes

##############
# Appearence #
##############
# Set window appearence
client.focused          	$fgcolor $fgcolor $bgcolor $fgcolor 
client.focused_inactive 	$bgcolor $bgcolor $fgcolor $bgcolor
client.unfocused        	$bgcolor $bgcolor $fgcolor $bgcolor
# Set font
font 				pango:Source Code Pro 7
# Configure window borders
gaps inner			$gsi
gaps outer			$gso
new_float			pixel 1
new_window			pixel 1

###############
# Keybindings #
###############

### System Keybindings
bindsym $mod + Return 		exec urxvt
bindsym $mod+d 			exec dmenu_run -sb "#af652f" -x 550 -y 300 -w 250 -h 30 -l 3 -p ">" -hist ~/.config/dmenu2/history
bindsym $mod+g 			exec "googleapps"
bindsym $mod+Shift+c 		reload
bindsym $mod+Shift+r 		restart
bindsym $mod+Shift+e 		exec "i3-exit"
bindsym $mod+Shift+q 		kill
bindsym Print			exec scrot
bindsym $mod+n 			gaps inner all set 0;gaps outer all set 0
bindsym $mod+m 			gaps inner all set $gsi;gaps outer all set $gso

### Audio Keybindings ###
bindsym XF86AudioRaiseVolume 	exec "amixer -q sset Master,0 1+ unmute"
bindsym XF86AudioLowerVolume 	exec "amixer -q sset Master,0 1- unmute"
bindsym XF86AudioMute 		exec "amixer -q sset Master,0 toggle"
bindsym XF86AudioPlay 		exec "cmus-remote -u"
bindsym XF86AudioStop 		exec "cmus-remote -s"
bindsym XF86AudioPrev 		exec "cmus-remote -r"
bindsym XF86AudioNext 		exec "cmus-remote -n"

### Focus Keybindings ###
bindsym $mod+a 			focus parent
# Home row
bindsym $mod+j 			focus left
bindsym $mod+k 			focus down
bindsym $mod+l 			focus up
bindsym $mod+semicolon		focus right
# Arrows
bindsym $mod+Left 		focus left
bindsym $mod+Down 		focus down
bindsym $mod+Up 		focus up
bindsym $mod+Right		focus right

### Workspace Keybindings ###
# Show workspace
bindsym $mod+z			workspace back_and_forth
bindsym $mod+Tab		workspace next
bindsym $mod+1 			workspace 1
bindsym $mod+2 			workspace 2
bindsym $mod+3 			workspace 3
bindsym $mod+4 			workspace 4
bindsym $mod+5 			workspace 5
bindsym $mod+6 			workspace 6
bindsym $mod+7 			workspace 7
bindsym $mod+8 			workspace 8
bindsym $mod+9 			workspace 9
bindsym $mod+0 			workspace 10
# Move to workspace
bindsym $mod+Shift+Tab		move container to workspace next
bindsym $mod+Shift+1 		move container to workspace 1
bindsym $mod+Shift+2 		move container to workspace 2
bindsym $mod+Shift+3	 	move container to workspace 3
bindsym $mod+Shift+4 		move container to workspace 4
bindsym $mod+Shift+5 		move container to workspace 5
bindsym $mod+Shift+6 		move container to workspace 6
bindsym $mod+Shift+7 		move container to workspace 7
bindsym $mod+Shift+8 		move container to workspace 8
bindsym $mod+Shift+9 		move container to workspace 9
bindsym $mod+Shift+0 		move container to workspace 10

### Movement Keybindings
#Home row
bindsym $mod+Shift+j 		move left
bindsym $mod+Shift+k		move down
bindsym $mod+Shift+l		move up
bindsym $mod+Shift+semicolon	move right
# Arrows
bindsym $mod+Shift+Left 	move left
bindsym $mod+Shift+Down 	move down
bindsym $mod+Shift+Up 		move up
bindsym $mod+Shift+Right 	move right

### Layout Keybindings ###
# Layout mode
bindsym $mod+s 			layout stacking
bindsym $mod+w 			layout tabbed
bindsym $mod+e 			layout toggle split
bindsym $mod+f 			fullscreen
# Splitting mode
bindsym $mod+h 			split h
bindsym $mod+v 			split v
# Floating mode
bindsym $mod+Shift+space 	floating toggle
bindsym $mod+space 		focus mode_toggle

### Scratchpad Keybindings ###
bindsym $mod+Shift+minus 	move scratchpad
bindsym $mod+minus 		scratchpad show

#########
# Modes #
#########
mode "resize" {
	# Homerow
        bindsym j 		resize shrink width $rp px or $rp ppt
        bindsym k 		resize grow height $rp px or $rp ppt
        bindsym l 		resize shrink height $rp px or $rp ppt
        bindsym semicolon 	resize grow width $rp px or $rp ppt
	# Arrows
        bindsym Left 		resize shrink width $rp px or $rp ppt
        bindsym Down 		resize grow height $rp px or $rp ppt
        bindsym Up 		resize shrink height $rp px or $rp ppt
        bindsym Right 		resize grow width $rp px or $rp ppt
	# Exit
        bindsym Escape 		mode "default"
}
bindsym $mod+r 			mode "resize"

mode "info" {

	bindsym $mod+b 		exec notify-send -u low "Battery Info" "`acpi -b`";mode "default"
	bindsym $mod+t		exec notify-send -u low "Time" "`date +\"%a %b %-e %-I:%M:%S %p\"`";mode "default"
	bindsym $mod+w 		exec notify-send -u low "Weather" "`getweather -d -t -i -s \" \"`";mode "default"
	bindsym $mod+i 		exec notify-send -u low "Internet" "Connected to `iw dev wlp3s0 link | grep SSID | cut -c 8-`";mode "default"
	bindsym $mod+d 		exec notify-send -u low "Download Speed" "`speedtest --simple`";mode "default"
	bindsym $mod+c 		exec notify-send -u low "CPU" "CPU Usage:$(cpu_usage)%\nTemp:`cut -c 1-2 /sys/bus/platform/devices/coretemp.0/hwmon/hwmon0/temp1_input`C";mode "default"
	bindsym $mod+p 		exec notify-send -u low "Podcasts" "`gpo update | tail -n 1`";mode "default"
	bindsym $mod+e 		exec notify-send -u low "Email" "`checkemail`";mode "default"
        bindsym Escape 		mode "default"
}
bindsym $mod+i 			mode "info"


####################
# Startup Programs #
####################
exec btsync
exec compton --config ~/.config/compton/compton.conf -b
exec nitrogen --restore
exec sudo NetworkManager
exec xfce4-power-manager
exec redshift
exec conky --config="/home/cjbarrac/.conkybar"
exec google-musicmanager
