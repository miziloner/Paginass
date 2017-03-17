
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
		   alert("simijoo")
		    document.RegistroForm.method = 'post';
		    document.RegistroForm.action = 'Registro.do?do=reto';
		    
		    document.RegistroForm.submit();
		});
	    });
	</script> 
	
        <title>Registro</title>
    </head>
    <body>
        <html:form action="Registro.do?do=init" method="post" onsubmit="return true" enctype="multipart/form-data" styleId="RegistroForm">

	    <div id="login">
		
		    <label>Nombre: </label>
		    <input type="text" name="name"/><br>
		    <label>Username: </label>
		    <input type="text" name="username"/><br><br>
		    
		    <input type="button" value="Enviar" id="btne"/>
		    <input type="button" value="Regresar" id="btnr"/>
		
	    </div>
	</body>


	



    </html:form>

</html>
