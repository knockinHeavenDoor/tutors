<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self"/>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />
    <script language="JavaScript" src="${request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script language="javascript">
        function closeOpen()
        {
            window.returnValue=false;
            window.close();
        }
        function check1() {
            var name = $("#name").val();
            var pwd = $("#pwd").val();
            if(name == "" || name == null)
            {
                alert("请输入用户名");
                return false;
            }
            if(pwd =="" || pwd == null)
            {
                alert("请输入密码");
                return false;
            }
            var data = $("#from1").serialize();
            $.ajax({
                url:"${request.contextPath}/reg/register",
                type:"post",
                data:data,
                processData:false,
                contentType:false,
                success:function(data){
                    layer.alert(data.msg,{
                        title:"提示",
                    })
                    $("#ii").click();
                },
            });
        }
    </script>
</head>
<body>
<form action="${request.contextPath}/reg/register" id="form1" name="form1" method="post">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
            <th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
                学 员 注 册
            </th>
        </tr>
        <tr>
            <td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                用户名：
            </td>
            <td width="80%" bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" id="name" name="name"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                密 码：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="password" id="pwd" name="pwd"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                姓名：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" name="realName"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                性别：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="radio" name="sex" value="男" checked="checked"/>男
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="sex" value="女"/>女
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                年龄：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" name="age"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                联系方式：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" name="phone"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                住址：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" name="address"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                辅导科目：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="text" name="kecheng"/>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                学员情况：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
               <!-- <FCK:editor instanceName="xueyuanqingkuang"  basePath="/fckeditor" width="300" height="100" value="请输入内容" toolbarSet="Basic">
                </FCK:editor> -->
                <textarea rows="" cols="" style="width: 300px;height: 100px;" name="qingkuang"></textarea>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
                教员要求：
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <!--<FCK:editor instanceName="jiaoyuanyaoqiu"  basePath="/fckeditor" width="300" height="100" value="请输入内容" toolbarSet="Basic">
                </FCK:editor> -->
                <textarea rows="" cols="" style="width: 300px;height: 100px;" name="required"></textarea>
            </td>
        </tr>
        <tr>
            <td height="30" align="right" bgcolor="#F9F9F9">
                &nbsp;
            </td>
            <td bgcolor="#FFFFFF">
                &nbsp;
                <input type="button" value="确定" onclick="check1();"/>
                <input type="button" value="取消" onclick="closeOpen()"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
