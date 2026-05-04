<%-- 
    Document   : login
    Created on : 07/04/2026, 11:44:05
    Author     : girle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                color: #333;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
            }

            h1 {
                margin-bottom: 20px;
            }

            form {
                background-color: #fff;
                padding: 20px 30px;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.2);
            }

            input[type="email"],
            input[type="password"] {
                display: block;
                width: 250px;
                padding: 8px;
                margin: 10px 0 20px 0;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            input[type="submit"] {
                padding: 10px 25px;
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

            a {
                margin-top: 20px;
                text-decoration: none;
                color: #4CAF50;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Bem vindo ao sistema de gestão de jogos!</h1>
        <p>${msg}</p>
        <form action="LoginServlets" method="post">
            <p><label for="email"></label>Insira seu email<input type="email" id="email" name="email" required></p><!-- comment -->
            <p><label for="pass">Insira sua password</label><input type="password" id="pass" name="pass" required></p>
            <p><input type="submit" value="Entrar"></p>
        </form>
        
        <p><a href="index.html"> Voltar</a></p>
    </body>
</html>