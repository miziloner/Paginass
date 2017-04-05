
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
        <title>Failure</title>
    </head>
    <body>
	<%--html:form action="Failure.do?do=failure" method="post" onsubmit="return true" enctype="multipart/form-data" styleId="FailureForm">
        
	
	</html:form--%>
	<h1>Usuario no registrado</h1>
	
	<input type="button" value="Regresar" id="btnr">
    </body>
</html>
