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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 10px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;费用标准</h3></div>
<div id="main">
  <table  width="100%" border="1" cellspacing="0" cellpadding="0" style="margin-left: 0px;margin-top: 0px;font-family: 宋体;border: none" >
    <thead style="background-color: #EEEEED;border: none;font-size: 14px"><tr><th>预计使用时间</th><th>类型</th><th>第一档次费用</th><th>第二档次费用</th><th>第三档次费用</th><th>第四档次费用 </th><th>第五档次费用 </th><th>状态 </th></tr></thead>
    <tbody style="font-size: 14px;font-weight: normal;border: none">
    <c:forEach items="${servicelist}" var="approve" varStatus="status"  >
      <tr style="margin-top: 0px" class="${approve.id}">
        <th>${approve.startpredict}</th>
        <th>${approve.type.equals("1")?"服务费":"标签费"}</th>
        <th>${approve.cost1}</th>
        <th>${approve.cost2}</th>
        <th>${approve.cost3}</th>
        <th>${approve.cost4}</th>
        <th>${approve.cost5}</th>
        <th onclick="send(this.id,this.className)" id="${approve.id}" class="${approve.type}" style="color: #0000cc;cursor: pointer">${approve.open.equals("1")?"使用中":"未使用"}</th>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<script type="text/javascript">
    function send (id,cl) {
        // alert(id);
        // alert(cl);
        $.ajax({
            type:"GET",
            url:"http://localhost:8010/openservice?id="+id+"&type="+cl,
            dataType:'jsonp',
            processData: false,
            jsonpCallback:"callback",
            success:function(result){
                //   alert(result.result);

                document.getElementById(id).innerHTML="使用中";
            },
            error:function(){
                //  alert("网络异常")
            }
        });
        // document.getElementsByClassName(id)[0].style.display="none";

    }
</script>

</body>
</html>
