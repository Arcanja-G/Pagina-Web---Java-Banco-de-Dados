<%-- 
    Document   : EditarJogo
    Created on : 09/04/2026, 17:02:18
    Author     : girle
--%>

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
                justify-content: center;
                min-height: 100vh;
                margin: 0;
                padding: 20px;
            }

            h1 {
                margin-bottom: 20px;
                text-align: center;
            }

            form {
                background-color: #fff;
                padding: 20px 30px;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.2);
                width: 300px;
            }

            input[type="text"],
            input[type="hidden"] {
                display: block;
                width: 100%;
                padding: 8px;
                margin: 10px 0 15px 0;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #45a049;
            }

            label {
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Editar Jogo</h1>
        <form action="Editar" method="post">
            <input type="hidden" id="id" name="id" value="${jogo.id}"> 
            <p>Id: ${jogo.id}</p> 

            <p><label for="nome">Nome:</label><input type="text" name="nome" id="nome" value="${jogo.nome}"></p>
            <p><label for="tipo">Tipo</label><input type="text" name="tipo" id="tipo" value="${jogo.tipo}"></p>
            <p><label for="estudio">Estudio</label><input type="text" name="estudio" id="estudio" value="${jogo.estudio}"></p>

            <p><input type="submit" value="Editar"></p>
        </form>
    </body>
</html>