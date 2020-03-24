
<%@ page import="prova.igordaniel.Receita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receita.label', default: 'Receita')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receita" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receita">
			
				<g:if test="${receitaInstance?.classeImovel}">
				<li class="fieldcontain">
					<span id="classeImovel-label" class="property-label"><g:message code="receita.classeImovel.label" default="Classe Imovel" /></span>
					
						<span class="property-value" aria-labelledby="classeImovel-label"><g:fieldValue bean="${receitaInstance}" field="classeImovel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.indice}">
				<li class="fieldcontain">
					<span id="indice-label" class="property-label"><g:message code="receita.indice.label" default="Indice(%)" /></span>
					
						<span class="property-value" aria-labelledby="indice-label"><g:fieldValue bean="${receitaInstance}" field="indice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="receita.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${receitaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.parcelas}">
				<li class="fieldcontain">
					<span id="parcelas-label" class="property-label"><g:message code="receita.parcelas.label" default="Parcelas" /></span>
					
						<span class="property-value" aria-labelledby="parcelas-label"><g:fieldValue bean="${receitaInstance}" field="parcelas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.valorContrato}">
				<li class="fieldcontain">
					<span id="valorContrato-label" class="property-label"><g:message code="receita.valorContrato.label" default="Valor Contrato" /></span>
					
						<span class="property-value" aria-labelledby="valorContrato-label"><g:fieldValue bean="${receitaInstance}" field="valorContrato"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${receitaInstance?.valorContratoFinal}">
				<li class="fieldcontain">
					<span id="valorContratoFinal-label" class="property-label"><g:message code="receita.valorContratoFinal.label" default="valor Contrato Final" /></span>
					
						<span class="property-value" aria-labelledby="valorContrato-label"><g:fieldValue bean="${receitaInstance}" field="valorContratoFinal"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receitaInstance?.id}" />
					<g:link class="edit" action="edit" id="${receitaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
