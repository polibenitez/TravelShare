<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT-EPD5-P2</title>
        <link rel="stylesheet" href="styleView.css" type="text/css">
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <a href="inicio.jsp">Principal</a>
                    <img src="images/guia-menu.png">
                    Login
                    <img src="images/guia-menu.png">
                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                <html:form action="/usuarioaction" >
                    <table>
                        <tr>
                            <th>Nick</th>
                            <th>Nombre</th>
                            <th>Contrase&ntilde;a</th>
                            <th colspan="2">
                                <html:submit property="add" value="add"></html:submit>
                                </th>
                            </tr>
                    </html:form>
                    <logic:iterate name="lista" id="lista">
                        <html:form action="/usuarioaction" >
                            <tr>
                                <td><html:text name="lista" property="nick" /></td>
                                <td><html:text name="lista" property="nombre" /></td>
                                <td><html:text name="lista" property="pass" /></td>
                                <td><html:submit property="update" value="Editar" ></html:submit></td>
                                <td><html:submit property="delete" value="Eliminar" ></html:submit></td>
                                </tr>
                        </html:form>
                    </logic:iterate>
                </table>

                <%
                    if (request.getParameter("add") != null) {
                        request.removeAttribute("add");
                %>
                <html:form action="/usuarioaction">
                    <table>
                        <tbody>
                            <tr>
                                <td><html:text property="nick" /></td>
                                <td><html:text property="nombre" /></td>
                                <td><html:text property="pass" /></td>
                                <html:hidden property="save" value="si" />
                                <td><html:image styleClass="boton1" src="images/save.png"/></td>
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
</html>
