<%@ page import="prova.igordaniel.Receita" %>



<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'classeImovel', 'error')} ">
	<label for="classeImovel">
		<g:message code="receita.classeImovel.label" default="Classe Imovel" />
		
	</label>
	<g:select name="classeImovel" from="${receitaInstance.constraints.classeImovel.inList}" value="${receitaInstance?.classeImovel}" valueMessagePrefix="receita.classeImovel" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'indice', 'error')} required">
	<label for="indice">
		<g:message code="receita.indice.label" default="Indice(%)" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="indice" value="${fieldValue(bean: receitaInstance, field: 'indice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="receita.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${receitaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'parcelas', 'error')} required">
	<label for="parcelas">
		<g:message code="receita.parcelas.label" default="Parcelas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="parcelas" type="number" value="${receitaInstance.parcelas}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'valorContrato', 'error')} required">
	<label for="valorContrato">
		<g:message code="receita.valorContrato.label" default="Valor Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorContrato" value="${fieldValue(bean: receitaInstance, field: 'valorContrato')}" required=""/>
</div>

