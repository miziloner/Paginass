
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>

	<script type="text/javascript" src="/WebApplication/js/jquery.js"></script>
	<script type="text/javascript" src="/WebApplication/js/jquery.ui.js"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
		$('#btnr').click(function () {

		    document.SaludoForm.method = 'post';
		    document.SaludoForm.action = 'Saludo.do?do=ret';
		    document.SaludoForm.submit();
		});
	    });
	</script>
	<script type="text/javascript">
	    $(document).ready(function () {
		$('#btnShow').click(function () {

		    document.SaludoForm.method = 'post';
		    document.SaludoForm.action = 'Saludo.do?do=muestra';
		    document.SaludoForm.submit();
		});
	    });
	</script>
	


    </head>

    <html:form action="Saludo.do?do=ret" method="post" onsubmit="return false"
	       enctype="multipart/form-data" styleId="SaludoForm">

	<h1>Bienvenido</h1>

	<table>
	    <tr>
		<th>Name</th>
		<th>Email</th>
	    </tr>
	    <tr>
		<logic:iterate name="SaludoForm"id="usersId" property="listId">
		<tr>
		    <td><bean:write name="usersId" property="name"/></td>
		    <td><bean:write name="usersId" property="email"/></td>
		    <td><bean:write name="usersId" property="password"/></td>
		</tr>
	    </logic:iterate>	


	</table>

	<input type="button" value="Salir" id="btnr">
	<input type="button" value="Mostrar" id="btnShow">

    </html:form>
</body>
</html>
