# might not need sudo here if you run this as privileged in Vagrantfile
sudo apt-get update
sudo apt-get install golang-go -y

# Session, could have set in Vagrant file with 
# config.vm.provision "shell", path: "install_go.sh", env: {"GOPATH" => "/opt/go"}
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/opt/go

# Persist for vagrant user
echo "export GOPATH=/opt/go" >> /home/vagrant/.profile

# Install git
sudo apt-get install git -y

go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint

mkdir /opt/go/bin
mkdir /opt/go/pkg
# mkdir /opt/go/src

# Install delve
go get github.com/derekparker/delve/cmd/dlv

# Install Ginkgo
go get github.com/onsi/ginkgo/ginkgo

# Install Gomega
go get github.com/onsi/gomega