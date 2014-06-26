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
                    <h1>Ciudades</h1>
                    <html:link action="inicio.do" styleClass="enCabecera">Gesti&oacute;n</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Ciudades

                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                    <html:form action="/ciudadesAction.do" >
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th colspan="2">
                                    <html:submit property="add" value="add"></html:submit>
                                    </th>
                                </tr>
                        </html:form>
                        
                        <logic:iterate name="lista" id="lista">
                            
                            <html:form action="/ciudadesAction.do" >
                                <tr>
                                    <td><html:text name="lista" property="nombre" disabled="true"/></td>

                                    <html:hidden property="update" value="${lista.nombre}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </html:form>
                                <html:form action="/ciudadesAction.do" >
                                    <html:hidden property="delete" value="${lista.nombre}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </tr>
                            </html:form>
                        </logic:iterate>
                        
                    </table>

                    <%
                        if (request.getParameter("add") != null) {
                            request.removeAttribute("add");
                    %>
                    <html:form action="/ciudadesAction.do">
                        <table>
                            <tbody>
                                <tr>
                                    <td><html:text name="lista" property="nombre" disabled="true"/></td>
                                    <td><html:submit property="save" value="Añadir" ></html:submit></td>
                                    </tr>
                                </tbody>
                            </table>
                    </html:form>

                    <% }%>
                    <p>Actualizar la p&aacute;gina por cada modifiaci&oacute;n</p>
                </div>
            </section>  
        </div>
    </body>
</html:html>
