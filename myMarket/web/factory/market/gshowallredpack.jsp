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
    <thead style="background-color: #EEEEED;border: none;font-size: 14px"><tr><th>红包奖品配置序号</th><th>申请人</th><th>电话</th><th>开始时间</th><th>结束时间</th><th>活动状态 </th></tr></thead>
    <tbody style="font-size: 14px;font-weight: normal;border: none">
    <c:forEach items="${applyredpacket}" var="approve" varStatus="status"  >
      <tr style="margin-top: 0px" class="${approve.bid}">
        <th>${approve.redpacketinfoid}</th>
        <th>${approve.name}</th>
        <th>${approve.tel}</th>
        <th>${approve.starttime}</th>
        <th>${approve.endtime}</th>

        <th>${approve.status==1?"已开启":"未开启"}</th>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<script type="text/javascript">
    function send (id) {
        //  alert(id);
        $.ajax({
            type:"GET",
            url:"http://localhost:8010/passredbath?id="+id,
            dataType:'text',
            success:function(result){
                alert(result);
                document.getElementsByClassName(id)[0].style.display="none";
            },
            error:function(){
                //  alert("网络异常")
            }
        });
        document.getElementsByClassName(id)[0].style.display="none";

    }
</script>

</body>
</html>
