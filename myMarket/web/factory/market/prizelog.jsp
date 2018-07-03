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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;中奖记录</h3></div>
<div id="main">
    <table  width="100%" border="1px" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
        <thead style="background-color: #EEEEED;border: 0px;font-size: 14px;font-weight: 100"><tr><th>姓名</th><th>电话</th><th>地址</th><th>活动序号</th><th>奖品</th><th>操作</th></tr></thead>
        <tbody style="font-size: 14px;font-weight: 200;border: 1px" >
        <c:forEach items="${prizelog}" var="prize" varStatus="status"  >
            <tr style="margin-top: 20px" class="${prize.id}">
                <th style="border-right: none">${prize.name}</th>
                <th >${prize.tel}</th>
                <th>${prize.address}</th>
                <th>${prize.promotionid}</th>
                <th>${prize.prize}</th>
                <th><p style="color: #0000cc;cursor: pointer" onclick="send(this.id)" id="${prize.id}">确认已配送</p></th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    function send (id) {
        // alert(id);
        $.ajax({
            type:"GET",
            url:"http://localhost:8010/prizesend?id="+id,
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
