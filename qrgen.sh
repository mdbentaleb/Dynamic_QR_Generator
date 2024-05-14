#!/bin/bash

install_qrencode() {
	if [ -x "$(command -v apt-get)" ]; then
		sudo apt-get install -y qrencode
	elif [ -x "$(command -v yum)" ]; then
		sudo yum install -y qrencode
	elif [ -x "$(command -v pacman)" ]; then
		sudo pacman -Sy --noconfirm qrencode
	else
		echo "Cannot install qrencode. Please install it manually."
		exit 1
	fi
}

if ! command -v qrencode &> /dev/null; then
	echo "qrencode is not installed. Attempting to install..."
	install_qrencode
fi

if [ $# -lt 1 ]; then
	echo -e "\e[38;5;214mUsage:\e[0m $0 <URL>"
	exit 1
fi

url=$1

if [ -e qr_code.png ]; then

	max=0
	num=0
	for file in qr_code_*.png; do
		num=$(echo "$file" | awk -F '_' '{print $NF}' | sed 's/[^0-9]*//g')
		if [ -n "$num" ] && [ "$num" -gt "$max" ]; then
			max=$num
		fi
	done
	if [ -n "$num" ]; then
		new_num=$((max + 1))
	else
		new_num=1
	fi
	new_filename="qr_code_${new_num}.png"
else
	new_filename="qr_code.png"
fi

qrencode -s 10 -o "$new_filename" "$url"

if [ -e "$new_filename" ]; then
	echo -e "\e[36mQR code generated successfully: $new_filename\e[0m"
else
	echo "QR code generation failed."
fi
