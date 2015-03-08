STEP 1
Clone the jdotfiles repo
        git clone git@github.com:jameshu2008/jdotfiles.git

STEP 2
Use the bash-osx-InitialSetup.sh script to remove any old dotfiles in the ~
directory and sym-link everything to jdotifles.
        bash bash-osx-InitialSetup.sh

STEP 3
Download and refresh vim plugins.
        git submodule foreach git submodule init
        git submodule foreach git submodule update

SSH
        eval $(ssh-agent)
        ssh-add [private key id_rsa]
        modify ~/jdotfiles/.ssh/config accordingly
