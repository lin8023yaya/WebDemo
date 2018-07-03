<%--
  Created by IntelliJ IDEA.
  User: duyaming
  Date: 2017/7/28
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <script src="/factory/market/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 135px;height: 100%">&nbsp;奖品配置记录</h3></div>
<div id="main"></div>
<table  width="100%" border="1" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
    <thead style="background-color: #EEEEED;border: none;font-size: 14px"><tr><th>红包配置编号</th><th>红包类型</th><th>红包金额</th><th>红包范围</th><th>红包总金额</th><th>红包个数</th><%--<th>操作</th>--%></tr></thead>
    <tbody style="font-weight: normal;border: none;font-size: 14px">
    <c:forEach items="${showredinfo}" var="cord" varStatus="status"  >
        <tr style="margin-top: 20px" class="${cord.id}">
            <th>${cord.id}</th>
            <th>${cord.redtype==1?"固定金额":"随机金额"}</th>
            <th>${cord.redmoney}</th>
            <th>${cord.moneyfloor}-${cord.moneyupper}</th>
            <th>${cord.moneytotal}</th>
            <th>${cord.rednum}</th>
           <%-- <th><p style="color: #0000cc;cursor: pointer" onclick="shanchu(this.id)" id="${cord.id}">删除配置</p></th>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script type="text/javascript">
    function shanchu(id) {
        $.ajax({
            type:"GET",
            url:"http://localhost:8010/deleteseted?id="+id,
            success:function(){
                alert("成功");
            },
            error:function(){
                //   alert("")
            }
        });
        document.getElementsByClassName(id)[0].style.display="none";
    }
</script>

</body>
</html>
