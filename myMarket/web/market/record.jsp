<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2018/7/11
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>管理查看所有的活动</title>
    <script src="/factory/market/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/market/record.js"></script>
</head>
<body>
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动记录</h3></div>
<div id="main">
    <table  width="100%" border="1" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
        <thead style="background-color: #EEEEED;border: none;font-size: 14px">
            <tr>
                <th>奖品配置序号</th>
                <th>申请人</th>
                <th>联系电话</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>活动状态</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${record}" var="cord" varStatus="status">
            <tr style="margin-top: 20px" class="${cord.id}">
                <th>${cord.prizeId}</th>
                <th>${cord.name}</th>
                <th>${cord.tel}</th>
                <th>${cord.startTime}</th>
                <th>${cord.endTime}</th>
                <th><button style="color: #0000cc;cursor: pointer" id="${cord.id}" onclick="updateStatus(this.id)">${cord.status==1?"已开启":"未开启"}</button></th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    function updateStatus(id) {
        alert(id);
        $.ajax({
            type:"get",
            url:"/market/close?id="+id,
            dataType:"json",
            success:function (result) {
                alert(result.message);
                allPrize(0);
            },
            error:function () {
                alert("请求失败!");
            }
        })
    }
</script>
</body>
</html>
