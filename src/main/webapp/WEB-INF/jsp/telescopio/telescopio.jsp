<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Observatorium - Telescópio</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource/css/bootstrap.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource/css/turtletickets.css'/>">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

<script src="<c:url value='/resource/js/jquery-3.2.1.min.js' />"></script>
<script src="<c:url value='/resource/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/resource/js/jquery.mask.min.js' />"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">[PH]</a>
			<ul class="nav navbar-nav">
				<li><a href="<c:url value='/' />"><b>Observatorium</b></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${sessao.logado}">

					<!-- GERENTE -->
					<c:if test="${sessao.tipoUsuario == 'A'}">
						<li><a href="<c:url value="/cadastrar/usuario" />">Cadastrar
								Usuário</a></li>
						<li><a href="<c:url value="/evento/pendentes" />">Aguardando
								Aprovação (${numeroPendentes})</a></li>
						<li><a href="<c:url value="evento/balanco" />">Balanço
								Geral</a></li>
						<li><a href="<c:url value="/logout"/>">Logout</a></li>
					</c:if>

					<!-- COMPRADOR -->
					<c:if test="${sessao.tipoUsuario == 'U'}">
						<li><a href="">Olá, ${sessao.nome}!</a></li>
						<li><a href="<c:url value="/agenda"/>">Agenda</a></li>
						<li><a href="<c:url value="/telescopio"/>">Acesso
								Telescópio</a></li>
						<li><a href="<c:url value="/logout"/>">Logout</a></li>
					</c:if>

				</c:if>

				<c:if test="${empty sessao or not sessao.logado}">
					<li><a href="<c:url value='/cadastrar/usuario' />"><span
							class="glyphicon glyphicon-user"></span> Cadastre-se</a></li>
					<li><a href="<c:url value='/login' />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>

			</ul>
		</div>
	</nav>

	<c:if test="${empty eventos}">
		<div class="row eventoIndex">
			<div class="col-md-12 titulo">
				<h2>Observatorium</h2>
			</div>
			<div class="col-md-4 imagem">[PLACEHOLDER]</div>

			<div class="col-md-8 descricao">
				<p>[LINK TELESCÓPIO]</p>
			</div>

		</div>
	</c:if>

	<c:if test="${not empty eventos}">
		<c:forEach items="${eventos}" var="evento">
			<div class="row eventoIndex">
				<div class="col-md-12 titulo">
					<h2>${evento.eve_titulo}</h2>
					<p>${evento.eve_data}</p>
				</div>

				<div class="col-md-5 descricao">
					<p>${evento.eve_descricao}</p>
					<div>
						<a href="<c:url value="/evento/${evento.eve_cod}"/>" class="link">Visualizar
							evento...</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:if>

	</div>

	<footer class="rodape">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-md-offset-2">
					<ul>
						<li>Acesso ao sistema</li>
					</ul>
				</div>

				<div class="col-md-2">
					<ul>
						<li>Eventos</li>
					</ul>
				</div>

				<div class="col-md-6"></div>
			</div>
		</div>
	</footer>
</body>
</html>
