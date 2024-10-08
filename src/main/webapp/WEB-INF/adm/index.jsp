<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <link rel="shortcut icon" href="/images/folheto.ico" type="image/x-icon">

    <title>Administração</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/stylesheets/style.css">
    <link rel="stylesheet" href="/stylesheets/home.css">

</head>
<body>
    
    <!-- Header -->
    <%@ include file="/WEB-INF/adm/header.jsp" %>
    
    
    
    <!-- Main page content -->
    <div class="main-wrapper">
        
        <!-- Menu -->
        <aside>
            <nav>
                <ul class="menu">
                    <li><a href="/projetofolheto/adm.folheto/products.php">Produtos</a></li>
                    <li><a href="/adm/administrators">Administradores</a></li>
                    <li><a class="comming-soon" href="/projetofolheto/adm.folheto/charts.php" onclick="event.preventDefault();">Gráficos</a></li>
                    <li><a class="comming-soon" href="/projetofolheto/adm.folheto/logs.php" onclick="event.preventDefault();">Histórico</a></li>
                </ul>
            </nav>
        </aside>
        
        <!-- Content -->
        <main>
            <h1>Bem vindo(a), ${cookie.username.value}!</h1>
            
            <p>Para acessar outra conta, faça logout.</p>
        </main>

    </div>

    <!-- Footer -->
    <script src="/scripts/script.js"></script>
    <script src="/scripts/window.js"></script>
    <script src="/scripts/verifications.js"></script>

</body>
</html>