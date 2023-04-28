# 🧰 pathedit
###### PATH management tool for Linux

## Installation
#### Universal
```sh
curl https://raw.githubusercontent.com/arschedev/pathedit/main/scripts/install.sh | bash
```

#### Debian / Ubuntu
[📥 .deb package](https://raw.githubusercontent.com/arschedev/pathedit/main/packages/pathedit_noarch.deb)

#### RedHat / Fedora
📥 [.rpm package](https://raw.githubusercontent.com/arschedev/pathedit/main/packages/pathedit_noarch.rpm)

#### Manually
1. Download pathedit ([`/src/pathedit`](https://raw.githubusercontent.com/arschedev/pathedit/main/src/pathedit))
1. Open download directory in your Terminal
1. Type `sudo mv ./pathedit /usr/local/bin/pathedit` to make it global
1. Then `sudo chmod +x /usr/local/bin/pathedit` to mark it as executable
1. `pathedit` was successfully installed!

#### Previous Releases
[🔗 Releases](https://github.com/arschedev/pathedit/releases)

## Usage
```
Usage: pathedit <mode|command> <path>

    Mode:
	+,  add		add to PATH
	-,  rm		remove from PATH
	--, rmf		force remove from PATH
	brm		remove binary path from PATH

    Command:
	-l, -list	list PATH
	-r, -reveal	reveal .bashrc
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
	pathedit -reveal		open ~/.bashrc on PATHEDIT line

```

## Uninstallation
#### Universal
```sh
curl https://raw.githubusercontent.com/arschedev/pathedit/main/scripts/uninstall.sh | bash
```

#### Manually
1. `sudo chmod -x /usr/local/bin/pathedit`
1. `sudo rm /usr/local/bin/pathedit`
