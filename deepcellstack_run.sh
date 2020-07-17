## sudo free pass
sudo echo "deepcell ALL=(ALL) NOPASSWD:ALL" > ./deepcell
sudo cp ./deepcell /etc/sudoers.d/deepcell
sudo chmod 0440 /etc/sudoers.d/deepcell

## library install
sleep 1

sudo apt upate
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
git \
net-tools \
software-properties-common


## chrome install
sleep 1

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-get update
sudo apt-get install -y google-chrome-stable
sudo rm -rf /etc/apt/sources.list.d/google.list
sudo apt-get clean

## docker install
sleep 1

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get clean

sudo usermod -aG docker deepcell
sudo chmod 666 /var/run/docker.sock
