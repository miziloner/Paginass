
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

		$("#name").val('');
		


		$('#btna').click(function () {
		    if ($("#name").val() === "") {
			alert("El campo Nombre no puede estar vacío.");
			$("#name").focus();
			return false;
		    }
		    if ($("#email").val() === "") {
			alert("El campo email no puede estar vacío.");
			$("#email").focus();
			return false;
		    }
		    if ($("#password").val() === "") {
			alert("El campo password no puede estar vacío.");
			$("#password").focus();
			return false;
		    }

		    document.RegistroForm.method = 'post';
		    document.RegistroForm.action = 'Registro.do?do=reg';
		    document.RegistroForm.submit();

		});

	    });
	</script> 


        <title>Registro</title>
    </head>
    <body>
        <html:form action="Registro.do?do=init" method="post" onsubmit="return true" 
		   enctype="multipart/form-data" styleId="RegistroForm">

	    <div id="registro">


		nombre: <html:text name="RegistroForm" property="name" styleId="name"  /><br><br>
		correo electronico: <html:text name="RegistroForm" property="email" styleId="email" /><br><br>
		contraseña: <html:password name="RegistroForm" property="password" styleId="password"/><br><br>
		<input type="button" value="Enviar" id="btna"/>


	    </div>


	</body>

    </html:form>

</html>
