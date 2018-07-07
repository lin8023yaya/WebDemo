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
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <script src="/factory/market/js/jquery-1.11.3.min.js"></script>
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
        <th>奖品一</th>
        <th>概率</th>
        <th>奖品二</th>
        <th>概率</th>
        <th>奖品三</th>
        <th>概率</th>
        <th>奖品四</th>
        <th>概率</th>
        <th>奖品五</th>
        <th>概率</th>
        <th>奖品六</th>
        <th>概率</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody style="font-weight: normal;border: none;font-size: 14px">
    <
    -items="${showseted}" var="cord" varStatus="status">
        <tr style="margin-top: 20px" class="${cord.id}">
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
            <th><p style="color: #0000cc;cursor: pointer" onclick="shanchu(this.id)" id="${cord.id}">删除配置</p></th>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script type="text/javascript">
    function shanchu(id) {
        $.ajax({
            type: "GET",
            url: "http://localhost:8010/deleteseted?id=" + id,
            success: function () {
                alert("成功");
            },
            error: function () {
                //   alert("")
            }
        });
        document.getElementsByClassName(id)[0].style.display = "none";
    }
</script>

</body>
</html>
