<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2018/7/7
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>红包设置</title>
    <script src="/js/jquery-1.11.3.js"></script>
    <style>
        #but0,#but,#chakan{
            border: 1px solid #015595;
            border-radius: 3px;
            background-color: #015595;
            width: 160px;
            height: 28px;

            margin-top: 10px;
        }
    </style>
</head>
<body>
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动设置</h3></div>
<br /><br /><br /><br />
<div style="text-align: center;">
红包种类：固定红包：<input type="radio" name="radio" value="1" onclick="change(this.value)"/>&nbsp;
         随机红包：<input type="radio" name="radio" value="2" onclick="change(this.value)">
    <br/><br/><br/><br/>
    <input type="text" id="vendorId" style="display: none" value="101721861">
    <div id="1" style="display: none;">
        红包大小&nbsp;:&nbsp;<input type="text" class="a" id="redMoney"><br/><br/>
        红包数量&nbsp;:&nbsp;<input type="text" class="a" id="redNum">
        <input type="text" style="display:none">
        <br /><br />
        <button onclick="redSet()" id="but">提交</button>
    </div>
    <div id="2" style="display: none;">
        红包范围&nbsp;:&nbsp;<input type="text" id="moneyFloor"/>-<input type="text" id="moneyUpper"/>
        <br/><br/><br/><br/>
        红包总金额&nbsp;&nbsp;<input type="text" id="moneyTotal">
        <br/><br/><br/><br/>
        <button onclick="redSet()" id="but0">提交</button>
    </div>
    <input type="button" value="查看配置" id="chakan" onclick="chakan()"/>
</div>
<script>
    function change(val) {
        $("#1").hide();
        $("#2").hide();
        $("#"+val).show();
    }
    function redSet() {
        var name = null;
        var tel = null;
        var redNum = null;
        var redMoney = null;
        var moneyFloor = null;
        var moneyUpper = null;
        var moneyeTotal=null;
        var redType = null;
        var vendorId = $("#vendorId").val();
        var radioValue = $("input[type='radio']:checked").val();
        //value=1 固定红包
        if(radioValue == "1"){
            alert(1);
            redType = 1;
            redMoney = $("#redMoney").val();
            redNum = $("#redNum").val();
            moneyeTotal = redMoney * redNum;
            alert(moneyeTotal);
        $.ajax({
            type:"post",
            url:"/redpacket/redSet",
            data:{
                vendorId:vendorId,
                redType:redType,
                redNum:redNum,
                redMoney:redMoney,
                moneyTotal:moneyeTotal
            },
            dataType:"json",
            success:function (result) {
                alert(result.message);
            },
            error:function (result) {
                alert(result.message);
            }
        })
        }
        if(radioValue == "2"){
            redType = 2;
            moneyFloor = $("#moneyFloor").val();
            moneyUpper = $("#moneyUpper").val();
            moneyeTotal = $("#moneyTotal").val();
            $.ajax({
                type:"post",
                url:"/market/redSet",
                data:{
                    vendorId:vendorId,
                    redType:redType,
                    moneyFloor:moneyFloor,
                    moneyUpper:moneyUpper,
                    moneyTotal:moneyeTotal,
                },
                success:function (result) {
                    alert(result.message);
                },
                error:function (result) {
                    alert(result.message)
                }
            })
        }
    }
</script>
</body>
</html>
