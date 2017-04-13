<%-- 
    Document   : index
    Author     : GJC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href = "css/login.css">

        <title>LoginController</title>
    </head>
    <body>
        <div class = "login_box" style = "text-align:center">
            <h1>管理员</h1>
            <h2>登陆</h2>
            <form action="LoginController" > 

				Please enter your username 		
				<input type="text" type="text" name="username"/><br>		
		
				Please enter your password
				<input type="password" name="password"/>
			
				<input type="submit" value="Login">			
		
			</form>
  
                <c:if test="${not empty errMsg}">                    
                    <b>Warming</b><font color="red"> <c:out value="${errMsg}"/></font><b> ]</b>
                </c:if>
        </div>
    </body>
</html>
