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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动记录</h3></div>
<div id="main">
    <table  width="100%" border="1" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
        <thead style="background-color: #EEEEED;border: none;font-size: 14px"><tr><th>奖品配置序号</th><th>申请人</th><th>电话</th><th>开始时间</th><th>结束时间</th><th>活动状态 </th></tr></thead>
        <tbody style="font-size: 14px;font-weight: normal;border: none">
        <c:forEach items="${record}" var="cord" varStatus="status"  >
            <tr style="margin-top: 20px">
                <th>${cord.prizeid}</th>
                <th>${cord.name}</th>
                <th>${cord.tel}</th>
                <th>${cord.starttime}</th>
                <th>${cord.endtime}</th>

                <th>${cord.status==1?"已开启":"未开启"}</th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script type="text/javascript">

</script>

</body>
</html>
