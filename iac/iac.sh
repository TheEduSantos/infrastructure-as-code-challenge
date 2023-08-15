#!/bin/bash

echo "================================ Creating directories ================================"

mkdir /public && mkdir /adm && mkdir /ven && mkdir /sec

echo "============================ Creating user groups ============================"

groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

echo "================================= Creating users ================================="

echo "=================================== ADM Users ==================================="

useradd carlos -m -s /bin/bash -p $(openssl passwd pass#carlos123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd pass#maria123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd pass#joao123) -G GRP_ADM

echo "=================================== VEN Users ==================================="

useradd debora -m -s /bin/bash -p $(openssl passwd pass#debora123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd pass#sebastiana123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd pass#roberto123) -G GRP_VEN

echo "=================================== SEC Users ==================================="

useradd josefina -m -s /bin/bash -p $(openssl passwd pass#josefina123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd pass#amanda123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd pass#rogerio123) -G GRP_SEC

echo "===================== Specifying directory permissions ======================"

echo "=================================== Using chown ==================================="

chown root:GRP_ADM /adm && chown root:GRP_VEN /ven && chown root:GRP_SEC /sec

echo "=================================== Using chmod ==================================="

chmod 770 /adm && chmod 770 /ven && chmod 770 /sec && chmod 777 /public

echo "======================================= END ========================================"
