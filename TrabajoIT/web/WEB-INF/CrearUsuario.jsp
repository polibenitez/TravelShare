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
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>TravelShare</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Gesti&oacute;n</h1>
                    <html:link action="checklogin.do" styleClass="enCabecera">Gesti&oacute;n</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Usuarios
                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                    <html:form action="/usuarios.do" >
                        <div class="error">
                            <html:errors property="falta"></html:errors>
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
                            <html:form action="/usuarios.do" >
                                <tr>
                                    <td><html:text name="lista" property="nick" disabled="true"/></td>
                                    <td><html:text name="lista" property="nombre" /></td>
                                    <td><html:text name="lista" property="apellidos" /></td>
                                    <td><html:text name="lista" property="email" /></td>
                                    <td><html:text name="lista" property="pass" /></td>
                                    <td><html:text name="lista" property="tipo" /></td>
                                    <td><html:text name="lista" property="sexo" /></td>
                                    <html:hidden property="update" value="${lista.nick}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </html:form>
                                <html:form action="/usuarios" >
                                    <html:hidden property="delete" value="${lista.nick}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </tr>
                            </html:form>
                        </logic:iterate>
                    </table>

                    <%
                        if (request.getParameter("add") != null) {
                            request.removeAttribute("add");
                    %>
                    <html:form action="/usuarios.do">
                        <table>
                            <tbody>
                                <tr>
                                    <td><html:text name="lista" property="nick" value=""/></td>
                                    <td><html:text name="lista" property="nombre" value=""/></td>
                                    <td><html:text name="lista" property="apellidos" value=""/></td>
                                    <td><html:text name="lista" property="email" value=""/></td>
                                    <td><html:text name="lista" property="pass" value=""/></td>
                                    <td><html:text name="lista" property="tipo" value=""/></td>
                                    <td><html:text name="lista" property="sexo" value=""/></td>
                                    <td><html:submit property="save" value="Añadir" ></html:submit></td>
                                    </tr>
                                </tbody>
                            </table>
                    </html:form>
                    <% }%>
                </div>
            </section>  
        </div>
    </body>
</html:html>

