<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="/factory/market/js/jquery-1.11.3.min.js"></script>
    <%--<script src="/factory/market/laydate/laydate.js"></script>--%>
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
    红包种类：固定红包：<input type="radio" name="radio" value="1" onclick="change(this.value)"/>&nbsp;随机红包：<input type="radio" name="radio" value="2" onclick="change(this.value)"/>
    <br /><br /><br /><br />
    <input type="text" id="vendorid" style="display: none">
    <div id="1" style="display: none;">
        红包大小&nbsp;:&nbsp;<input type="text"  class="a" id="redmoney"/>
        <br /><br />
        红包个数&nbsp;:&nbsp;<input type="text"  class="a" id="rednum"/>
        <input type="text" style="display:none">
        <br /><br />
        <button onclick="redset()" id="but">提交</button>
    </div>
    <div id="2" style="display: none;" >
        红包范围&nbsp;:&nbsp;<input type="text"id="moneyfloor" />-<input type="text" id="moneyupper" />
        <br />
        <br />
        红包总金额&nbsp;:&nbsp;<input type="text"  id="moneytotal"/>

        <br />
        <br />
        <button onclick="redset()" id="but0">提交</button>
    </div>

    <input type="button" value="查看配置" id="chakan" onclick="chakan()" />
</div>
<script>

    function change(val){
        $("#1").hide();
        $("#2").hide();
        $("#"+val).show()

    }

    $(function () {
        var vendorID=<s:property value="vendorID"/>;
        // var promotionid=<s:property value="promotionid"/>;
        // $("#promotionid").val(promotionid);
        $("#vendorid").val(vendorID);

    })
    function  redset() {
        var name=null;
        var tel=null;
        var rednum=null;
        var redmoney=null;
        var moneyfloor=null;
        var moneyupper=null;
        var moneytotal=null;
        var redtype=null;
        var vendorid= $("#vendorid").val();

        var radiovalue=$("input[type='radio']:checked").val();
        //1固定红包
        if (radiovalue=="1"){
            // alert(1);
            redtype=1;
            redmoney=$("#redmoney").val();
            rednum=$("#rednum").val();
            moneytotal=rednum*redmoney;
            // alert(moneytotal);
            $.ajax({
                type: "get",
                url: "http://localhost:8010/redset",
                data:{ vendorid:vendorid,redtype:redtype,redmoney:redmoney,moneytotal:moneytotal,rednum:rednum},
                dataType:'jsonp',
                // processData: false,
                jsonpCallback:"callback",
                success:function(data){
                    if(data.result==1){
                        alert("设置成功");
                    }
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    // alert(XMLHttpRequest.readyState);
                    //alert(textStatus);
                    alert("系统繁忙，请稍后再试");
                }
            })
            // alert("保存成功");
        }
        if(radiovalue=="2"){
            // alert(2);
            redtype=2;
            moneyfloor=$("#moneyfloor").val();
            moneyupper=$("#moneyupper").val();
            moneytotal=$("#moneytotal").val();
            $.ajax({
                type: "get",
                url: "http://localhost:8010/redset",
                data:{ vendorid:vendorid,redtype:redtype,moneyfloor:moneyfloor,moneyupper:moneyupper,moneytotal:moneytotal},
                dataType:'jsonp',
                // processData: false,
                jsonpCallback:"callback",
                success:function(data){
                    if(data.result==1){
                        alert("设置成功");
                    }
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    // alert(XMLHttpRequest.readyState);
                    //alert(textStatus);
                    alert("系统繁忙，请稍后再试");
                }
            })
        }
        //alert("保存成功");
    }

    function  chakan() {
        // var promotionid= $("#promotionid").val();
        var vendorid= $("#vendorid").val();
        // alert(vendorid);
        window.location.href="/government/showredinfo.action?vendorID="+vendorid;
    }

</script>
</body>
</html>