<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />

    <link href="${request.contextPath}/css/layout.css" type="text/css" rel="stylesheet" />
    <link href="${request.contextPath}/css/layer.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" src="${request.contextPath}/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" src="${request.contextPath}/js/layer.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
</head>

<body>
<#include "incTop.ftl">
<div class="page_row">
    <div class="page_main_msg left">
        <div class="left_row">
            <div class="list pic_news">
                <div class="list_bar">
                    <span style="float:left">我的预约</span>
                </div>
                <div id="tw" class="list_content" style="height: 400px;">
                    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                        <tr bgcolor="#E7E7E7">
                            <td height="14" colspan="5" background="${request.contextPath}/img/tbg.gif">&nbsp;我的预约&nbsp;</td>
                        </tr>
                        <tr align="center" bgcolor="#FAFAF1" height="22">
                            <td width="20%">老师</td>
                            <td width="20%">所留联系方式</td>
                            <td width="20%">预约说明</td>
                            <td width="20%">时间</td>
                            <td width="20%">操作</td>
                        </tr>
                    <#list app as a>
                        <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                            <td bgcolor="#FFFFFF" align="center">
                            ${(a.teacher.rname)!}
                            </td>
                            <td bgcolor="#FFFFFF" align="center">
                            ${(a.phone)!}
                            </td>
                            <td bgcolor="#FFFFFF" align="center">
                            ${(a.remark)!}
                            </td>
                            <td bgcolor="#FFFFFF" align="center">
                            ${(a.time)!}
                            </td>
                            <td bgcolor="#FFFFFF" align="center">
                                <#if a.status == "3">
                                    <a href="#" onclick="agree(${a.id!})" class="pn-loperator"><span style="color:forestgreen">同意</span></a>
                                    <a href="#" onclick="refuse(${a.id!})" class="pn-loperator"><span style="color:forestgreen">拒绝</span></a>
                                </#if>
                                <#if a.status == "0">
                                    <span>已同意</span>
                                </#if>
                                <#if a.status == "1">
                                    <span>已拒绝</span>
                                </#if>
                            </td>
                        </tr>
                    </#list>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function agree(id){
            $.ajax({
                url:"${request.contextPath}/app/agree",
                type:"post",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    console.log(data.msg)
                    layer.alert(data.msg,{
                        title:"提示",
                    })
                },
            });
        }

        function refuse(id){
            $.ajax({
                url:"${request.contextPath}/app/refuse",
                type:"post",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    console.log(data.msg)
                    layer.alert(data.msg,{
                        title:"提示",
                    })
                },
            });
        }
    </script>

    <!-- 右边的用户登录。留言。投票 -->
    <div class="page_other_msg right">
        <div class="left_row
">
            <div class="list">
                <div class="list_bar">用户登录</div>
                <div class="list_content">
                    <div id="div">
                    <#include "login.ftl">
                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">网站公告</div>
                <div class="list_content">
                    <div id="div">

                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">天气</div>
                <div class="list_content">
                    <iframe width="300" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 右边的用户登录。留言。投票 -->
</div>

<div class="foot">
<#include "incFoot.ftl">
</div>
</body>
</html>
