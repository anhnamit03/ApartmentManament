<%-- 
    Document   : item
    Created on : Jun 14, 2024, 1:53:27 PM
    Author     : THINH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tủ đồ điện tử</title>
    </head>
    <body>
        <h1>Các vật phẩm trong tủ đô của cư dân: ${residentName}</h1>
        <a class="btn" href="<c:url value=''/>">Thêm mới</a>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên vật phẩm</th>
                    <th>Trạng thái</th>
                    <th>Thời gian nhận</th>
                    <th>Thời gian trả</th>  
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${item}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <c:choose>
                            <c:when test="${item.id_status == 0}">
                                <td>Chưa nhận</td>
                            </c:when>
                            <c:otherwise>
                                <td>Đã nhận</td>
                            </c:otherwise>
                        </c:choose>
                        <td>${item.received_time}</td>
                        <c:choose>
                            <c:when test="${item.id_status == 0}">
                                <td>Chưa nhận</td>
                            </c:when>
                            <c:otherwise>
                                <td>${item.returned_time}</td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
