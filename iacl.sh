#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven


echo "Criando Grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuario"


useradd Darleson -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Felipe -m -s  /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Silva -m -s  /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Morais -m -s    /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Ferreira -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Larissa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Ryan -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Alice -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Victor -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC



echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sen
chmod 777 /publico

echo "FIM...."


