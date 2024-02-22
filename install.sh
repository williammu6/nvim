mkdir -p ~/.config
rm -fr ~/.config/nvim
ln -s $PWD ~/.config/nvim
nvim +PackerSync
