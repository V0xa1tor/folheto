<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <link rel="shortcut icon" href="/projetofolheto/folheto/images/folheto.ico" type="image/x-icon">

    <title>Folheto</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/stylesheets/style.css">
    <link rel="stylesheet" href="/stylesheets/products.css">
    
    <link rel="manifest" href="/manifest.json">

</head>
<body>
    
    <!-- Header -->
    <header>

        <div class="first">
            <button class="button show-menu" type="button" onclick="showMenu();"><img src="/images/menu.svg" alt="Mostrar menu"></button>
        </div>

        <div class="second">
            <a class="logo" href="/index.php"><img src="/images/folheto.png" alt="Folheto logo"><div class="text">Folheto</div></a>
            
            <nav>
                <ul class="menu">
                    <li><a href="/index.php">Produtos</a></li>
                    <li><a href="/list.php">Lista</a></li>
                </ul>
            </nav>
        </div>

        <div class="third">
            <button class="button toggle-theme" type="button" onclick="toggleTheme(this);"><svg mode="dark" xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960" width="30" height="30"><path fill="currentColor" d="M481.154-140.001q-142.153 0-241.076-98.923T141.155-480q0-118.383 73.268-210.459 73.268-92.077 195.19-118.693 12.616-3.154 22.231.615 9.615 3.77 15.615 11.231t7.077 18.115q1.077 10.654-5 21.269-12.384 22.538-18.384 46.829-6 24.29-6 51.093 0 98.334 68.834 167.168 68.834 68.833 167.168 68.833 29.461 0 56.307-7.461 26.846-7.461 47-17.307 9.846-4.308 19.23-3.038 9.385 1.269 16.016 6.269 7.368 5 10.945 13.654 3.577 8.653.808 20.346-21.309 117.998-114.808 194.766-93.499 76.769-215.498 76.769Zm0-59.999q88 0 158-48.5t102-126.5q-20 5-40 8t-40 3q-123 0-209.5-86.5t-86.5-209.5q0-20 3-40t8-40q-78 32-126.5 102t-48.5 158q0 116 82 198t198 82Zm-10-270Z"/></svg></button>
        
            <ul class="auth">
                <li><a class="sign-in" href="/signin.php">Entrar</a></li>
                <li><a class="sign-up" href="/signup.php">Cadastrar-se</a></li>
            </ul>
        </div>
        
    </header>
    
    <!-- Menu (only for mobile) -->
    <div class="menu-wrapper" onclick="closeMenu();">
        <nav onclick="event.stopPropagation();">
            <button class="button close-button" type="button" onclick="closeMenu();"><img src="/images/close.svg" alt="Mostrar menu"></button>
            <ul class="menu">
                <li><a class="sign-up" href="/signup.php">Cadastrar-se</a></li>
                <li><a class="sign-in" href="/signin.php">Entrar</a></li>
                <hr>
                <li><a href="/index.php">Produtos</a></li>
                <li><a href="/list.php">Lista</a></li>
                <hr>
                <button class="button toggle-theme" type="button" onclick="toggleTheme(this);"><svg mode="dark" xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960" width="30" height="30"><path fill="currentColor" d="M481.154-140.001q-142.153 0-241.076-98.923T141.155-480q0-118.383 73.268-210.459 73.268-92.077 195.19-118.693 12.616-3.154 22.231.615 9.615 3.77 15.615 11.231t7.077 18.115q1.077 10.654-5 21.269-12.384 22.538-18.384 46.829-6 24.29-6 51.093 0 98.334 68.834 167.168 68.834 68.833 167.168 68.833 29.461 0 56.307-7.461 26.846-7.461 47-17.307 9.846-4.308 19.23-3.038 9.385 1.269 16.016 6.269 7.368 5 10.945 13.654 3.577 8.653.808 20.346-21.309 117.998-114.808 194.766-93.499 76.769-215.498 76.769Zm0-59.999q88 0 158-48.5t102-126.5q-20 5-40 8t-40 3q-123 0-209.5-86.5t-86.5-209.5q0-20 3-40t8-40q-78 32-126.5 102t-48.5 158q0 116 82 198t198 82Zm-10-270Z"/></svg></button>
            </ul>
        </nav>
    </div>

    

    <!-- Main page content -->
    <div class="main-wrapper">

        <!-- Filters -->
        <aside>
            Filtros
        </aside>
    
        <!-- Products -->
        <main>
            <h1>Produtos</h1>
        </main>

    </div>

    <!-- Footer -->
    <script src="/scripts/script.js"></script>

</body>
</html>