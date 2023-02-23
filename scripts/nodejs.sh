NVM_SYMLINK_CURRENT="true"

export NVM_DIR="/opt/environments/nodejs" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/install.sh"

sudo cp ../profile.d/nodejs.sh /etc/profile.d/

source /etc/profile.d/nodejs.sh

#if [[ -x "$nvm"]]
#then
     echo "----- Successfully setup Nodejs [nvm] environment ------- "
#else 
#     echo "----- Setup Nodejs [nvm] environment failed       ------- "
#fi
