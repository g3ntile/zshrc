# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Google cloud API key
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.keys/wav2srt-e4844fef1c38.json

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="half-life"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±

# Keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "On" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"


# mis opciones:
setopt extendedglob

# mis alias

## replace youtube-dl with yt-dlp
alias youtube-dl=yt-dlp -f bv+ba/b 
alias ydl="youtube-dl --all-subs -i --convert-subs srt "
alias ydlmp4="youtube-dl --all-subs -i --convert-subs srt --recode-video mp4 --embed-subs" 
alias ydl4=ydlmp4
# with keep:
alias ydlk4="youtube-dl -k --all-subs -i --convert-subs srt --recode-video mp4 --embed-subs"

# download playlist:
alias ydlp='ydl -o "%(playlist_autonumber)s %(title)s.%(ext)s" '

alias lo="ls -Orbitlake@ "
# -O      Include the file flags in a long (-l) output.
# -r      Reverse the order of the sort to get reverse lexicographical order or the oldest entries first (or largest files last, if combined with sort by size
# -B      Force printing of non-printable characters (as defined by ctype(3) and current locale settings) in file names as \xxx, where xxx is the numeric value
#	  of the character in octal.
# -b	  but use C escape codes whenever possible.
# -i      For each file, print the file's file serial number (inode number).
# -t      Sort by time modified (most recently modified first) before sorting the operands by lexicographical order.
# -l      (The lowercase letter ``ell''.)  List in long format.  (See below.)  If the output is to a terminal, a total sum for all the file sizes is output on
#         a line before the long listing.
# -a      Include directory entries whose names begin with a dot (.).
# -k      If the -s option is specified, print the file size allocation in kilobytes, not blocks.  This option overrides the environment variable BLOCKSIZE.
# -e      Print the Access Control List (ACL) associated with the file, if present, in long (-l) output.
# -@      Display extended attribute keys and sizes in long (-l) output.

# filter directory, usage:
# llg filter

alias llg="ls | grep -i "
alias filtro=llg

# ABREVIACIONES

typeset -Ag abbreviations
abbreviations=(
  "Im"    "| more"
  "Ia"    "| awk"
  "Ig"    "| grep"
  "Ieg"   "| egrep"
  "Iag"   "| agrep"
  "Igr"   "| groff -s -p -t -e -Tlatin1 -mandoc"
  "Ip"    "| $PAGER"
  "Ih"    "| head"
  "Ik"    "| keep"
  "It"    "| tail"
  "Is"    "| sort"
  "Iv"    "| ${VISUAL:-${EDITOR}}"
  "Iw"    "| wc"
  "Ix"    "| xargs"
  "psa"   "ps acx | grep"
)

