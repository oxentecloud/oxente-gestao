
<%@ page import="br.com.oxentecloud.security.User" %>
<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>	
			
	<div class="span9" id="content">
	<div class="row-fluid">
			<div class="span12">
				<div class="box">
					<div class="box-title">
						<g:message code="default.list.label" args="[entityName]" />
					</div>
					<div class="box-content nopadding">
						<table id="datatable" class="table table-striped table-bordered">
							<thead>

								<tr>
									<th>Id</th>
									<th>Nome</th>
									<th>Status</th>
									<th>Ações</th>
								</tr>

							</thead>

							<tbody>
								<g:each in="${userInstanceList}" status="i" var="userInstance">
									<tr class="${(i % 2) == 0 ? 'even gradeA' : 'odd gradeX'}">
										<td><g:link action="show" id="${userInstance.id}">
												${fieldValue(bean: userInstance, field: "id")}
											</g:link></td>
										<td>
											${fieldValue(bean: userInstance, field: "username")}
										</td>
										<td class="center"><g:formatBoolean
												boolean="${userInstance.enabled}" /></td>
										<td class="center" width="150px"><g:link action="show"
												id="${userInstance.id}" class="btn">
												<i class="icon-eye-open"></i>
											</g:link> <g:link action="edit" id="${userInstance.id}"
												class="btn btn-primary">
												<i class="icon-pencil"></i>
											</g:link> <g:link action="delete" id="${userInstance.id}"
												class="btn btn-danger">
												<i class="icon-remove"></i>
											</g:link></td>
									</tr>
								</g:each>
							</tbody>

						</table>
					</div>
				</div>
			</div>

		<g:javascript src="jquery.dataTables.min.js"/>
		<g:javascript src="imperio.tables.js"/>


		<g:if test="${flash.message}">
			<script>
				$(document).ready(function(){		
					noty({text: '${flash.message}',	type : 'error'});
				});
			</script>
		</g:if>
	</body>
</html>
