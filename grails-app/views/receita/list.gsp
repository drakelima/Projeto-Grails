
<%@ page import="prova.igordaniel.Receita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receita.label', default: 'Receita')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-receita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-receita" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="classeImovel" title="${message(code: 'receita.classeImovel.label', default: 'Classe Imovel')}" />
						
						<g:sortableColumn property="nome" title="${message(code: 'receita.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="indice" title="${message(code: 'receita.indice.label', default: 'Indice(%)')}" />
					
						<g:sortableColumn property="parcelas" title="${message(code: 'receita.parcelas.label', default: 'Parcelas')}" />
					
						<g:sortableColumn property="valorContrato" title="${message(code: 'receita.valorContrato.label', default: 'Valor Contrato')}" />
					
						<g:sortableColumn property="valorContratoFinal" title="${message(code: 'receita.valorContratoFinal.label', default: 'Valor Contrato Final')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${receitaInstanceList}" status="i" var="receitaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${receitaInstance.id}">${fieldValue(bean: receitaInstance, field: "classeImovel")}</g:link></td>
					
						<td>${fieldValue(bean: receitaInstance, field: "nome")}</td>
						
						<td>${fieldValue(bean: receitaInstance, field: "indice")}</td>
					
						<td>${fieldValue(bean: receitaInstance, field: "parcelas")}</td>
					
						<td>${fieldValue(bean: receitaInstance, field: "valorContrato")}</td>
						
						<td>${fieldValue(bean: receitaInstance, field: "valorContratoFinal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${receitaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
