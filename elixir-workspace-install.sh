sudo apt update
sudo apt install build-essential git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip curl zlib1g-dev sqlite3 libsqlite3-dev -y
sudo apt install libncurses5-dev -y
sudo apt install xsltproc -y

sudo apt install git -y
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get -y install postgresql

exec $SHELL

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
source ~/.zshrc

asdf plugin-add elixir
asdf install elixir 1.11.4
asdf local elixir 1.11.4
asdf global elixir 1.11.4

asdf plugin-add erlang
asdf install erlang 23.3
asdf global erlang 23.3
asdf local erlang 23.3

mix archive.install hex phx_new 

