.dotfiles
=========
Your dotfiles are how you personalize your system. This repository contains all my dotfiles.

installation
------------

The installation of the dotfiles requires GNU Stow. On a debian system:

```sh
sudo apt-get update && sudo apt-get install stow -y
```
Clone the repository:

```sh
git clone https://github.com/adaxi/.dotfiles.git ~/.dotfiles

```
You can either install all dotfiles by running the following command:

```sh
cd ~/.dotfiles
./install.sh
```

Or you can install specific files. For example if you only want to get my vim configuration:

```
cd ~/.dotfiles
stow vim
```


inspiration
-----------
This was inspired by an article by Brandon Invergo, which recommends using 
GNU Stow to manage your dotfiles.

The article is available at the following URL:
http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html?round=two

This repository is cloned by my ansible playbook when building my day to day machine.
