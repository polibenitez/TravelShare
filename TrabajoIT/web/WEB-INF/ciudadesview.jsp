<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <html:link action="/inicio.do">Principal</html:link>
                        <img src="images/guia-menu.png">
                        Gesti&oacute;n Ciudades
                        <img src="images/guia-menu.png">
                    </div>
                </header>
                <section class="login">
                    <div id="tablaCrud">
                    <html:form action="/ciudadesAction" >
                        <table>
                            <tr>

                                <th>Nombre</th>
                                <th colspan="2">
                                    <html:submit property="add" value="add"></html:submit>
                                    </th>
                                </tr>
                        </html:form>
                        <logic:notEmpty name="lista">

                            <logic:iterate name="lista" id="lista">
                                <html:form action="/ciudadesAction" >
                                    <tr>

                                        <td><html:text name="lista" property="nombre" /></td>
                                        <td>editar<html:submit property="update" value="${lista.nombre}" ></html:submit></td>
                                        <td>eliminar<html:submit property="delete" value="${lista.nombre}" ></html:submit></td>
                                        </tr>
                                </html:form>
                            </logic:iterate>
                        </logic:notEmpty>
                    </table>

                    <%
                        if (request.getParameter("add") != null) {
                            request.removeAttribute("add");
                    %>
                    <html:form action="/ciudadesAction">
                        <table>
                            <tbody>
                                <tr>

                                    <td><html:text property="nombre" /></td>
                                    <html:hidden property="save" value="si" />
                                    <td><html:image styleClass="boton" src="images/save.png"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </html:form>

                    <% }%>
                    <p>Actualizar la p&aacute;gina por cada modifiaci&oacute;n</p>
                    <br></div>
            </section>  
        </div>
        
    </body>
</html>
