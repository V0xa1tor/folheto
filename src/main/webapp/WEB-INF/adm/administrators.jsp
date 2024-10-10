<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="dev.emz.folheto.model.*" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <link rel="shortcut icon" href="/images/folheto.ico" type="image/x-icon">

    <title>Administração</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/stylesheets/style.css">
    <link rel="stylesheet" href="/stylesheets/administrators.css">

</head>
<body>
    
    <!-- Header -->
    <%@ include file="/WEB-INF/adm/header.jsp" %>
    
    <!-- Menu (only for mobile) -->
    

    
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

            <!-- Windows container -->
            <div id="container"></div>

            <!-- <h1>Sua conta</h1>
            <div></div>
            
            <h1>Criar uma conta de administrador</h1> -->
            
            <h1>Cadastro dos administradores</h1>
            <div class="table-wrapper">

                <!-- Administrators table -->
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th>Usuário</th>
                            <th>Senha</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="adm" items="${AdministratorsDAO.findAll()}" >
                        <tr>
                            <td><img style="filter: invert(1)" src="/images/person.svg" alt="Avatar do usuário"></td>
                            <td>${adm.getUsername()}</td>
                            <td>${adm.getPassword()}</td>
                            <td class="option">
                                <button class="button edit-button">
                                    <img src="/images/edit.svg" alt="Editar">
                                </button>
                                <button class="button delete-button" onclick="location = '/adm/administrators/delete?username=${adm.getUsername()}'">
                                    <img src="/images/delete.svg" alt="Excluir">
                                </button>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
                <!-- Create button -->
                <button class="button create-button" onclick="addWindow('Criar administrador', administratorForm());"><img src="/images/add_person.svg" alt="Criar conta">Criar conta</button>
            </div>

            
        </main>
        
    </div>
    
    <!-- Footer -->
    <script src="/scripts/window.js"></script>

</body>
</html>