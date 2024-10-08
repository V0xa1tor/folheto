<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <link rel="shortcut icon" href="/images/folheto.ico" type="image/x-icon">

    <title>Login</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/stylesheets/style.css">
    <link rel="stylesheet" href="/stylesheets/signin.css">

</head>
<body>

    <!-- Header -->
    <%@ include file="/WEB-INF/adm/header.jsp" %>



    <!-- Main page content -->
    <div class="main-wrapper">
    
        <!-- Sign-in -->
        <main>

            <h1>Entrar</h1>

            <!-- Form -->
            <form action="/adm/login" method="post">

                <div class="field">
                    <label for="username">Usuário</label>
                    <input type="text" name="username" id="username">
                </div>

                <div class="field">
                    <label for="password">Senha</label>
                    <div class="password">
                        <input type="password" name="password" id="password">
                        <button class="button" type="button" tabindex="-1" onclick="toggleVisibility(this);"><img src="/images/visibility.svg" alt="Mostrar"></button>
                    </div>
                </div>
                
                <input class="button" type="submit" value="Entrar">
                
                <a class="recover-password" href="#recover-password">Recuperar senha</a>

            </form>
            
            <!-- Form-footer -->
            <div class="footer">
                <hr>
                <div class="message">Usuário ou senha incorretos</div>
            </div>

        </main>

    </div>

    <!-- Footer -->
    <script src="/scripts/script.js"></script>
    <script src="/scripts/window.js"></script>
    <script src="/scripts/verifications.js"></script>

</body>
</html>