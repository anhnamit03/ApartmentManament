<%-- 
    Document   : lcoker
    Created on : Jun 14, 2024, 1:52:57 PM
    Author     : THINH
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locker</title>
    </head>
    <body>
        <h1>QUẢN LÝ TỦ ĐỒ CỦA CƯ DÂN</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên cư dân</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${locker}" var="locker">
                    <tr>
                        <td>${locker.id}</td>
                        <td>${locker.userID.fullname}</td>
                        <td>
                            <a class="btn"
                               href="<c:url value="/lockers/${locker.id}/items"/>">
                                Chi tiết
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
