# Code Documentation
## Script for Creating Directories, User Groups, and Users

**Description:** This bash script automates the process of creating directories, user groups, and users on a Linux system. It creates specific directories, user groups, associates users with these groups, and also sets permissions for the created directories.

### Functionality:

1. **Directory Creation:**
The script starts by creating four directories: /public, /adm, /ven, and /sec using the mkdir command.

2. **User Group Creation:**
Next, the script creates three user groups: GRP_ADM, GRP_VEN, and GRP_SEC using the groupadd command.

3. **User Creation:**
The script proceeds to create various users associated with the previously created groups:

For the GRP_ADM group, the users carlos, maria, and joao are created.
For the GRP_VEN group, the users debora, sebastiana, and roberto are created.
For the GRP_SEC group, the users josefina, amanda, and rogerio are created.
For each user, the script uses the useradd command to create the user, assign a comment, and a hashed password using OpenSSL. The passwd command with the -e option is used to prompt users to change their passwords on their next login. Note that the provided passwords here are only examples and are not secure. Do not copy these passwords for security reasons. It is highly recommended to use strong and unique passwords.

4. **Directory Permission Setting:**
The script adjusts the permissions of the created directories. The /adm, /ven, and /sec directories are assigned to the root user and the GRP_ADM, GRP_VEN, and GRP_SEC groups, respectively, using the chown command. Additionally, the directory permissions are set to 770, allowing the owner and group to have full permissions, while others have no write and execute permissions.

The /public directory is set with permissions 777, allowing all users to have full access.

### Usage:

Execute the script in a terminal.
Follow the instructions to input information such as usernames, comments, and passwords.

# Documentação do Código

## Script para Criação de Diretórios, Grupos de Usuários e Usuários

**Descrição:** Este script em bash automatiza o processo de criação de diretórios, grupos de usuários e usuários em um sistema Linux. Ele cria diretórios específicos, grupos de usuários e associa usuários a esses grupos, definindo também permissões para os diretórios criados.

**Funcionamento:**

1. **Criação de Diretórios:**
O script começa criando quatro diretórios: /publico, /adm, /ven e /sec usando o comando mkdir.

2. **Criação de Grupos de Usuários:**
Em seguida, o script cria três grupos de usuários: GRP_ADM, GRP_VEN e GRP_SEC usando o comando groupadd.

3. **Criação de Usuários:**
O script continua criando vários usuários associados aos grupos previamente criados:

Para o grupo GRP_ADM, são criados os usuários: carlos, maria e joao.
Para o grupo GRP_VEN, são criados os usuários: debora, sebastiana e roberto.
Para o grupo GRP_SEC, são criados os usuários: josefina, amanda e rogerio.
Para cada usuário, o script usa o comando useradd para criar o usuário, atribuir um comentário e uma senha criptografada usando o OpenSSL. O comando passwd com a opção -e é usado para solicitar que os usuários alterem suas senhas no próximo login. Observe que as senhas fornecidas aqui são apenas exemplos e não são seguras. Não copie essas senhas por razões de segurança. É altamente recomendável usar senhas fortes e exclusivas.

4. **Definição de Permissões dos Diretórios:**
O script ajusta as permissões dos diretórios criados. Os diretórios /adm, /ven e /sec são atribuídos ao usuário root e aos grupos GRP_ADM, GRP_VEN e GRP_SEC, respectivamente, usando o comando chown. Além disso, as permissões dos diretórios são configuradas para 770, permitindo que o proprietário e o grupo tenham permissões completas e outros não tenham permissões de escrita e execução.

O diretório /publico é configurado com permissões 777, permitindo que todos os usuários tenham acesso completo.

### Uso:
Execute o script em um terminal.
Siga as instruções para inserir informações como nomes de usuário, comentários e senhas.
