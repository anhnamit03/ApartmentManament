<%-- 
    Document   : surveys
    Created on : Jun 14, 2024, 1:52:49 PM
    Author     : THINH
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Khảo sát</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="text-center text-dark mt-1">Danh sách Khảo sát</h1>

    <c:if test="${not empty surveys}">
        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ngày khởi tạo</th>
                    <th>Mô tả</th>
                    <th>Người Tham Gia Khảo Sát</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="survey" items="${surveys}">
                    <tr>
                        <td>${survey.id}</td>
                        <td>${survey.innitiated_date}</td>
                        <td>${survey.description}</td>
                        <td>${survey.user.username}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <h2 class="text-center text-dark mt-5">Thêm Khảo sát Mới</h2>

    <c:url value="/surveys" var="action" />
    <form:form method="post" action="${action}" modelAttribute="surveyform">
        <div class="form-floating mb-3 mt-3">
            <form:input class="form-control" id="description" placeholder="Mô tả" path="description" />
            <label for="description">Mô tả</label>
        </div>

        <div class="form-floating mb-3 mt-3">
            <form:input type="datetime-local" class="form-control" id="innitiated_date" placeholder="Ngày khởi tạo" path="innitiated_date" />
            <label for="innitiated_date">Ngày khởi tạo</label>
        </div>

        <div class="form-floating mb-3 mt-3">
            <form:select class="form-control" id="id_user" path="id_user">
                <form:option value="" label="Chọn người dùng"/>
                <c:forEach var="user" items="${users}">
                    <form:option value="${user.id}" label="${user.username}"/>
                </c:forEach>
            </form:select>
            <label for="id_user">Cư dân</label>
        </div>

        <div class="form-floating mb-3 mt-3">
            <button class="btn btn-primary mt-1" type="submit">Thêm Khảo sát</button>
        </div>
    </form:form>
</div>
</body>
</html>
