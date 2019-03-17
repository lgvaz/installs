mkdir -p Downloads && cd Downloads

!wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
bash Anaconda3-2018.12-Linux-x86_64.sh -b

cp $HOME/.bashrc $HOME/.bashrc_backup
echo "Add Anaconda bindings to PATH" >> $HOME/.bashrc
echo "export PATH=\"$HOME/anaconda3/bin:$PATH\"" >> $HOME/.bashrc
source $HOME/.bashrc
