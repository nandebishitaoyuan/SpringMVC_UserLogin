<%--
  Created by IntelliJ IDEA.
  User: Sky
  Date: 2022/10/16
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
  <link rel="stylesheet" type="text/css" href="../css/change.css">
</head>
<body>
<div class="control">
  <div class="item">
    <div><a href="${pageContext.request.contextPath}/index.jsp">登录</a></div><div class="active">注册</div>
  </div>
  <div class="content">
    <div style="display: block;">
      <form action="${pageContext.request.contextPath}/register.action"  method="post">
        <p>用户名</p>
        <input type="text" required name="name"/>
        <p>密码</p>
        <input type="password" required name="pwd"/>
        <p>重复密码</p>
        <input type="password" required name="pwds"/>
        <p>邮箱</p>
        <input type="text" required name="email"/>
        <br/>
        <input type="submit" required value="注册"/>
      </form>
    </div>
  </div>
</div>
</body>
</html>
