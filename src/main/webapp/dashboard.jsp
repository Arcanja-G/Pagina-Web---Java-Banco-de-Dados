<%-- 
    Document   : Home
    Created on : 09/04/2026, 11:43:20
    Author     : girle
--%>

<%@page import="com.mycompany.projetosistemaautenticacao.entidades.Jogos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                color: #333;
                display: flex;
                flex-direction: column;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                padding: 20px;
            }

            h1, h3 {
                text-align: center;
            }

            table {
                width: 80%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #fff;
                box-shadow: 0 2px 8px rgba(0,0,0,0.2);
            }

            th, td {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: center;
            }

            th {
                background-color: #4CAF50;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            a {
                color: #4CAF50;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            .btn-adicionar {
                margin-top: 20px;
                text-decoration: none;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border-radius: 5px;
                font-weight: bold;
            }

            .btn-adicionar:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>

        <h1>Bem vindo/a ${session.getAttribute.email}</h1>
        <h1><%= session.getAttribute("email")%></h1>
        <h3>Lista de Jogos</h3>

        <%
            List<Jogos> lista = (List<Jogos>) request.getAttribute("jogos");

            if (lista != null && !lista.isEmpty()) {
        %>
        <table>
            <tr>
                <th>Nome</th>
                <th>Tipo</th>
                <th>Estúdio</th>
                <th>Ações</th>
            </tr>
            <%
                for (int i = 0; i < lista.size(); i++) {
                    Jogos jogo = lista.get(i);
            %>
            <tr>
                <td><%= jogo.getNome() %></td>
                <td><%= jogo.getTipo() %></td>
                <td><%= jogo.getEstudio() %></td>
                <td>
                    <a href="Editar?id=<%= jogo.getId() %>">Editar</a> |
                    <a href="Eliminar?id=<%= jogo.getId() %>">Eliminar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } else {
        %>
        <p>Nenhum jogo cadastrado.</p>
        <%
            }
        %>

        <a class="btn-adicionar" href="Adicionar.jsp">Adicionar Jogo</a>

    </body>
</html>