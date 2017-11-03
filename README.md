### STEP 1
Clone the jdotfiles repo.
```
cd ~
git clone git@github.com:jameshu2008/jdotfiles.git
```

### STEP 2
Remove any old dotfiles in the ~ directory and sym-link everything to
jdotifles.
```
cd ~/jdotfiles/bin
bash initial_install.sh
```

### STEP 3
Install vim plugins.
```
cd ~/jdotfiles/bin
bash install_vim_plugins.sh
```

### SSH Access to GitHub
```
cd [directory containing ssh keys]
eval $(ssh-agent)
ssh-add [private key id_rsa]

modify ~/jdotfiles/.ssh/config accordingly
```
