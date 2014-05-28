<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT-EPD5-P2</title>
        <link rel="stylesheet" href="./css/styleView.css" type="text/css">
    </head>
    <body>
        <h1>Vista Administrador</h1>
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
                        
                        <td><html:text name="lista" property="nombre" /></td>
                        <td>editar<html:submit property="update" value="${lista.nombre}" ></html:submit></td>
                        <td>eliminar<html:submit property="delete" value="${lista.nombre}" ></html:submit></td>
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
                        
                        <td><html:text property="nombre" /></td>
                        <html:hidden property="save" value="si" />
                        <td><html:image styleClass="boton" src="images/save.png"/></td>
                    </tr>
                </tbody>
            </table>
        </html:form>

        <% }%>
        <p>Actualizar la p&aacute;gina por cada modifiaci&oacute;n</p>
        <br>
        <html:link action="/inicio.do">
            <img class="boton" src="images/back.png" alt="volver atras" />
        </html:link>
    </body>
</html>