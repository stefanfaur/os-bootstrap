
# Ubuntu Bootstrap

## Why?

I made this script because I wanted a quick way to configure an Ubuntu install(Kubuntu actually, if in gui mode).
The starting point is an Ubuntu Server image.
It installs a collection of tools I want, and optionally, a desktop environment (KDE Plasma) and the Brave browser, when the "--include-gui" argument is provided.

## Compatibility

So far I've only tested this on Ubuntu Server 22.04 ARM64. Will test on more releases.

## Tools Installed

The default configuration installs the following tools:

-   [nvim](https://neovim.io)
    
-   [tmux](https://github.com/tmux/tmux/wiki)
    
-   [tldr](https://tldr.sh)
    
-   [exa](https://github.com/ogham/exa)
    
-   [hyperfine](https://github.com/sharkdp/hyperfine)
    
-   zsh
    
-   [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) with:
    
    -   tjkirch theme
        
    -   git
        
    -   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
        
    -   [dirhistory](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory)
        
    -   [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile)
        

You can modify the script to fit your needs if you want to install additional or fewer tools.

## Optional Installations

When run with the `--include-gui` argument, the script will also install:

-   KDE Plasma Desktop Environment
    
-   Brave Browser
    

## Usage

To download and run the script, use the following command:

```bash
bash <(curl -s https://raw.githubusercontent.com/stefanfaur/os-bootstrap/main/bootstrap.sh)
```

To include the GUI and Brave browser installation, pass the `--include-gui` argument:
```bash
bash <(curl -s https://raw.githubusercontent.com/stefanfaur/os-bootstrap/main/bootstrap.sh) --include-gui
```
## Note

The script does not run with root privileges. However, most commands in it run with sudo. It'll ask for you password.
