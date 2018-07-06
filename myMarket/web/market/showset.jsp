<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2018/7/5
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>查看活动设置</title>
    <script src="/js/jquery-1.11.3.js"></script>
</head>
<body>
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3
        style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 135px;height: 100%">&nbsp;奖品配置记录</h3>
</div>
<div id="main"></div>
<table width="100%" border="1" cellspacing="0" cellpadding="0"
       style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none">
    <thead style="background-color: #EEEEED;border: none;font-size: 14px">
    <tr>
        <th>配置编号</th>
        <th>奖品1</th>
        <th>概率</th>
        <th>奖品2</th>
        <th>概率</th>
        <th>奖品3</th>
        <th>概率</th>
        <th>奖品4</th>
        <th>概率</th>
        <th>奖品5</th>
        <th>概率</th>
        <th>奖品6</th>
        <th>概率</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody style="font-weight: normal;border: none;font-size: 14px">
    <c:forEach items="${showset}" var="cord" varStatus="status">
        <tr style="margin-top: 20px">
            <th>${cord.id}</th>
            <th>${cord.prize1}</th>
            <th>${cord.odds1}</th>
            <th>${cord.prize2}</th>
            <th>${cord.odds2}</th>
            <th>${cord.prize3}</th>
            <th>${cord.odds3}</th>
            <th>${cord.prize4}</th>
            <th>${cord.odds4}</th>
            <th>${cord.prize5}</th>
            <th>${cord.odds5}</th>
            <th>${cord.prize6}</th>
            <th>${cord.odds6}</th>
            <th><p style="color: #0000cc;cursor: pointer" onclick="shanchu(this.id)">删除配置</p></th>
        </tr>
    </c:forEach>
    </tbody>
    <script>
        function shanchu() {
            alert("删除!");
        }
    </script>
</table>
</body>
</html>
