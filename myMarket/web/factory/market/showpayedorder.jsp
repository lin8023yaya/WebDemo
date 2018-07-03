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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;&nbsp;订单记录</h3></div>
<div id="main">
    <table  width="100%" border="1" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
        <thead style="background-color: #EEEEED;border: none;font-size: 14px"><tr><th>订单号</th><th>订单时间</th><th>订单类型</th><th>金额</th><th>收货人</th><th>电话</th><th>地址</th><th>是否发货</th><th colspan="2">操作 </th><th > </th></tr></thead>
        <tbody style="font-size: 14px;font-weight: normal;border: none">
        <c:forEach items="${Orderlist}" var="order" varStatus="status"  >
            <tr style="margin-top: 0px" class="${order.id}">
                <th>${order.number}</th>
                <th>${order.creattime}</th>
                <th>${order.type=="1"?"服务费":"标签费"}</th>
                <th>${order.totalmoney}</th>
                <th>${order.name}</th>
                <th>${order.tel}</th>
                <th>${order.address}</th>
                <th>${order.ismail=="1"?"已发货":"未发货"}</th>
                <th><p style="color: #0000cc;cursor: pointer" onclick="sends(this.className)" class="${order.id}">申请合同</p></th>
                <th><p style="color: #0000cc;cursor: pointer" onclick="isgetcargo(this.className)" class="${order.id}">${order.isgetcargo=="1"?"已收货":"确认收货"}</p></th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    function isgetcargo (id) {
        //alert(id);
        $.ajax({
            type:"GET",
            url:"http://localhost:8010/isgetcargo?id="+id,
            dataType:'jsonp',
            processData: false,
            jsonpCallback:"callback",
            success:function(result){
                alert(result.info);
                //document.getElementsByClassName(id)[0].style.display="none";
                document.getElementsByClassName(id)[2].innerHTML="已收货";
            },
            error:function(){
                //  alert("网络异常")
            }
        });
        // document.getElementsByClassName(id)[0].style.display="none";

    }
    function sends(id) {
        alert("开发中。。。。。");
        /*$.ajax({
         type:"GET",
         url:"http://localhost:8010/isgetcargo?id="+id,
         dataType:'jsonp',
         processData: false,
         jsonpCallback:"callback",
         success:function(result){
         alert(result.info);
         //document.getElementsByClassName(id)[0].style.display="none";
         document.getElementsByClassName(id)[2].innerHTML="已收货";
         },
         error:function(){
         //  alert("网络异常")
         }
         });*/
        // document.getElementsByClassName(id)[0].style.display="none";

    }
</script>

</body>
</html>
