#1/bin/sh
pacman -Qe | awk '{print $1}' > package_list.txt
pacman -Qm | awk '{print $1}' > package_list_aur.txt
