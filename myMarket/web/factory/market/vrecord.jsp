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
        style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动记录</h3>
</div>
<div id="main">
    <table width="100%" border="1" cellspacing="0" cellpadding="0"
           style="margin-left: 0px;font-family: 宋体;border: none">
        <thead style="background-color: #EEEEED;font-size: 14px;font-weight:100;border: none">
        <tr>
            <th>申请人</th>
            <th>电话</th>
            <th>开始时间</th>
            <th>结束时间</th>
            <th>商品批次序号</th>
            <th>奖品配置</th>
            <th>活动状态
                <div style="font-size: 10px">（1表示进行中，2表示已结束）</div>
            </th>
        </tr>
        </thead>
        <tbody style="font-size: 14px;font-weight: normal;border: none">
        <c:forEach items="${vrecord}" var="record" varStatus="status">
            <tr style="margin-top: 0px">

                <th>${record.name}</th>
                <th>${record.tel}</th>
                <th>${record.starttime}</th>
                <th>${record.endtime}</th>
                <th>${record.batchid}</th>
                <th>${record.prizeid}</th>
                <th>${record.status}</th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script type="text/javascript">

</script>

</body>
</html>
