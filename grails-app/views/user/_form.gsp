<%@ page import="br.com.oxentecloud.security.User" %>


<!-- 
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>
 -->
<div class="control-group">
	<label class="control-label">Usuário</label>
	<div class="controls">
		<input id="user_name" name="username" type="text" value="${userInstance?.username}"/>
	</div>
</div>
<!-- 
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>
-->
<div class="control-group">
	<label class="control-label">Senha</label>
	<div class="controls">
		<input id="pwd" name="password" type="text" value="${userInstance?.password}"/>
	</div>
</div>
<!-- 
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')}">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />		
	</label>
</div>-->
<div class="control-group">
    <label class="control-label">Ativo</label>
    <div class="controls">
        <label>	<g:checkBox name="enabled" value="${userInstance?.enabled}" /></label>
    </div>
</div>