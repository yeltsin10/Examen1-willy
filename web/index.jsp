<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Sep 10, 2014, 1:24:42 PM
    Author     : Willy Yeltsin
--%>

<sql:query var="carreras" dataSource="jdbc/Examen1-willy">
    SELECT clavecarrera FROM carrera
</sql:query>
<%--
<table border="1">
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${carreras.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${carreras.rowsByIndex}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><c:out value="${column}"/></td>
    </c:forEach>
    </tr>
</c:forEach>
</table>
    --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen1-willy</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Bienvenido al Examen 1 de Willy</h1><table border="0">
            <thead>
                <tr>
                    <th>Bienvenidos a la aplicacion</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Sistema para informacion de los directores de carrera</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Seleccione una de las opciones:</strong>
                            <select name="clavecarrera">
                                <c:forEach var="row" items="${carreras.rows}">
                                    <option value="${row.clavecarrera}">${row.nombrecarrera}</option>
                                </c:forEach>
                            </select><input type="submit" value="Enviar" name="Submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
