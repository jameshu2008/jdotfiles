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
cd ~/jdotfiles
bash bash-osx-InitialSetup.sh
```

### STEP 3
Download and refresh vim plugins.
```
cd ~/jdotfiles
git submodule update --init --recursive
```

### SSH Access to GitHub
```
cd [directory containing ssh keys]
eval $(ssh-agent)
ssh-add [private key id_rsa]

modify ~/jdotfiles/.ssh/config accordingly
```
