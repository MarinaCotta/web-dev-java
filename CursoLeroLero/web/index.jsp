<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./lib/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./styles/app.css">
        <title>Curso Lero Lero - Início</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand logo" href="./index.html">Curso Lero Lero</a>
            <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Alterna navegação"
                >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="./index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./sobre.html">Sobre</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./instrutores.html">Instrutores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./comentarios.html">Comentários</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./registros.jsp">Registros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./login.html">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./tabelas.jsp">Tabelas</a>
                    </li>
                </ul>
            </div>
        </nav>
        <main
            class="container-fluid bg-dark pt-4 d-flex flex-column align-items-center"
            >
            <section class="row">
                <article class="col">
                    <div
                        class="jumbotron d-flex flex-column bg-dark text-white border border-secondary"
                        >
                        <h1 class="display-4 d-none d-sm-block logo">Curso Lero Lero</h1>
                        <h1 class="d-sm-none logo">Curso Lero Lero</h1>
                        <p class="lead mt-2">
                            Preparando você para aproveitar a vida: contemplando o espaço e
                            apreciando o ócio.
                        </p>
                        <hr class="my-4" />
                        <p>
                            Não faça hoje o que você pode deixar para amanhã.
                        </p>
                        <a
                            class="btn btn-primary btn-lg align-self-md-end"
                            href="./sobre.html"
                            role="button"
                            >Saiba mais</a
                        >
                    </div>
                </article>
            </section>
        </main>
        <jsp:include page="scripts.html" />
    </body>
</html>
