#highly recommended to install the vbox guest additions first

#update and upgrade base
echo "*** Base upgrades ***"
sudo apt update -y
sudo apt upgrade -y

#install git
echo "*** Installing Git ***"
sudo apt install -y git

#install atom
echo "*** Installing Atom ***"
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
sudo apt install -y atom

#install docker
echo "*** Installing Docker ***"
sudo apt-get install -y    apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
sudo apt install -y docker-ce 

#install docker-compose
echo "*** Installing Docker-Compose ***"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#run docker without sudo
echo "*** Allow Docker without sudo ***"
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo usermod -aG docker $USER

#install oracle jdk
#FIRST DOWNLOAD THE ORACLE JDK8 x64 RPM AT https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
#Follow the GUI to install it

#install java build tools
echo "*** Installing Java build tools ***"
sudo apt install -y maven gradle

#install node
echo "*** Installing Node ***"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

#install yarn
echo "*** Installing Yarn ***"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get -y update && sudo apt-get install -y yarn 

#install other npm dependencies
echo "*** Installing NPM stuff ***"
sudo npm install -g npm
sudo npm install -g yo
sudo npm install -g generator-jhipster

#install aws cli
echo "*** Installing AWS CLI ***"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install awscli
sudo pip install boto3


