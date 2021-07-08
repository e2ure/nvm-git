export NVM_DIR=$HOME/.nvm;
source $NVM_DIR/nvm.sh;

echo "installing node version ${1}"
nvm install ${1}

nvm use ${1}