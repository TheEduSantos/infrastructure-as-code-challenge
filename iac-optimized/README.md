# Code Documentation

## Script for Creating Directories, User Groups, and Users

**Description:** This bash script automates the creation of directories, user groups, and users on a Linux system. It creates specific directories, defines user groups, associates users with these groups, allowing group selection during user creation. Additionally, the script sets permissions for created directories.

### Functionality:

1. **Directory Creation:**
   The script starts by creating four directories: `/public`, `/adm`, `/ven`, and `/sec` using the `mkdir` command.

2. **User Group Creation:**
   Three user groups are created: `GRP_ADM`, `GRP_VEN`, and `GRP_SEC` using the `groupadd` command.

3. **User Creation:**
   The script prompts for the number of users to be created. For each user, it prompts for information such as username, comment, and password. It also allows the user to choose the group to which the user will be associated (ADM, VEN, or SEC). The `useradd` command is used to create the user, and the `usermod` command is used to associate the user with the selected group.

4. **Directory Permission Setting:**
   The script adjusts the permissions of the created directories. The `/adm`, `/ven`, and `/sec` directories are assigned to the `root` user and the `GRP_ADM`, `GRP_VEN`, and `GRP_SEC` groups, respectively, using the `chown` command. Directory permissions are set to 770, except for the `/public` directory, which receives permissions 777.

### Usage:
1. Execute the script in a terminal.
2. Input the number of users to create.
3. Provide information such as username, comment, and password for each user.
4. Choose the group (ADM, VEN, or SEC) to which the user will be associated.

============================================================================================

# Documentação do Código

## Script para Criação de Diretórios, Grupos de Usuários e Usuários

**Descrição:** Este script em bash automatiza a criação de diretórios, grupos de usuários e usuários em um sistema Linux. Ele cria diretórios específicos, define grupos de usuários e associa usuários a esses grupos, permitindo a escolha do grupo durante a criação de cada usuário. Além disso, o script atribui permissões a diretórios criados.

**Funcionamento:**

1. **Criação de Diretórios:**
   O script começa criando quatro diretórios: `/publico`, `/adm`, `/ven` e `/sec` usando o comando `mkdir`.

2. **Criação de Grupos de Usuários:**
   São criados três grupos de usuários: `GRP_ADM`, `GRP_VEN` e `GRP_SEC` com o comando `groupadd`.

3. **Criação de Usuários:**
   O script solicita o número de usuários a serem criados. Para cada usuário, solicita informações como nome de usuário, comentário e senha. Também permite que o usuário escolha o grupo ao qual o usuário será associado (ADM, VEN ou SEC). O comando `useradd` é usado para criar o usuário e o comando `usermod` é usado para associar o usuário ao grupo selecionado.

4. **Definição de Permissões dos Diretórios:**
   O script ajusta as permissões dos diretórios criados. Os diretórios `/adm`, `/ven` e `/sec` são atribuídos ao usuário `root` e aos grupos `GRP_ADM`, `GRP_VEN` e `GRP_SEC`, respectivamente, usando o comando `chown`. As permissões dos diretórios são configuradas para 770, exceto o diretório `/publico` que recebe permissões 777.

### Uso:
1. Execute o script em um terminal.
2. Insira o número de usuários a serem criados.
3. Forneça informações como nome de usuário, comentário e senha para cada usuário.
4. Escolha o grupo (ADM, VEN ou SEC) ao qual o usuário será associado.

