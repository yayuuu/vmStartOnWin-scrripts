# vmStartOnWin-scrripts

Prerequisites:

Linux:

looking-glass-client

scream client

xclip

sshfs



Windows:

wsl1

looking-glass-host

scream drivers



Installation:

Linux:

copy files from linux_host to your home user directory

edit all files and change IP address and username manually



Windows:

Set default WSL user to root (this will let you start ssh server on windows login without asking for password)

Copy files from wsl_client/etc to your wsl filesystem

Copy files from wsl_client/bin to your user's home directory under ~/bin

Copy files from windows_client/c to your C disk in windows

Edit autostart.reg file and set your windows user's username and password - this will enable autologin in your windows VM



IMPORTANT!!!

Also remove "Shell"="cmd.exe /C start C:\\SSH\\ssh_start.vbs" if you do not want to remove your windows shell entirely!

Instead press windows key > run and type shell:startup then place a shortcut to ssh_start.vbs here.



run autostart.reg

run edge_redirect.reg



Install SSH keys so you can connect from your linux host to windows VM without password
