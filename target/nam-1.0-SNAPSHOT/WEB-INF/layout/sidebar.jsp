<%-- 
    Document   : sidebar
    Created on : Jun 14, 2024, 1:15:09 PM
    Author     : THINH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <div class="d-flex">
        <nav class="bg-dark sidebar">
            <ul class="list-unstyled">
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/" />">
                        <i class="fas fa-home"></i> Trang Chủ
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/lockers/" />">
                        <i class="fas fa-box"></i> Quản Lý Tủ đồ
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/feedbacks/" />">
                        <i class="fas fa-file-alt"></i> Quản Lý Báo Cáo
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/bills/" />">
                        <i class="fas fa-users"></i> Quản Lý Hóa Đơn
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/surveys/" />">
                        <i class="fas fa-poll"></i> Khảo Sát
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/residents/" />">
                        <i class="fas fa-users"></i> Quản Lý Cư Dân
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/relatives/" />">
                        <i class="fas fa-box"></i> Quản Lý Họ Hàng
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<c:url value="/statistics/" />">
                        <i class="fas fa-chart-bar"></i> Thống Kê
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>
