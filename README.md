# What is it
The script shows a list of useful commands to move data from the attacking machine to a CTF windows machine. I created it to mimimize typos during the process. 

# Installation 
You can clone the repository in your home directory. Once cloned update the script permission `chmod +x ~/gen_path/gen_path.sh`.
Check the list and add or remove the paths based on your configuration. 

# Usage 
The script checks if TUN0 interface is on, if you aren't connected to a vpn via tun0 you can modify row 6 of the script and change `show tun0` with `show [prefered-interface]`.
For easy usage you can add an Alias to your zhs or other shell you prefer. e.g. for zsh: `echo "alias genpath=~/gen_path/gen_path.sh" >> ~/.zshrc`



