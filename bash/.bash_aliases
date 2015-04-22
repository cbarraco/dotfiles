alias l='ls --human-readable --group-directories-first --size --color'
alias ll='ls -l --human-readable --group-directories-first --size --color'
alias nyaah='nyaa --sort=leech --output-path=/home/cjbarrac/Downloads/nyaa HorribleSubs 720'
alias cpu_usage="top -d 0.5 -b -n 2 | grep Cpu | tail -n 1 | cut -c 1-24 | awk '{print \$3}'"
alias fdu="du -ahd 1 | sort -hr"
alias alsamixer="alsamixer -g"
alias pacaur='pacaur --color always'
alias saltybet='livestreamer http://www.twitch.tv/saltybet source --player mpv'
alias marvin='sshfs -o IdentityFile=/home/cjbarrac/.ssh/id_rsa -p 4242 download@192.168.0.11:/home/ /home/cjbarrac/Marvin'
alias school='gcalcli --calendar="School" quick'
alias xres='vim ~/.Xresources && xrdb -merge ~/.Xresources'
alias bigfiles='find . -size +250M -exec ls --size -h {} \+ | sort -rh'

# My functions
killorphans() {
	if [[ ! -n $(pacaur -Qdt) ]]; then
		echo "No orphans to remove."
	else
		pacaur -Rns $(pacaur -Qdtq)
	fi
}
pdf4up() {
	pdfnup $1 --scale 0.9 --frame true --landscape --nup 2x2 --outfile '4up-$1'
}
pdf2up() {
	pdfnup $1 --scale 0.9 --frame true --no-landscape --nup 1x2 --outfile '2up-$1'
} 
dlwebsite() {
	wget --random-wait -r -p -e robots=off -U mozilla $1
}
gacpm() {
	git add . && git commit -m "$1" && git push origin master
}
