sudo apt-get install build-essential git wget libssl-dev libreadline-dev libncurses5-dev zlib1g-dev m4 curl wx-common libwxgtk3.0-dev autoconf

sudo apt install git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile

asdf plugin-add elixir
asdf install elixir 1.11.4
asdf local elixir 1.11.4
asdf global elixir 1.11.4

asdf plugin-add erlang
asdf install erlang 23.3
asdf global erlang 23.3
asdf local erlang 23.3
