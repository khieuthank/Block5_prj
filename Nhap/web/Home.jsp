<%-- 
    Document   : Home
    Created on : 25-04-2023, 09:29:38
    Author     : trung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <table border="1px solid black">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Dob</th>
                    <th>DEP</th>
                </tr>
                <c:forEach items="${listS}" var="a">
                <tr>
                    <td>${a.sid}</td>
                    <td>${a.sname}</td>
                    <td>
                        <c:if test="${a.gender ==1}">Male</c:if>
                        <c:if test="${a.gender ==0}">Female</c:if>
                    </td>
                    <td>${a.dob}</td>
                    <td>${a.did}</td>
                    <td>
                        <a href="#">update</a>
                        
                    </td>
                </tr>
            </c:forEach>

        </table>
            <a href="#">Create student</a>    
    </body>
   
    
</html>
