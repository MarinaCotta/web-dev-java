<%-- 
    Document   : tabelas
    Created on : 11/02/2020, 00:59:12
    Author     : joaom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link
            rel="stylesheet"
            type="text/css"
            href="./lib/bootstrap/bootstrap.min.css"
            />
        <link rel="stylesheet" type="text/css" href="./styles/app.css" />
        <title>Curso Lero Lero - Tabelas</title>
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
                    <li class="nav-item">
                        <a class="nav-link" href="./index.html">Home</a>
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
                        <a class="nav-link" href="./registros.html">Registros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./login.html">Login</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./tabelas.html">Tabelas</a>
                    </li>
                </ul>
            </div>
        </nav>
        <main
            class="container-fluid text-light bg-dark pt-4 d-flex flex-column justify-content-center align-items-center"
            >
            <h1 class=" d-none d-md-block display-4 align-self-start logo">
                Tabelas
            </h1>
            <section class="row">
                <article class="col px-4">
                    <form id="formulario-alunos" class="mx-3">
                        <h2>Formulário Alunos</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <h3>
                                Dados Pessoais
                            </h3>
                            <div class="form-group">
                                <label for="nome">
                                    <span>Nome Completo</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    placeholder="Joana Maria da Silva"
                                    name="nome"
                                    id="nome"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="nascimento">
                                    <span>Data de Nascimento</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="date"
                                    min="1900-01-01"
                                    name="nascimento"
                                    id="nascimento"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="cpf">
                                    <span>CPF</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    placeholder="11198732108"
                                    name="cpf"
                                    id="cpf"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="email">
                                    <span>Email</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="email"
                                    placeholder="exemplo@gmail.com"
                                    name="email"
                                    id="email"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="tel">
                                    <span>Celular</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="tel"
                                    placeholder="992210963"
                                    name="tel"
                                    id="tel"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="login">
                                    <span>Login</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    name="login"
                                    id="login"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="senha">
                                    <span>Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="senha"
                                    id="senha"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="confirmaSenha">
                                    <span>Confirmar Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="confirmaSenha"
                                    id="confirmaSenha"
                                    class="form-control"
                                    required
                                    />
                            </div>
                        </section>
                        <section>
                            <h3>Endereço</h3>
                            <div class="form-group">
                                <label for="endereco">
                                    <span>Endereço</span>
                                </label>
                                <input
                                    type="text"
                                    name="endereco"
                                    id="endereco"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="cidade">
                                    <span>Cidade</span>
                                </label>
                                <input
                                    type="text"
                                    name="cidade"
                                    id="cidade"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="bairro">
                                    <span>Bairro</span>
                                </label>
                                <input
                                    type="text"
                                    name="bairro"
                                    id="bairro"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="cep">
                                    <span>CEP</span>
                                </label>
                                <input type="text" name="cep" id="cep" class="form-control" />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                    <form action="CursoServlet" method="POST" id="formulario-cursos" class="my-3">
                        <h2>Formulário Cursos</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <div class="form-group">
                                <label for="nome_curso">
                                    <span>Nome</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    placeholder="Fotografia I"
                                    name="nome_curso"
                                    id="nome_curso"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="requisito">
                                    <span>Requisito</span>
                                </label>
                                <input
                                    type="text"
                                    name="requisito"
                                    id="requisito"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="ementa">
                                    <span>Ementa</span>
                                </label>
                                <input
                                    type="text"
                                    name="ementa"
                                    id="ementa"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="carga_horaria_curso">
                                    <span>Carga Horária Curso</span>
                                </label>
                                <input
                                    type="number"
                                    min="0"
                                    name="carga_horaria_curso"
                                    id="carga_horaria_curso"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="preco">
                                    <span>Preço</span>
                                </label>
                                <input
                                    type="number"
                                    step="0.01"
                                    min="0"
                                    name="preco"
                                    id="preco"
                                    class="form-control"
                                    />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                    <form id="formulario-instrutores" class="my-3">
                        <h2>Formulário Instrutores</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <div class="form-group">
                                <label for="nome_instrutor">
                                    <span>Nome</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    placeholder="Han Yang"
                                    name="nome_instrutor"
                                    id="nome_instrutor"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="email_instrutor">
                                    <span>Email</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="email"
                                    name="email_instrutor"
                                    id="email_instrutor"
                                    placeholder="name@example.com"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="valor_hora">
                                    <span>Valor Hora</span>
                                </label>
                                <input
                                    type="number"
                                    step="0.01"
                                    min="0"
                                    name="valor_hora"
                                    id="valor_hora"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="login_instrutor">
                                    <span>Login</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    name="login_instrutor"
                                    id="login_instrutor"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="senha_instrutor">
                                    <span>Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="senha_instrutor"
                                    id="senha_instrutor"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="confirma_senha_instrutor">
                                    <span>Confirmar Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="confirma_senha_instrutor"
                                    id="confirma_senha_instrutor"
                                    class="form-control"
                                    required
                                    />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                    <form id="formulario-matriculas" class="my-3">
                        <h2>Formulário Matrículas</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <div class="form-group">
                                <label for="id_turmas">
                                    <span>ID Turmas</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="number"
                                    min="0"
                                    name="id_turmas"
                                    id="id_turmas"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="id_alunos">
                                    <span>ID Alunos</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="number"
                                    min="0"
                                    name="id_alunos"
                                    id="id_alunos"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="data_matricula">
                                    <span>Data Matrícula</span>
                                </label>
                                <input
                                    type="date"
                                    min="2020-01-01"
                                    name="data_matricula"
                                    id="data_matricula"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="nota">
                                    <span>Nota</span>
                                </label>
                                <input
                                    type="number"
                                    step="0.1"
                                    min="0"
                                    name="nota"
                                    id="nota"
                                    class="form-control"
                                    />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                    <form id="formulario-turmas" class="my-3">
                        <h2>Formulário Turmas</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <div class="form-group">
                                <label for="id_instrutores">
                                    <span>ID Instrutores</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="number"
                                    min="0"
                                    name="id_instrutores"
                                    id="id_instrutores"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="id_cursos">
                                    <span>ID Cursos</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="number"
                                    min="0"
                                    name="id_cursos"
                                    id="id_cursos"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="data_inicio">
                                    <span>Data Início</span>
                                </label>
                                <input
                                    type="date"
                                    min="2020-01-01"
                                    name="data_inicio"
                                    id="data_inicio"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="data_final">
                                    <span>Data Final</span>
                                </label>
                                <input
                                    type="date"
                                    min="2020-01-01"
                                    name="data_final"
                                    id="data_final"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="carga_horaria_turma">
                                    <span>Carga Horária Turma</span>
                                </label>
                                <input
                                    type="text"
                                    name="carga_horaria_turma"
                                    id="carga_horaria_turma"
                                    class="form-control"
                                    />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                    <form id="formulario-administrador" class="my-3">
                        <h2>Formulário Administrador</h2>
                        <p>
                            Campo obrigatório
                            <abbr title="obrigatório">*</abbr>
                        </p>
                        <section>
                            <div class="form-group">
                                <label for="login_administrador">
                                    <span>Login</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="text"
                                    name="login_administrador"
                                    id="login_administrador"
                                    class="form-control"
                                    />
                            </div>
                            <div class="form-group">
                                <label for="senha_administrador">
                                    <span>Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="senha_administrador"
                                    id="senha_administrador"
                                    class="form-control"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label for="confirma_senha_administrador">
                                    <span>Confirmar Senha</span>
                                    <abbr title="obrigatório">*</abbr>
                                </label>
                                <input
                                    type="password"
                                    name="confirma_senha_administrador"
                                    id="confirma_senha_administrador"
                                    class="form-control"
                                    required
                                    />
                            </div>
                        </section>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                </article>
            </section>
        </main>
        <!-- Bibliotecas -->
        <script src="../../lib/jquery/jquery-3.4.1.min.js"></script>
        <script src="../../lib/jquery/jquery.validate.min.js"></script>
        <script src="../../lib/popper/popper.min.js"></script>
        <script src="../../lib/bootstrap/bootstrap.min.js"></script>
        <!-- Script Projeto -->
        <script type="module" src="../scripts/tabelas.js"></script>
    </body>
</html>
