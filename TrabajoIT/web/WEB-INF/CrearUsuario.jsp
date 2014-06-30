<%-- 
    Document   : CrearUsuario
    Created on : 25-jun-2014, 20:05:13
    Author     : francisco
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!--<link rel="stylesheet" type="text/css" href="style.css">-->
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
                $("#nombre").attr("placeholder", "Nombre");
                $("#apellidos").attr("placeholder", "Apellidos");
                $("#correo").attr("placeholder", "Correo").attr("type", "email");
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
                                <li><html:link action="/login.do">Iniciar Sesi&oacute;n</html:link></li>
                                <li class="current_page_item"><html:link action="/registro.do">Registrarse</html:link></li>
                                <li><html:link action="/inicio.do">C&oacute;mo funciona</html:link></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
            </div>
            <div class="contenedor">
                <section class="login">
                    <div id="tablaCrud">
                    <html:form action="/usuarios.do" >
                        <div class="error">
                            <html:errors property="falta"></html:errors>
                            <html:errors property="login"></html:errors>
                            <html:errors property="passCort"></html:errors>
                            <html:errors property="sexo"></html:errors>
                            <html:errors property="tipo"></html:errors>
                            </div>
                            <table>
                                <tr>
                                    <th>Nick</th>
                                    <th>Nombre</th>
                                    <th>Apellidos</th>
                                    <th>Email</th>
                                    <th>Contrase&ntilde;a</th>
                                    <th>Tipo</th>
                                    <th>Sexo</th>

                                    <th colspan="2">
                                    <html:submit property="add" value="add"></html:submit>
                                    </th>
                                </tr>
                        </html:form>
                        <logic:iterate name="lista" id="lista">
                            <html:form action="/usuarios.do" styleId="registro">
                                <tr>
                                    <td><html:text name="lista" property="nick" disabled="true"></html:text></td>
                                    <td><html:text name="lista" property="nombre" styleId="nombre"></html:text></td>
                                    <td><html:text name="lista" property="apellidos" styleId="apellidos"></html:text></td>
                                    <td><html:text name="lista" property="email" styleId="correo"></html:text></td>
                                    <td><html:text name="lista" property="pass" styleId="pass"></html:text></td>
                                    <td><html:text name="lista" property="tipo" styleId="tipo"></html:text></td>
                                    <td><html:text name="lista" property="sexo" styleId="sexo"></html:text></td>
                                    <html:hidden property="update" value="${lista.nick}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </html:form>
                                <html:form action="/usuarios" >
                                    <html:hidden property="delete" value="${lista.nick}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/delete.png"/></td>
                                </tr>
                            </html:form>
                        </logic:iterate>

                        <%
                            if (request.getParameter("add") != null) {
                                request.removeAttribute("add");
                        %>
                        <html:form action="/usuarios.do" styleId="registro">
                            <tr>
                                <td><html:text property="nick" styleId="nick"></html:text></td>
                                <td><html:text property="nombre" styleId="nombre"></html:text></td>
                                <td><html:text property="apellidos" styleId="apellidos"></html:text></td>
                                <td><html:text property="email" styleId="correo"></html:text></td>
                                <td><html:text property="pass" styleId="pass"></html:text></td>
                                    <td>
                                    <html:select property="tipo" styleClass="sel">
                                        <html:option value="admin">Admin</html:option>
                                        <html:option value="normal">Normal</html:option>
                                    </html:select>
                                </td>
                                <td>
                                    <html:select property="sexo" styleClass="sel">
                                        <html:option value="hombre">Hombre</html:option>
                                        <html:option value="mujer">Mujer</html:option>
                                    </html:select>
                                </td>
                                <td><html:submit property="save" value="Añadir" ></html:submit></td>
                                </tr>

                        </html:form>
                        <% }%>
                    </table>
                </div>
            </section>  
        </div>
    </body>
</html:html>

