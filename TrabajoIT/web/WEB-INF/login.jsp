<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        
    </head>
    <body style="background-color: white">
        <html:errors></html:errors>
        <h3><bean:message key="welcome.heading"/></h3>
        <html:form action="checklogin">
            Usuario:<html:text property="nick"></html:text>
            Clave:<html:text property="pass"></html:text>
            <html:submit>Enviar</html:submit>
        </html:form>   
    </body>
</html:html>
