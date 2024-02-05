# 🧰 pathedit
###### PATH management tool for Linux & macOS

## Supported shells

| Shell | Support |
|-------|---------|
| bash  | Yes     |
| zsh   | Yes     |
| csh   | ✓       |
| ksh   | ✓       |
| sh    | ✓       |
| tcsh  | ✓       |
| fish  | ✘       |

> In case your favorite shell is not on the list — you may create an issue requesting it: [#2](https://github.com/arschedev/pathedit/issues/2)

## Installation
#### Universal
```sh
curl https://raw.githubusercontent.com/arschedev/pathedit/main/scripts/install.sh | bash
```

#### Debian / Ubuntu / Linux Mint
[📥 deb package](https://raw.githubusercontent.com/arschedev/pathedit/main/packages/pathedit_noarch.deb)

#### Red Hat / CentOS / Fedora / openSUSE
[📥 rpm package](https://raw.githubusercontent.com/arschedev/pathedit/main/packages/pathedit_noarch.rpm)

#### Arch Linux / Manjaro
[📥 pacman package](https://raw.githubusercontent.com/arschedev/pathedit/main/packages/pathedit_noarch.pkg.tar.zst)
```sh
sudo pacman -U pathedit_noarch.pkg.tar.zst
```

#### macOS
[📥 pkg installer](https://github.com/arschedev/pathedit/raw/main/packages/pathedit_noarch.pkg)
> The package might not always provide the latest version

### Manually
```sh
git clone https://github.com/arschedev/pathedit.git
cd pathedit
sudo mv ./src/pathedit /usr/local/bin/pathedit
sudo chmod +x /usr/local/bin/pathedit
rm -rf ../pathedit
```

#### Previous releases
[🔗 Releases](https://github.com/arschedev/pathedit/releases)

## Usage
```
Usage: pathedit [MODE | COMMAND] [PATH]

    Mode:
        +,  add		add to PATH
        -,  rm		remove from PATH
        --, rmf		force remove from PATH 
        brm		remove binary path from PATH 

    Command:
        -l, -list	list PATH
        -r, -reveal	reveal ~/.bashrc
        -P, -profile	reveal ~/.profile
        -v, -version	print version
        -h, -help	print this message

    Shortcuts:
        <mode> current	add/remove current directory from PATH

    Examples:
        pathedit add ~/bin/jdk/bin	add ~/bin/jdk/bin to PATH
        pathedit rm  ~/bin/jdk/bin	remove ~/bin/jdk/bin from PATH
        pathedit rmf /usr/local/games	force remove /usr/local/games from PATH
					-> PATH=${PATH/':/usr/local/games'/}
        pathedit brm java		remove java path from PATH
					-> force remove ~/bin/jdk/bin
        pathedit add current		add current directory to PATH
        pathedit rm  current		remove current directory from PATH
        pathedit rmf current		force remove current directory from PATH
        pathedit -list			print all directories listed in PATH
        pathedit -profile		open ~/.profile on PATHEDIT line
        pathedit -reveal		open ~/.bashrc on PATHEDIT line
	
```

## Uninstallation
```sh
sudo rm /usr/local/bin/pathedit
```
