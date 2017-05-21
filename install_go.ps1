# Install chocolatey package manager
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey

# Install go
choco install golang -y
choco upgrade golang

# Create folders for go
md c:\Scratchpad\go\bin
md c:\Scratchpad\go\pkg
# Created by Vagrantfile synchronised folders
md c:\Scratchpad\go\src

# Add GOPATH https://trevorsullivan.net/2016/07/25/powershell-environment-variables/
[Environment]::SetEnvironmentVariable("GOPATH", "c:\Scratchpad\go\", "User")

# Git tools
choco install git -y
choco upgrade git

# Install delve
go get github.com/derekparker/delve/cmd/dlv

# Install Ginkgo
go get github.com/onsi/ginkgo/ginkgo

# Install Gomega
go get github.com/onsi/gomega