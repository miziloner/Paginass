

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script type="text/javascript" src="/WebApplication/js/jquery.js"></script>
	<script type="text/javascript" src="/WebApplication/js/jquery.ui.js"></script>


	<script type="text/javascript">


	    $(document).ready(function () {
		
		$('#name').val('');

		$('#btn').click(function () {

		    document.LoginForm.method = 'post';
		    document.LoginForm.action = 'Registro.do?do=reg';

		    document.LoginForm.submit();
		});
		
		
		$('#btn2').click(function () {
		    // alert("funcion jquery");
		    document.LoginForm.method = 'post';
		    document.LoginForm.action = 'Login.do?do=init';
		    document.LoginForm.submit();
		});
	  
	    });
	</script> 

	

    </head>
    <body style="background-color:#FFFFFF">
	<div id="log">
	    <html:form action="Login.do?do=init" method="post" onsubmit="return true" enctype="multipart/form-data" styleId="LoginForm">

		<h1>Login</h1>
		

		nombre: <html:text name="LoginForm" property="name" styleId="name"/><br><br>
		password: <html:password name="LoginForm" property="password" styleId="password"/><br><br>



		<input type="button" value="Registrar" id="btn">
		<input type="button" value="Ingresar" id="btn2">

	    </html:form>
	</div>
    </body>
</html:html>