magic-abbrev-expand() {
    local MATCH
    LBUFFER=${LBUFFER%%(#m)[_a-zA-Z0-9]#}
    LBUFFER+=${abbreviations[$MATCH]:-$MATCH}
    zle self-insert
}

no-magic-abbrev-expand() {
  LBUFFER+=' '
}

zle -N magic-abbrev-expand
zle -N no-magic-abbrev-expand
bindkey " " magic-abbrev-expand
bindkey "^x " no-magic-abbrev-expand
bindkey -M isearch " " self-insert

#################################################


alias ocr=tesseract
alias ff="ffmpeg -i"
alias ngffmpeg="noglob ffmpeg"

	# alias snips="cless -l zsh ~/snippets"
alias snips="less ~/snippets"

# run a command on all files in current folder
function runinfolder() { for file in *.* ; do ; eval '"${1}" "$file" ' ; done } 


# ffmpeg
alias ffmkv="ffmpeg -i *.mkv -vf subtitles=in.srt -acodec copy -sn out.mkv"
alias ffmp4=" ffmpeg -i *.mp4 -vf subtitles=in.srt -acodec copy -sn out.mp4"
alias ffavi="ffmpeg -i *.avi -vf subtitles=in.srt -acodec copy -sn out.mkv"
# uso: ffjpg [prefijo_antes_del_numero_] 
function ffjpg() { ffmpeg -y -r 24 -i "$@"%4d.jpg -pix_fmt yuv420p ../${PWD:t}_"$@".mp4 }
function ffpng() { ffmpeg -y -r 24 -i "$@"%4d.png -pix_fmt yuv420p -r 24  ../${PWD:t}_"$@".mp4 } 

## strip audio and recompress:
function ffnoaudio () { ffmpeg -i $1 -an ${1:r}_media.mp4 }

function ffmp3() { ffmpeg -i $1 -b:a 320k ${1:r}.mp3 } 

function ffwav() { ffmpeg -i $1 ${1:r}.wav } 

# ffmux
# combina un video y un audio en un solo video sin reencodear el video
# uso: ffmux videofile.mp4 audiofile.wav

function ffmux() { ffmpeg -i $1 -i $2 -vcodec copy ${1:r}_muxed.mp4 }

# extract subs
function esub() { ffmpeg -i $@ ${@:r}.srt }

# gifs
# alias ffgif="ffmpeg -r 12 -i %4d.png -r 12 -gifflags +transdiff _out.gif"
function ffgif() { ffmpeg -r 12 -i $1%4d.png -r 12 -gifflags +transdiff _out.gif } 

# ffgif2 inputfiles infps outfps width
function ffgif2() { ffmpeg -r $2 -i $1 -vf "fps=$3,scale=$4:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 __${1:r}.gif } 

alias ffpnghd="ffmpeg -r 24 -i %04d.png -vf scale=1920x1080 -pix_fmt yuv420p _outhd.mp4"


function ffrendersub() { \
	my___duration=($(grep "\d" $1  ) ) ;  \
	dur=$my___duration[-1] ; \
	A=("${(@s/:/)dur}") ; \
	segundos=("${(@s/,/)A[3]}") ; segundos=$segundos[1] ; \
	minutos=$A[2] ; \
	horas=$A[1] ; \
	sec_totales=$(( $horas*3600+$minutos*60+$segundos )) ; \
	// 
	ffmpeg -f lavfi -i color=c=black:s=1920x1080:d=$sec_totales -vf subtitles=$1 ${1:r}.mp4 ; \
	}

###########################################################

# Make Storyboard:
# makestory <input imgs, quote wildcards '*.png' (default)> <outputStory.jpg (default: __Story.jpg)> 

function makestory() { montage -label '%t' -font Helvetica -compose copy -background ${3:=white} -bordercolor grey -border 2 -fill gray -define jpeg:size=400x400 -geometry 400x400+14+14 -auto-orient ${1:='*.png'} ${2:=__Story.jpg} }    

function storypng() { makestory '*.png' $1 } 

alias story=makestory 


# gif from png: cvgif 8 (el numero es el delay entre frames)
function cvgif() { convert -delay "$@" *.png  -layers OptimizeFrame  _out.gif } 

prevman() { man -t "$@" | open -f -a /Applications/Preview.app ;}
alias top="top -F -R -o cpu -s 5"
alias topreview="open -f -a /Applications/Preview.app"
alias bc="bc -l"
mycal() { cal | grep --before-context 6 --after-context 6 --color -e " $(date +%e)" -e "^$(date +%e)" } 

alias dnxhd="for file in *.MTS ; do ffmpeg -i $file -c:v dnxhd -b:v 115M -s 1920x1080 -pix_fmt yuv422p   ${file:r}.mov ; done"

alias mraw='md __RAW ; mv *.RW2 __RAW/'

# global alias
alias -g L="|less"

# SPOTLIGHT
# DESHABILITAR SPOTLIGHT
alias nospot="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"

# rehabilitar
alias sispot="sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"

# funciones
killme() { ps -acx | grep "$@" | awk '{print $1}'| xargs kill ;}
benice() { ps acx | grep "$@" | awk '{print $1}' | xargs renice +20 ;}
lsize() { ls -lh **/*(Lm+$1) } 
calc () { echo $(($1)) ;}
# fff(file) { fileext=${filename##*.}  ; ffmpeg -i $file -vf subtitles=in.srt -acodec copy -sn out.$fileext }

ffppt() { ffmpeg -i "$@" -q:a 2 -q:v 4 -vcodec wmv2 -acodec wmav2 "$@"_ppt.avi } 

# hace una versión en baja del video a mitad de resolución
ffhalf() { ffmpeg -i "$@" -vf scale=iw/2:ih/2 ${@:t:r}_baja.mp4 } 

# convert video a 1080p
function ffhd() { ffmpeg -i "$@" -vf scale=1920:1080 -c:v libx264 -crf 18 -pix_fmt yuv420p ${@:r}_1080p.${@:e}  }  

# extract subs from mkv
function ffsrt() { for file in *.mkv ; do ; ffmpeg -i $file ${file:r}.srt ; done }

# png a video de x segundos
function png2mp4() { { ffmpeg -loop 1 -framerate 10 -i $2 -t $1 -r 25 -pix_fmt yuv420p ${2:r}.mp4 } } 

# crea versiones en extra baja para vista previa  de todos los videos de la carpeta
function ffpreview() { md __preview ; for file in *.(MOV|MP4) ; do ffmpeg -i $file -vf scale=iw/4:ih/4 __preview/${file:r}_prev.mp4 ; done } 






#
# --------------------
# imagenes a slideshow
# --------------------
#
# convierte una serie de imagenes a un video con crossfade donde cada imagen dura $A, la tansición dura $B
#
# parametros: filename duracion_cada_imagen duracion_transiciones ANCHOxALTO zoomratio
# ej: imgs2slideshow img_%02d.png 2 1 768x576 0.01

function imgs2slideshow_help() { echo parametros: filename duracion_cada_imagen duracion_transiciones ANCHOxALTO zoomratio ; echo  ej: imgs2slideshow img_%02d.png 2 1 768x576 0.01 } 

function imgs2slideshow() { files=$1 ; A=$2 ; B=$3 ; WxH=$4 ; noglob ffmpeg -i $files -vf zoompan=d=($A+$B)/${B}:s=$WxH:fps=1/$B,framerate=25:interp_start=0:interp_end=255:scene=100 -pix_fmt yuv420p ${files:r}.mp4  } 

function imgs2slideshowzoom() { files=$1 ; A=$2 ; B=$3 ; WxH=$4 ; myz=$5 ; noglob ffmpeg -i $files -vf zoompan=z='zoom+'$myz:d=($A+$B)/${B}:x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':d=($A+$B)/${B}:s=$WxH:fps=1/$B,framerate=50:interp_start=0:interp_end=255:scene=100 -pix_fmt yuv420p -r 25 ${files:r}.mp4  }


###############
# drone
# crea una vista previa en baja pasando de d-log a rec709 
function mavicpreviewdlog() { ffmpeg -i $@ -n -vf "lenscorrection=k1=-0.05, lut3d=$HOME/lut/DLogM2Rec709_edit.cube , scale=1920x1080, pp=al" -pix_fmt yuv420p ${@:r}_rec_baja_k.mp4 ; ln ${@:r}.SRT ${@:r}_rec_baja_k.srt  } 



# varias imagenes a video, cada png está x segundos
## uso: imgs2mp4 [duracion] [inputfiles] [outputfiles] 
## el filename tiene que estar en %04d.x format
## ejemplo: imgs2mp4 5 Protesis_%3d.png out.mp4
function imgs2mp4() { { ffmpeg  -framerate $(( 1. / $1 )) -i $2  -r 25 -pix_fmt yuv420p $3 } }


# muestra data de un stream de video
alias vdata="ffmpeg -i "  

####################################
# HACE PROXIES EN BAJA RECURSIVOS DE TODOS LOS MOV Y MTS DE UNA CARPETA
alias makeproxies=" mkdir __baja ; for file in **/*.(MTS|MOV) ; do ; ffmpeg -i $file -vf scale=1280x720 __baja/${file:t:r}.mp4 ; done "

# mcd() { md $1 ; cd $1 }

clonehdrs() { for file in /Volumes/Black/_ARTE/_RECURSOS/3D/TEMPLATES/3D/images/hdraliases/*.hdr ; do; ln $file; done }

# guess illustrator version
function whichai() { head -n 60 "$@" | grep Creator ;}
 
# encode base64 con tag
function img64() { { printf '<img src="data:image/jpg;base64,' ; base64 -i "$@"  ; printf '">' } | pbcopy }

function jpg64() { { printf '<img src="data:image/jpg;base64,' ; base64 -i "$@"  ; printf '">' } | pbcopy }
function png64() { { printf '<img src="data:image/png;base64,' ; base64 -i "$@"  ; printf '">' } | pbcopy }

# montar NTFS con 3g
alias ldisk="diskutil list | grep "

function ntmount() { sudo mkdir /Volumes/NTFS ; sudo /usr/local/bin/ntfs-3g /dev/disk"$@" /Volumes/NTFS -olocal -oallow_other } 

# EXTRAER TODAS LAS IMAGENES DE UN ARCHIVO DE OFFICE:
function officeimages() { unzip -d $@_folder -j $@ "**.png" "**.jpg" "**.jpeg" "**.PNG" "**.JPG" "**.JPEG" } 
function officeimages2() { unzip -d $@_folder -j $@ "**.png" "**.jpg" "**.jpeg" "**.PNG" "**.JPG" "**.JPEG"; for file in $@_folder/*.* ; do ; mv $file $@_folder/${@:r:t}_${file:t}; done }

# descarga todas las imagenes de un sitio mirrored:
alias suck="wget -A jpeg,jpg,gif,png -m -p -E -k -K -np " 
alias sucknr="wget -A jpeg,jpg,gif,png -m -p -E -k -K -np -e robots=off "


# webm2mp4
alias webm2mp4="for file in *.webm ; do ; ffmpeg -i $file ${file:r}.mp4 ; done"

# GH2:
#  alias dumpgh2="cp -nv **/*.(MTS|RW2|MOV|JPG|JPEG) "

# dumpgh2() { for file in **/*.(MTS|RW2|MOV|JPG|JPEG) ; do ; cp -nv $file $@/${file:t:r}_$(date '+%s').${file:e} ; done }
dumpgh2() { cp -nv **/*.(RW2|MOV|JPG|JPEG) $@/ ; for file in **/*.MTS ; do ; cp -nv $file $@/$(([##36]$(date '+%s')))_${file:t} ; done }

dumpmts() { for file in **/*.MTS ; do ; cp -nv $file $@/$(([##36]$(date '+%s')))_${file:t} ; done }

# extract exif
function exifdump() { exiftool $@ > ${@:r}.txt } 
function exifdumpr() { for file in *.* ; do exifdump $file ; done } 

# function exifdumpgamma() { exiftool $@ | grep Gamma  > ${@:r}.txt }
function exifdumpgamma() { myvar=$(exiftool $@ | grep Gamma) ; echo ${myvar[(ws/:/)2]} > ${@:r}.txt } 

function exifdumpgammar() { for file in *.* ; do exifdumpgamma $file ; done }

# get main camera data:
function getcamera() { exiftool $1 | grep 'camera\|lens\ id\|aperture\|F\ Number\|ISO\|Focal\ Length' }


# saca el Style de un clip de video
function gh4guess () { exiftool $@ | grep Style } 

# rename unique
# renames all files appending a timestamp in seconds after the name to make each unique
# uniq() { for file in *.*$@ ; do mv $file ${file:r}_$(date '+%s').${file:e} ; done } 
uniq() { for file in *.*$@ ; do mv $file $(([##36]$(date '+%s')))_${file} ; done }
# hex=$(([##16]dec))

# GET LOCAL LAN IP
## alias myip="ipconfig getifaddr en0"
alias myip="route -n get default | grep interface | awk '{ print \$2 }' | xargs ipconfig getifaddr"


# ACCEDER A LA SD DE VALERIA
alias sdvale=/volumes/osx/volumes/untitled/

#################################################
# Exportar varias medidas A desde un pdf

# uso: pdfAp "nombre_de_archivo_sin_comillas.pdf"
# el pdf de origen puede tener cualquier tamaño "A" y tiene que 
# estar exportado SIN PRESERVE ILLUSTRATOR
function pdfAp() {  cpdf -scale-to-fit a6portrait $@ -o ${@:r}_A6p.pdf ; \ 
	 cpdf -scale-to-fit a5portrait $@ -o ${@:r}_A5p.pdf ; \
	 cpdf -scale-to-fit a4portrait $@ -o ${@:r}_A4p.pdf ; \
	 cpdf -scale-to-fit a3portrait $@ -o ${@:r}_A3p.pdf ; \
	 cpdf -scale-to-fit a2portrait $@ -o ${@:r}_A2p.pdf ; \
	 cpdf -scale-to-fit a1portrait $@ -o ${@:r}_A1p.pdf ; \
	 cpdf -scale-to-fit a0portrait $@ -o ${@:r}_A0p.pdf  } 
######
function pdfAl() {  cpdf -scale-to-fit a6landscape $@ -o ${@:r}_A6l.pdf ; \ 
         cpdf -scale-to-fit a5landscape $@ -o ${@:r}_A5l.pdf ; \
         cpdf -scale-to-fit a4landscape $@ -o ${@:r}_A4l.pdf ; \
         cpdf -scale-to-fit a3landscape $@ -o ${@:r}_A3l.pdf ; \
         cpdf -scale-to-fit a2landscape $@ -o ${@:r}_A2l.pdf ; \
         cpdf -scale-to-fit a1landscape $@ -o ${@:r}_A1l.pdf ; \
         cpdf -scale-to-fit a0landscape $@ -o ${@:r}_A0l.pdf  }


function f2cbz() { zip ../${PWD:t}.cbz *.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF) } 

#
#################################
# convierte el video en alta pasado como parametro a dos versiones
# una en media calidad en mp4 default y la otra en baja 
function mymp4s() { ffmpeg -i $1 -pix_fmt yuv420p ${1:t:r}_media.mp4 -vf scale=iw/2:ih/2 -pix_fmt yuv420p ${1:t:r}_baja.mp4 -vf scale=iw/3:ih/3 -pix_fmt yuv420p ${1:t:r}_masbaja.mp4 }


function ffwa() { ffmpeg -i $1 -pix_fmt yuv420p  -vf scale=640x360 -b:v 256k -b:a 128k ${1:t:r}_whatsapp.mp4 }

#
#################################
# Convierte el ultimo video modificado en mp4s
#
function mymp4ss() { for file in *(om[1,1]) ; do ; mymp4s $file ; done  }


#################################
# convierte cualquier video en mp4
# uso:
# 2mp4 file.mov
#
function 2mp4() { ffmpeg -i $1 ${1:r}.mp4 }

#################################
# video a WAV
function 2wav() { ffmpeg -i $1 ${1:r}.wav }

#################################
# CONVIERTE UN VIDEO EN UN VECTORSCOPE Y UN WAVEFORM
# uso: v2scopes filename.mp4 ext

function v2scopes() { ffmpeg -i $1 -vf waveform="d=overlay:g=green:s=ire:flags=numbers" -an  ${1:t:r}_waveform$2 -vf vectorscope=m=gray:g=green -an ${1:t:r}_vectorscope$2 -vf waveform=d=parade:g=green:s=ire:c=7 -an ${1:t:r}_parade$2 } 




##################################################
# FUNCION PARA COMBINAR IMAGENES EN EXR EN MOTION BLUR FORZADO DE X FOTOGRAMAS A Y FPS
function fforcemb() { \
	# 1 combinar cada x frames \
	ls *.exr | xargs -n $1 sh -c 'convert "$0" "$@" -average -gamma 2.0 "$0".png ' ; \
	# 2 renombrar los pngs de modo mas conveniente \
	myindex=1 ; for file in *.png ; do mv $file frame_$((myindex++)).png ; done ; \
	# 3 render el video \
	ffmpeg -r $2 -i frame_%d.png -pix_fmt yuv420p __output_mb.mp4 } 


function fforcemb180() {  ls *.exr | xargs -n $1 sh -c 'convert "$0" "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9"  -average -gamma 2.0 "$0".png ' ;    myindex=1 ; for file in *.png ; do mv $file frame_$((myindex++)).png ; done ;  ffmpeg -r $2 -i frame_%d.png -pix_fmt yuv420p __output_mb_180_.mp4 ; } 

#
#
function nobrackets() { for file in * ; do ; mv "$file" "$(sed -E 's:( \[.*\])::g' <<< $file)" ; done } 




# PDF A CURVAS
# uso: pdf2curves file.pdf
function pdf2curves() { gs -o ${@:r}_CURVAS.pdf -dNoOutputFonts -sDEVICE=pdfwrite $@ }

# todos los pdfs a curvas:
function pdfs2curves() { md _CURVAS ; for file in *.pdf ; do ; \
	gs -o _CURVAS/${file:r}_CURVAS.pdf -dNoOutputFonts -sDEVICE=pdfwrite $file ; done } 

### CONVIERTE TODAS LAS IMAGENES DE LA CARPETA EN TAGS IMG EN BASE64
function b64all() { for file in *.(jpg|png|gif) ; do ;  echo "<img src=\"data:image/${file:e};base64,  " > ${file:r}_${file:e}_base64.htm ; base64 $file >> ${file:r}_${file:e}_base64.htm ; echo "\" >" >> ${file:r}_${file:e}_base64.htm ; done } 

### IMG INFO
alias imginfo="identify -verbose "
function imggamma() { imginfo $@ | grep Gamma } 

### PYTHON
alias py=python3

### linkall
function linkall() { for file in $@ ; do ; ln -f $file ; done } 

###
false gif to webp to gif
function gifwebpgif() { for file in *.gif ; do ; mv $file $file.webp ; done ; mogrify -format gif *.webp }

function jpgwebpjpg() { for file in *.jpg ; do ; mv $file $file.webp ; done ; mogrify -format jpg *.webp }

# MOGRIFY
alias mogif="mogrify -format gif "
alias mojpg="mogrify -format jpg "

### 
### python audio to subtitile script
alias wav2srt="python3 /usr/local/bin/wav2srt.py"

###
# create CBZ from image folder:
function folder2cbz() { zip ../${PWD:t}.cbz *.(jpg|JPG|jpeg|JPEG|png|PNG) } 


###
# extract all thumbnails from nested .RW2 files:
function extractRW2() { for file in **/*.RW2 ;  do ; md ${file:h}/__jpg ; ufraw-batch --out-path=${file:h}/__jpg --embedded-image $file ; done } 

###
# extract pdf images via xpdf's pdfimges:
function mypdfimages () { mkdir ${1:t:r} ; pdfimages -j $1 ${1:t:r}/${1:t:r} } 

###
# REALESRGAN
function upscale() { python ~/GIT/Real-ESRGAN/inference_realesrgan.py -n RealESRGAN_x4plus -i $@ -o ${@:r}_realesrgan-x4plus_x4.png  } 

### FIX FACES + UPSCALE
function fixface() { mkdir $1/_fixed ;  python ~/GIT/GFPGAN/inference_gfpgan.py -i $1 -o $1/_fixed/ -v 1.3 -s 4 } 


###
alias please=sudo

# EBOOK CONVERT CALIBRE
alias ebook-convert=/Applications/calibre.app/Contents/MacOS/ebook-convert

# convierte un ebook en epub y mobi
function myebooks() { ebook-convert $1 ${1:r}.epub ; ebook-convert $1 ${1:r}.mobi }

# PYTHON
# Logopy CLI:
alias logopy="logopycli.py -s ./example_scripts/ gui"


mycal
fortune
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/g3ntile/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/g3ntile/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/g3ntile/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/g3ntile/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/g3ntile/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/g3ntile/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/g3ntile/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/g3ntile/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# For tkinter 
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
