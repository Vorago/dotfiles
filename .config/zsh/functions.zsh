function decode() {
	echo "$1" | base64 --decode | setclip
}