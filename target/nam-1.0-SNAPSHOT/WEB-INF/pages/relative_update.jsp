<%-- 
    Document   : relative_update
    Created on : Jun 18, 2024, 5:31:54 PM
    Author     : THINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa Họ Hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<h1 class="text-center text-dark mt-1">Chỉnh sửa Họ Hàng</h1>
<form action="<c:url value='/relative/${relative.id}'/>" method="post">
    <table class="table">
        <tr>
            <td>Tên họ hàng:</td>
            <td><input type="text" name="nameRelative" value="${relative.nameRelative}" class="form-control" /></td>
        </tr>
        <tr>
            <td>CCCD:</td>
            <td><input type="text" name="cccd" value="${relative.cccd}" class="form-control" /></td>
        </tr>
        <tr>
            <td>Điện thoại:</td>
            <td><input type="text" name="phone" value="${relative.phone}" class="form-control" /></td>
        </tr>
        <tr>
            <td>Mối quan hệ:</td>
            <td><input type="text" name="relationship" value="${relative.relationship}" class="form-control" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit" class="btn btn-primary">Lưu</button>
                <a href="<c:url value='/relative'/>" class="btn btn-secondary">Hủy</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>