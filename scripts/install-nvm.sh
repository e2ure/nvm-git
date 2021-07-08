#node-version=${2:"12.18.0"}

apt-get install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

#/bin/bash ./set-node-version.sh ${node-version}

/bin/bash ./set-node-version.sh ${node-version}
