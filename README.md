# 🧰 pathedit
###### PATH management tool for Linux (or macOS)

## Installation
#### Manual
1. Download pathedit (`src/pathedit`)
1. Open download directory in your Terminal
1. Type `sudo mv ./pathedit /usr/bin/pathedit` to make it global
1. Then `sudo chmod +x /urs/bin/pathedit` to mark it as executable
1. `pathedit` was successfully installed!

###### To uninstall just type `sudo rm /usr/bin/pathedit` in your Terminal

## Usage
```
Usage: pathedit <mode|command> <path>

    Mode:
        +,  add		    add to PATH
        -,  rm		    remove from PATH
        --, rmf		    force remove from PATH
        brm		        remove binary path from PATH

    Command:
        -l, -list	    list PATH
        -r, -reveal	    reveal .bashrc
        -v, -version	print version
        -h, -help	    print this message


    Examples:
        pathedit add ~/bin/jdk/bin	    add ~/bin/jdk/bin to PATH
        pathedit rm  ~/bin/jdk/bin	    remove ~/bin/jdk/bin from PATH
        pathedit rmf /usr/local/games	force remove /usr/local/games from PATH
					                    -> PATH=${PATH/':/usr/local/games'/}
        pathedit brm java		        remove java path from PATH
					                    -> force remove ~/bin/jdk/bin
        pathedit -list			        print all directories listed in PATH
        pathedit -reveal		        open ~/.bashrc on PATHEDIT line

```
