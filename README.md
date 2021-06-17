
- Custom System Fetching tool which is very simple created in bash

# Screenshots
<img src="https://raw.githubusercontent.com/Mangeshrex/rfetch/main/screenshots/void2.png">


# Requirements 
- Material design icon's as for that pac-man and ghost icons. 
- You need to put the provided fonts in the fonts directory to get the icons work. 
- If wanted you can change the source code of the fetch as per your needs. 
- If you already use material-design-icons you can just use the above command to install it.  
- Soon rxfetch will be available in the AUR for arch/arch-based users. 

# Installation 

 ```
 wget https://raw.githubusercontent.com/Mangeshrex/rxfetch/main/rxfetch
 ```

 (make the file executable and put rfetch in /bin or your PATH)

 ```chmod +x rxfetch```
 ```sudo cp $HOME/rxfetch /usr/bin ```

# Supported OS
- Ubuntu
- CentOS
- Arch
- Arco
- Debian
- Manjaro

# Contributing

You can help me to support more distro by runing this code (It get your DISTRIB_ID=) and start an issue with the output. Thanks!

```awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]'```
