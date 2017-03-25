
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saludo</title>
	
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
	
	
    </head>
    <html:form action="Saludo.do?do=ret" method="post" onsubmit="return false" enctype="multipart/form-data" styleId="SaludoForm">

	    <h1>saludo ok</h1>
	    
	    <input type="button" value="Regresar" id="btnr">
	    
    </html:form>
    </body>
</html>
