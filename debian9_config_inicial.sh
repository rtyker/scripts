#!/bin/bash

#alguns pacotes iniciais

#primeiro tem que entrar como root de verdade
#essas duas linhas abaixo só consegui rodar manualmente até agora
#eu não consegui automatizar ainda

#instalar o sudo pelo apt
#sudo apt-get install sudo -y
#sh -c 'su echo "${USER} ALL=(ALL:ALL) ALL" >> /etc/sudoers' 


sudo apt-get install apt-transport-https -y


# editar o fstab para montar as partições do windows

#adicionar os backports no arquivo /etc/apt/source.list

# instala o VIRTUALBOX
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt update

sudo apt install lightdm -y
sudo apt install snap -y
sudo apt install snapd -y
sudo apt install htop -y
sudo apt install git -y
sudo apt install rar unrar -y
sudo apt-get install p7zip -y
sudo apt-get install p7zip-rar -y
sudo apt install net-tools -y
sudo apt install tilix -y

#se quiser o ambiente grafico cinnamon
sudo apt install cinnamon -y

sudo apt install virtualbox-6.0 -y


#pacotes necessarios para VPN funcionar
sudo apt install cmake -y
sudo apt install flex -y
sudo apt install bison -y
sudo apt install libedit-dev -y
sudo apt-get install mesa-common-dev -y
sudo apt-get install libglu1-mesa-dev -y
sudo apt-get install libnss3-tools -y

#instalar python
sudo apt-get install -y python3-pip

#pycharm
#sudo snap install pycharm-community --classic

#clementine
sudo apt install clementine -y

#wine
sudo apt install wine -y

#curl
sudo apt install curl -y

sudo apt install mpg123 -y
sudo apt install bluez-* pulseaudio-module-bluetooth -y
sudo apt install gnome-bluetooth -y
sudo apt install dia -y
sudo apt install rsync -y

#odbc
sudo apt-get install libsqliteodbc unixodbc -y
#After the install you’ll have a a /etc/odbcinst.ini editar o odbc.ini se quiser adicionar a fonte odbc

sudo apt install sqlitebrowser -y

sudo apt install filezilla -y

#tradução para o portugues PT-BR
sudo apt install thunderbird-l10n-pt-br
sudo apt install firefox-esr-l10n-pt-br


##################################### instalar samba
sudo apt install samba -y

#alterar o arquivo de configuração adicionando os compartilhamentos
#sudo gedit /etc/samba/smb.conf

#reiniciar o samba
#sudo service smbd restart


#desinstalar o youtube-dl origina do repo se estiver instalado
sudo apt-get remove -y youtube-dl

sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
hash -r


#coisas que não dá pra fazer automaticamente
# - instalar a impressora, tem que baixar o HPLIP pelo site da HP
# - LEMBRAR de desativar o atalho do ALT que fica atrapalhando o Guest do virtualbox
#   para isso vá em Preferencias -> Janelas -> Comportamento e desativa a "Tecla especial para mover e redimensionar janelas"



#para instalar o Guest Additions 
apt-get install linux-headers-`uname -r` -y
apt-get install gcc make perl -y

#monte a imagem do Vbox e rode o instalador

#//************** SE QUISER MONTAR UM FTP *********************************************/

#apt-get install proftpd -y
#addgroup ftpgroup
#adduser nomeDoUusario -shell /bin/false -ingroup ftpgroup -home /ftpshare

#Edit file /etc/proftpd/proftpd.conf 

#*************************************/
#[...]
#UseIPv6 off
#[...]

#    RootLogin	off
#    RequireValidShell off

#DefaultRoot  ~

#<Limit LOGIN>
#    DenyGroup !ftpgroup
#</Limit>

#**************************************/


#service proftpd restart

se quiser usar TLS no FTP
apt-get install openssl -y
openssl req -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem 
mkdir /etc/proftpd/ssl

#//***********************************************************************************/
