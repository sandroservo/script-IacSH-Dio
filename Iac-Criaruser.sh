#!/bin/bash

echo "creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GROUP_ADM
groupadd GROUP_VEN
groupadd GROUP_SEC

echo "creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Suporte5) -G GROUP_SEC

echo "Specifying directory permissions...."

chown root:GROUP_ADM /adm
chown root:GROUP_VEN /ven
chown root:GROUP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Task executed successfully....."