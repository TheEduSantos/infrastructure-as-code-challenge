#!/bin/bash

echo "================================ Creating directories ================================"

mkdir /public && mkdir /adm && mkdir /ven && mkdir /sec

echo "============================ Creating user groups ============================"

groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

echo "================================= Creating users ================================="

read -p "Enter the number of users to create: " num_users

for ((i=1; i<=num_users; i++))

do
    read -p "Enter username for user $i: " username
    read -p "Enter comment for user $i: " user_comment
    read -s -p "Enter password for user $i: " user_password
    echo ""
    
    echo "Select group for user $i:"
    echo "ADM"
    echo "VEN"
    echo "SEC"
    read -p "Enter your choice: " user_group

    useradd "$username" -m -s /bin/bash -p $(openssl passwd "$user_password")

    case "$user_group" in
        ADM)
            usermod -c "$user_comment" -G GRP_ADM "$username"
            ;;
        VEN)
            usermod -c "$user_comment" -G GRP_VEN "$username"
            ;;
        SEC)
            usermod -c "$user_comment" -G GRP_SEC "$username"
            ;;
        *)
            echo "Invalid choice. User will not be added to any group."
            ;;
    esac
done

echo "===================== Specifying directory permissions ======================"

echo "=================================== Using chown ==================================="

chown root:GRP_ADM /adm && chown root:GRP_VEN /ven && chown root:GRP_SEC /sec

echo "=================================== Using chmod ==================================="

chmod 770 /adm && chmod 770 /ven && chmod 770 /sec && chmod 777 /public

echo "======================================= END ========================================"
