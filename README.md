# infra_as_code
Desafio do curso "Formação Linux Fundamentals" do DIO
## IaC (Infraestrutura como Código)
O objetivo aqui é implementar a seguinte infraestrutura:
1. Criação de uma Estrutura de Usuários, Diretórios e Permissões
2. Provisionamento de um Servidor Web (Apache)

Isto é feito com o script **iac.sh**

__Dicas__: 
* Troque o usuário atual pelo usuário root: **sudo su**
* Para executar o script altere a permissão do arquivo para executá-lo: **chmod +x iac.sh**

### O script iac.sh executa os seguintes procedimentos:

* Os diretórios, arquivos, grupos e usuários criados anteriormente são excluidos
* O usuário **root** é definido como o dono de todos os diretórios criados
* Todos os usuários são definidos com permissão total dentro do diretório público
* Os usuários de cada grupo são definidos com permissão total dentro de seu respectivo diretório
* Os usuários são definidos para não ter permissão de leitura, escrita e execução em diretórios de departamentos aos quais eles não pertencem
* Atualização do servidor
* Provisionamento de um Servidor Web
* Instalação de uma aplicação de teste no servidor Web
