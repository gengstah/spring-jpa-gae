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
			window.location = '<c:url value="/spring-jpa-gae/record/new" />';
		});
		
		oTable = $('#reportDispatchRecordTable').dataTable( {
			"bPaginate": true,
			"bJQueryUI": true,
	        "sPaginationType": "full_numbers",
	        "bFilter": true
		});
	});
</script>
</head>
<body id="dt_example">
	<div id="container">
		<div class="demo_jui">
			<div align="right"><input id="addNewRecordButton" type="button" value="Add Record" /></div>
			<table cellpadding="0" cellspacing="0" border="0" class="display" id="reportDispatchRecordTable">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Comment</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="person" items="${ persons }" varStatus="status">
						<tr>
							<td><c:out value="${ person.firstName }" /></td>
							<td><c:out value="${ person.lastName }" /></td>
							<td><c:out value="${ person.comment }" /></td>
							<td><c:out value="${ person.email }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>