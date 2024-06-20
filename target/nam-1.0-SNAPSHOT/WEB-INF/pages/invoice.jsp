<%-- 
    Document   : invoice
    Created on : Jun 14, 2024, 1:53:55 PM
    Author     : THINH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hóa Đơn</title>
    </head>
    <body>
        <h1>Quản Lý Hóa Đơn</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Trạng thái</th>
                    <th>Mô tả</th>
                    <th>Ngày thu</th>
                    <th>Tên Cư Dân</th>
                    <th>Loại Phí</th>
                    <th>Giá</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${payment}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <c:choose>
                            <c:when test="${p.status == 0}">
                                <td class="text-danger">Chưa đóng phí</td>
                            </c:when>
                            <c:otherwise>
                                <td class="text-success">Đã đóng phí</td>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${p.status == 0}">
                                <td class="text-danger">Chưa đóng phí</td>
                            </c:when>
                            <c:otherwise>
                                <td ><fmt:formatDate value="${p.dateOfPayment}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
                            </c:otherwise>
                        </c:choose>
                        <td>${p.user.fullname}</td>
                        <td>${p.fee.name}</td>
                        <td><fmt:formatNumber value="${p.fee.price}" 
                                          type="currency" currencySymbol="₫"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
