#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1="\[\e[91m\][\[\e[m\]\[\e[97m\]\u\[\e[m\]\[\e[91m\]][\[\e[m\]\[\e[97m\]\h\[\[\e[m\]\[\e[91m\]][\[\e[m\]\[\e[97m\]\w\[\e[m\]\[\e[91m\]][\[\e[m\]\[\e[97m\]\\$\[\e[m\]\[\e[91m\]]\[\e[m\]\[\e[97m\]:\[\e[m\] "
LS_COLORS='rs=0:di=01;91:fi=01;97:ln=01;94:mh=00:pi=40;33:so=01;95:do=01;95:bd=40;33;01:cd=40;33;01:or=40;91;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;91:*.sh=01;92:*.tar=01;95:*.tgz=01;95:*.arc=01;91:*.arj=01;91:*.taz=01;91:*.lha=01;91:*.lz4=01;95:*.lzh=01;95:*.lzma=01;95:*.tlz=01;91:*.txz=01;91:*.tzo=01;91:*.t7z=01;95:*.zip=01;95:*.z=01;95:*.dz=01;95:*.gz=01;95:*.lrz=01;95:*.lz=01;95:*.lzo=01;95:*.xz=01;95:*.zst=01;95:*.tzst=01;95:*.bz2=01;95:*.bz=01;95:*.tbz=01;95:*.tbz2=01;95:*.tz=01;95:*.deb=01;91:*.rpm=01;91:*.jar=01;91:*.war=01;91:*.ear=01;91:*.sar=01;91:*.rar=01;91:*.alz=01;91:*.ace=01;91:*.zoo=01;91:*.cpio=01;91:*.7z=01;91:*.rz=01;91:*.cab=01;91:*.wim=01;91:*.swm=01;91:*.dwm=01;91:*.esd=01;91:*.jpg=01;96:*.jpeg=01;96:*.mjpg=01;96:*.mjpeg=01;96:*.gif=01;96:*.bmp=01;96:*.pbm=01;95:*.pgm=01;95:*.ppm=01;95:*.tga=01;95:*.xbm=01;95:*.xpm=01;95:*.tif=01;96:*.tiff=01;96:*.ff=01;96:*.png=01;96:*.svg=01;96:*.svgz=01;95:*.mng=01;95:*.pcx=01;95:*.mov=01;91:*.mpg=01;91:*.mpeg=01;91:*.m2v=01;91:*.mkv=01;91:*.webm=01;91:*.webp=01;95:*.ogm=01;95:*.mp4=01;91:*.m4v=01;91:*.mp4v=01;91:*.vob=01;95:*.qt=01;95:*.nuv=01;95:*.wmv=01;95:*.asf=01;95:*.rm=01;95:*.rmvb=01;95:*.flc=01;95:*.avi=01;91:*.fli=01;95:*.flv=01;95:*.gl=01;95:*.dl=01;95:*.xcf=01;95:*.xwd=01;95:*.yuv=01;95:*.cgm=01;95:*.emf=01;95:*.ogv=01;95:*.ogx=01;95:*.aac=00;36:*.au=00;36:*.flac=00;32:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;32:*.mpc=00;36:*.ogg=00;32:*.ra=00;36:*.wav=00;32:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
if [ "$TERM" = "linux" ]; then
setterm -foreground white -background black -bold on -store
fi
rm -f "/home/animo/.bash_history"
rm -f "/home/animo/.lesshst"
rm -f "/home/animo/.wget-hsts"
function cd {
builtin cd "$@" && ls -a
}
