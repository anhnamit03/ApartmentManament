<%-- 
    Document   : login.jsp
    Created on : Jun 14, 2024, 1:40:54 PM
    Author     : THINH
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h1>ĐĂNG NHẬP</h1>

<c:url value="/login" var="action" />
<form method="post" action="${action}">
    <div class="mb-3 mt-3">
        <label for="username" class="form-label">Tên đăng nhập</label>
        <input type="text" class="form-control" id="username" placeholder="Tên đăng nhập" name="username">
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Mật khẩu</label>
        <input type="password" class="form-control" id="password" placeholder="Mật khẩu" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Đăng nhập</button>
</form>
