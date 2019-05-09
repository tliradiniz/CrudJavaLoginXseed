<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <script>
        $(function() {
            $('input[name=expiration]').datepicker();
        });
    </script>

    <form method="POST" action='UserController' name="frmAddUser">
        User ID : <input type="text" readonly="readonly" name="userid"
            value="<c:out value="${user.userid}" />" /> <br /> 
        Nome : <input
            type="text" name="name"
            value="<c:out value="${user.name}" />" /> <br /> 
        Endereco : <input
            type="text" name="address"
            value="<c:out value="${user.address}" />" /> <br /> 
        Validade : <input
            type="text" name="expiration"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.date}" />" /> <br /> 
        Credito : <input type="text" name="credit"
            value="<c:out value="${user.credit}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
</body>
</html>