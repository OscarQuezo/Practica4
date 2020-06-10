<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>


        <form action="LoginControlador" method="post">
            <label> usuario </label>
            <input type ="text" name ="usuario"><br>
            <br>
            <label>Password</label>
            <input type="password" name="password">    <br> 
            <br>
            <input type="submit" value="Ingresar">
            <br> 
            <br>
            <br>
            <br>
            <h2>usuario: admin </h2>
            <h2>password: 12345</h2>
            <br>
            <h2>usuario: gerente general</h2>
            <h2>password: abc123</h2>
        </form>
    </body>
</html>
