<%-- 
    Document   : index
    Created on : Jun 14, 2024, 1:52:30 PM
    Author     : THINH
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1 class="text-center text-dark mt-1">Quản lý Cư dân</h1>
            <div class="d-flex justify-content mb-2">
                <c:url value="/resident" var="resident"/>
                <a class="btn btn-primary mt-2 mb-2 mx-2" href="${resident}">Thêm cư dân</a>
            </div>
            <table class="table table-bordered mt-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên Cư Dân</th>
                        <th>Phone</th>
                        <th>Giới Tính</th>
                        <th>Active</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.fullname}</td>
                            <td>${user.phone}</td>
                            <td>${user.gender == 0 ? 'Nam' : 'Nữ'}</td>
                            <td>${user.active == 1 ? 'Yes' : 'No'}</td>
                            <c:if test="${r[6]==1}">
                                <c:url value="/api/resident/${r[7]}" var="deleteUrl"/>
                                <td><button onclick="deleteResident('${deleteUrl}')" class="btn btn-danger" >Xóa</button></td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>