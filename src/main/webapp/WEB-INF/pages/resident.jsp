<%-- 
    Document   : resident
    Created on : Jun 17, 2024, 11:00:49 PM
    Author     : THINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center text-dark mt-1">Thêm Cư dân</h1>
            <c:url value="/resident" var="action" />
            <form:form method="post" action="${action}" modelAttribute="newUser" class="mt-3">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <form:input path="username" class="form-control" id="username" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <form:input path="password" class="form-control" id="password" type="password" />
                </div>
                <div class="form-group">
                    <label for="fullname">Full Name:</label>
                    <form:input path="fullname" class="form-control" id="fullname" />
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <form:input path="phone" class="form-control" id="phone" />
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <form:select path="gender" class="form-control" id="gender">
                        <form:option value="0">Nam</form:option>
                        <form:option value="1">Nữ</form:option>
                    </form:select>
                </div>
                <div class="form-group">
                    <label for="active">Active:</label>
                    <form:select path="active" class="form-control" id="active">
                        <form:option value="1">Yes</form:option>
                        <form:option value="0">No</form:option>
                    </form:select>
                </div>
                <div class="form-group">
                    <label for="link_image">Link Image:</label>
                    <form:input path="link_image" class="form-control" id="link_image" />
                </div>
                <button type="submit" class="btn btn-primary mt-3">Thêm Cư dân</button>
            </form:form>
    </body>
</html>
