<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <html:errors></html:errors>
                        <a href="inicio.jsp">Principal</a>
                        <img src="imagenes/guia-menu.png">
                        Login
                        <img src="imagenes/guia-menu.png">
                    </div>
                </header>
                <section class="login">
                    <div class="formulario">
                    <html:form action="checklogin">
                        <fieldset>
                            <img src="imagenes/avatar_login.png">
                            <legend>Inicia sesi&oacute;n con tu cuenta</legend>
                            
                            Usuario:<html:text property="nick"></html:text>
                            Clave:<html:text property="pass"></html:text>
                            <html:submit>Enviar</html:submit>
                            
                            </fieldset>
                            <html:errors></html:errors>
                    </html:form>   
                </div>
            </section>
        </div>
    </body>

</html:html>
