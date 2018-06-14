<%--
  Created by IntelliJ IDEA.
  User: duyaming
  Date: 2017/12/2
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>领红包</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<%
    Map m = (Map)request.getAttribute("map");
    String text;
    String code=(String) m.get("code");
    if(m.get("result_code").equals("SUCCESS")){
        // out.print("亲爱的用户"+",您红包领取成功，感谢您的关注！");
        text="您红包领取成功，感谢您的关注！";
    }else{
        //out.print("亲爱的"+",您红包领取失败"+"<br/>原因可能是："+m.get("return_msg"));
        text="领取失败，不要贪心，明天再来!";
    }
%>
<h1 id="text" style="text-align: center; margin-top: 48%"></h1>
<div style="text-align: center;"><button  onclick="a()" style=" background-color: red;border-radius: 20px;width: 310px;height: 90px;outline: none;font-size: 50px;color: white;text-align: center;margin-top: 10%">返&nbsp;&nbsp;回</button>
</div>
<script type="text/javascript">
    var code="<%=code%>";
    $(function () {
        var text="<%=text%>";
        //alert(text);
        $("#text").html(text);
    })
    function a() {
        window.open("http://goods.zkxaiot.cn/cqc/index444.html?c="+code);
    }
</script>
</body>
</html>