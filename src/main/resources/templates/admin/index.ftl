<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style>
        body
        {
            scrollbar-base-color:#C0D586;
            scrollbar-arrow-color:#FFFFFF;
            scrollbar-shadow-color:DEEFC6;
        }
    </style>
</head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="${request.contextPath}/admin/top" name="topFrame" scrolling="no">
    <frameset cols="180,*" name="btFrame" frameborder="NO" border="0" framespacing="0">
        <frame src="${request.contextPath}/admin/menu" noresize name="menu" scrolling="yes">
        <frame src="${request.contextPath}/admin/sysPro" noresize name="main" scrolling="auto">
    </frameset>
</frameset>
<noframes>
    <body>您的浏览器不支持框架！</body>
</noframes>
</html>
