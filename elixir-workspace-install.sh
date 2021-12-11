sudo apt-get -y install build-essential inotify-tools autoconf m4 libncurses5-dev libwxgtk-webview3.0-gtk3-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk

sudo apt install git -y
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
source ~/.zshrc

asdf plugin-add elixir
asdf install elixir 1.12.1
asdf local elixir 1.12.1
asdf global elixir 1.12.1

asdf plugin-add erlang
asdf install erlang 23.3
asdf global erlang 23.3
asdf local erlang 23.3

mix archive.install hex phx_new 

