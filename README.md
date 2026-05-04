# projeto Sistema de Autenticação

Sistema de autenticação e gestão de jogos desenvolvido em Java com
Jakarta EE, utilizando Servlets, JSP e persistência de dados com
JPA/Hibernate e MySQL.

## Funcionalidades

- Autenticação de utilizadores (login/sessão)
- Dashboard após autenticação
- CRUD de jogos (Adicionar, Editar, Eliminar)
- Interface web com JSP

## Tecnologias

- Java / Jakarta EE
- Servlets + JSP
- JPA / Hibernate
- MySQL
- Maven
- Apache Tomcat
- NetBeans IDE

## Configuração

1. Clona o repositório
2. Cria a base de dados MySQL: `sistemaatenticacao`
3. Abre o ficheiro `src/main/resources/META-INF/persistence.xml`
   e ajusta as credenciais da base de dados
4. Faz o build com Maven: `mvn package`
5. Faz o deploy no Tomcat ou corre pelo NetBeans

## Contexto

Projeto desenvolvido no âmbito da formação no IEFP.
