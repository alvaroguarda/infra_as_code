#!/bin/bash

echo "Excluindo diretórios, arquivos, grupos e usuários criados anteriormente ..."

rmdir /publico --ignore-fail-on-non-empty
rmdir /adm --ignore-fail-on-non-empty
rmdir /ven --ignore-fail-on-non-empty
rmdir /sec --ignore-fail-on-non-empty

userdel carlos -r -f
userdel maria -r -f
userdel joao -r -f
userdel debora -r -f
userdel sebastiana -r -f
userdel roberto -r -f
userdel josefina -r -f
userdel amanda -r -f
userdel rogerio -r -f

delgroup GRP_ADM
delgroup GRP_VEN
delgroup GRP_SEC

echo "Criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
