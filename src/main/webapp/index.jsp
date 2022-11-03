<%--
  Created by IntelliJ IDEA.
  User: Sky
  Date: 2022/11/3
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/change.css">
</head>
<body>
<div class="control">
    <div class="item">
        <div class="active">登录</div><div><a href="${pageContext.request.contextPath}/jsp/register.jsp">注册</a></div>
    </div>
    <form action="${pageContext.request.contextPath}/login.action" method="post">
        <div class="content">
            <div style="display: block;">
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" placeholder="请输入用户名" name="name"></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="password" placeholder="请输入密码" name="pwd"></td>
                </tr>
                <tr>
                    <br/><td colspan="2" align="center"><input type="submit" value="登录"></td>
                </tr>
            </div>
        </div>
    </form>
</div>
</body>
</html>
