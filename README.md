<div align="center">
<h1>rxfetch<h1>
<img src="https://img.shields.io/github/stars/Mangeshrex/rxfetch?color=e57474&labelColor=1e2528&style=for-the-badge"> <img src="https://img.shields.io/github/issues/Mangeshrex/rxfetch?color=67b0e8&labelColor=1e2528&style=for-the-badge">
<img src="https://img.shields.io/static/v1?label=license&message=MIT&color=8ccf7e&labelColor=1e2528&style=for-the-badge">
<img src="https://img.shields.io/github/forks/Mangeshrex/rxfetch?color=e5c76b&labelColor=1e2528&style=for-the-badge">
<br>
<img src="./screenshots/ss.png">
</div>

## About

Custom system fetching tool written in bash script.

## Requirements

- Material design icons as for that pacman and ghost icons.
- You need to put the provided fonts in the fonts directory to get the icons work.
- If wanted you can change the source code of the fetch as per your needs.
- If you already use material-design-icons you can just use the command below to install it.



## Run with curl

If you don't wanna clone this repo or install rxfetch, you can use curl.

```yaml
$ curl https://raw.githubusercontent.com/Mangeshrex/rxfetch/main/rxfetch | bash
```

## Installation

### Arch Linux:

rxfetch is available in the AUR, you can install it with

```yaml
$ yay -S rxfetch
```

also, install the fonts too

```yaml
$ yay -S ttf-material-design-icons
```

### Termux (Android):

Included in main repository, install with:

```yaml
$ pkg in rxfetch
```

### Manual:

- Clone this repository & run rxfetch.

```yaml
# clones the rxfetch repo
$ git clone https://github.com/mangeshrex/rxfetch
# cd into rxfetch
$ cd rxfetch
# copy the fonts 
$ cp ttf-material-design-icons/* $HOME/.local/share/fonts
# update fontconfig
$ fc-cache -fv
$ run rxfetch
$ ./rxfetch
```

> If you have the fonts installed then just run this command.

```yaml
$ wget https://raw.githubusercontent.com/Mangeshrex/rxfetch/main/rxfetch && chmod +x rxfetch
```

- You can also add rxfetch to PATH by placing it in `/usr/local/bin`

```yaml
$ sudo cp rxfetch /usr/local/bin
```

- Upload your custom rxfetch script [ here ](https://github.com/Mangeshrex/rxfetch/issues/21)

## Contributors

<a href="https://github.com/Mangeshrex/rxfetch/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Mangeshrex/rxfetch" />
</a>

Made with [contrib.rocks](https://contrib.rocks).
