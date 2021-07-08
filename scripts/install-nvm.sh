#!/bin/bash
nodeversion=${1:-"12.18.0"}

apt-get install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo "node version ${nodeversion}"

/bin/bash ./set-node-version.sh ${nodeversion}
