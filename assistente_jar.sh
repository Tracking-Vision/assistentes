#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11

echo  "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) Olá usuário, serei seu assistente para instalação do Java!;"
echo  "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Verificando se você possui o Java instalado na sua máquina!;"
sleep 2

java -version
if [ $? -eq 0 ]
then
    echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Você já tem o Java instalado na sua máquina!"

    echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Vamos atualizar os pacotes..."
    sudo apt update && sudo apt upgrade -y
    clear
    echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Pacotes atualizados!"

    echo "Agora iremos para o diretorio Desktop da maquina"
    cd /home/$USER/Desktop
    echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Diretorio Desktop acessado!"
    sleep
	echo "$(tput setaf 10)[Tracking-Vision]: Agora iremos trazer nosso arquivo jar..."
	wget https://raw.githubusercontent.com/Tracking-Vision/Java/main/tracking-vision/target/tracking-vision-1.0-SNAPSHOT-jar-with-dependencies.jar
    sleep 2
	echo "$(tput setaf 10)[Tracking-Vision]: Já temos o arquivo! Vamos executá-lo."
    sleep 2
    java -jar tracking-vision-1.0-SNAPSHOT-jar-with-dependencies.jar
    
	else
		echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Não foi encontrado nenhuma versão do Java na sua máquina, mas iremos resolver isso!"
		echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Você deseja instalar o Java na sua máquina (S/N)?"
	read inst
	if [ \"$inst\" == \"S\" ]
		then
			echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Ok! Você decidiu instalar a máquina, uhul!"
			echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Adicionando o repositório!"
			sleep 2
			sudo add-apt-repository ppa:linuxuprising/java
			clear
			echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Atualizando os pacotes... Quase acabando."
			sleep 2
			sudo apt update -y
			clear
			if [ $VERSAO -eq 17 ]
				then
					echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) Preparando para instalar a versão 17 do Java. Lembre-se de confirmar a instalação quando necessário!"
					sudo apt-get install openjdk-17-jdk
					clear
					echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) Java instalado com sucesso!"

		            echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Vamos atualizar os pacotes..."
		            sudo apt update && sudo apt upgrade -y
		            clear
		            echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Pacotes atualizados!"

					echo "Agora iremos para o diretorio Desktop da maquina"
                    cd /home/$USER/Desktop
                    echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7) : Diretorio Desktop acessado!"
                    sleep
                    echo "$(tput setaf 10)[Tracking-Vision]: Agora iremos trazer nosso arquivo jar..."
                    wget https://raw.githubusercontent.com/Tracking-Vision/Java/main/tracking-vision/target/tracking-vision-1.0-SNAPSHOT-jar-with-dependencies.jar
                    sleep 2
                    echo "$(tput setaf 10)[Tracking-Vision]: Já temos o arquivo! Vamos executá-lo."
                    sleep 2
                    java -jar tracking-vision-1.0-SNAPSHOT-jar-with-dependencies.jar
					
				fi
		else 	
		echo "$(tput setaf 10)[Tracking-Vision]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
	fi
fi
