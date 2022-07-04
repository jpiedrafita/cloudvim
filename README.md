# Install cloudvim
wget -O - https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh | sudo bash
or
sh -C "$(curl -fsSL https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/cloudvim.sh)"

# Install plugins in vim
:PluginInstall

# Load aliases
source .bashrc
