<%-- 
    Document   : relative
    Created on : Jun 18, 2024, 5:30:43 PM
    Author     : THINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Quản lý Họ Hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body>
        <h1 class="text-center text-dark mt-1">QUẢN LÝ HỌ HÀNG</h1>

        <div class="d-flex justify-content mb-2">
            <form class="d-flex mx-2" action="<c:url value='/relative'/>">
                <input type="hidden" name="relationship" value=""/>
                <button class="btn btn-primary mt-2 mb-2" type="submit">All</button>
            </form>
            <form class="d-flex mx-2" action="<c:url value='/relative'/>">
                <input type="hidden" name="relationship" value="family"/>
                <button class="btn btn-success mt-2 mb-2" type="submit">Gia đình</button>
            </form>
            <form class="d-flex mx-2" action="<c:url value='/relative'/>">
                <input type="hidden" name="relationship" value="friend"/>
                <button class="btn btn-warning mt-2 mb-2" type="submit">Bạn bè</button>
            </form>
        </div>

        <table class="table">
            <tr>
                <th>#</th>
                <th>Tên họ hàng</th>
                <th>CCCD</th>
                <th>Điện thoại</th>
                <th>Mối quan hệ</th>
                <th></th>
            </tr>
            <c:forEach items="${relatives}" var="r">
                <tr>
                    <td>${r.id}</td>
                    <td>${r.nameRelative}</td>
                    <td>${r.cccd}</td>
                    <td>${r.phone}</td>
                    <td>${r.relationship}</td>
                    <td>
                        <a class="btn btn-primary" href="<c:url value='/relative/${r.id}'/>">Chỉnh sửa</a>
                        <c:url value='/api/relative/${r.id}' var='deleteUrl'/>
                        <button class="btn btn-danger" onclick="deleteRelative('${deleteUrl}')">Xóa</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <script>
            function deleteRelative(url) {
                if (confirm('Bạn có chắc chắn muốn xóa họ hàng này không?')) {
                    fetch(url, {
                        method: 'DELETE'
                    }).then(response => {
                        if (response.ok) {
                            location.reload();
                        } else {
                            alert('Xóa không thành công');
                        }
                    });
                }
            }
        </script>
    </body>
</html>

