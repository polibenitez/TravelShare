<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" />
        <script src="js/jquery.min.js"></script>
        <script src="js/config.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <title>TravelShare</title>
        <script type="text/javascript" >
            $(function() {
                $("#nick").attr("placeholder", "Nick");
                $("#pass").attr("placeholder", "Contraseña").attr("type", "password");
            });
        </script>
    </head>
    <body>
        <div id="header-wrapper">
            <header class="container" id="site-header">
                <div class="row">
                    <div class="12u">
                        <div id="logo">

                            <html:link action="/inicio.do" style="text-decoration:none;"><h1>TravelShare</h1></html:link>
                        </div>
                        <nav id="nav">
                            <ul>
                                <li><html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link></li>
                                <li class="current_page_item"><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                                <li><html:link action="/registro.do">Registrarse</html:link></li>
                                <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>
        </div>
        <div class="box container">
   
            <div style="width:40%; margin:0px auto 0px auto;">
                <legend>Inicia sesi&oacute;n con tu cuenta</legend>
                    <html:form action="checklogin">
                            <img src="imagenes/avatar_login.png" style="margin:0 auto 0 auto;">
                            
                            <br />    
                            Usuario:<html:text property="nick" styleId="nick" style="width:100%;"></html:text>
                                
                            Clave:<html:text property="pass" styleId="pass" style="width:100%;"></html:text>
                                    <html:submit>Enviar</html:submit>

                        <html:errors></html:errors>
                        <logic:notEmpty name="msg">
                            <bean:write name="msg" />
                        </logic:notEmpty>
                    </html:form>   
                </div>
        </div>
    </body>

</html:html>
