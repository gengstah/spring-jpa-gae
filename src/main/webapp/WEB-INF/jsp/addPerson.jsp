<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include/headers.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Spring and JPA over BigTable - using Gradle as build tool</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/${ theme }/jquery.ui.theme.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/${ theme }/jquery-ui.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/demo_page.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/demo_table_jui.css" />">

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui-1.10.3.custom.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.js" />"></script>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('input#addNewRecordButton').button().click(function() {
			$('form#person').submit();
		});
		
		$('input#backToHomeButton').button().click(function() {
			window.location = '<c:url value="/spring-jpa-gae/home" />';
		});
	});
</script>
</head>
<body id="dt_example">
	<div id="container">
		<div class="demo_jui">
			<form:form method="POST" commandName="person">
				<table>
					<tbody>
						<tr>
							<td colspan="2" align="left">
								<form:errors path = "*" cssClass="error" />
							</td>
						</tr>
						<tr>
							<td>First Name:</td>
							<td><form:input path="firstName" /></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><form:input path="lastName" /></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><form:input path="email" /></td>
						</tr>
						<tr>
							<td>Comment:</td>
							<td><form:textarea path="comment" /></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td>
								<input id="addNewRecordButton" type="button" value="Add Record" />
							</td>
							<td>
								<input id="backToHomeButton" type="button" value="Cancel" />
							</td>
						</tr>
					</tfoot>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>