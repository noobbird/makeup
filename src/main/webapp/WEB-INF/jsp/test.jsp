<%--
  Created by IntelliJ IDEA.
  User: LiuZhengPing
  Date: 2018/11/6
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
<%=request.getAttribute("userName")%>
    <%=session.getAttribute("userName")%>
    ${ userName}
</head>
<body>

</body>
</html>
