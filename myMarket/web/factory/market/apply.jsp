<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="/factory/market/js/jquery-1.11.3.min.js"></script>
    <script src="/factory/market/laydate/laydate.js"></script>
    <style>
        table{

        }

        .activity td{
            /*border: 1px solid grey;*/
            border:1px solid transparent ;
        }
        .activity table{
            /*border-bottom: 0;*/
        }
        .prize_set{
            height: 180px;

            /*border: 1px solid transparent;*/
        }
        #but0,#but{
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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动申请</h3></div>
<br /><br />
<div class="content" style="margin: 0;height: 430px;width: 100%; text-align: center">



    活动种类：普通活动：<input type="radio" name="radio" value="1" onclick="change(this.value)"/>
    &nbsp;红包活动：<input type="radio" name="radio" value="2" onclick="change(this.value)"/>
    <div style="display: none" id="1">
        <br />
        <p>活动的奖品编号: <input type="text" name="num" id="prizeid"/></p>
        <p>商品的批次序号：<input type="text" name="num1" id="batch"/></p>
        <p>活动负责联系人：<input type="text" name="name" id="name"/></p>
        <p>负责人联系电话：<input type="text" name="tel" id="tel"/></p>
        活动的起止时间：<input type="text" id="start" name='starttime' class="form-control laydate-icon" />
        -<input type="text" id="end" name='endtime' class="form-control laydate-icon"/>
        <br />
        <br />
        <button onclick="apply()" id="but0">提交</button>
        <button onclick="chakan()" id="chakan0">查看配置活动</button>
    </div>


    <div style="display: none" id="2">
        <br />
        <p>红包设置的编号：<input type="text" name="num" id="redpacketinfoid"/></p>
        <p>商品的批次序号：<input type="text" name="num1" id="batch1"/></p>
        <p>红包负责联系人：<input type="text" name="name" id="name1"/></p>
        <p>负责人联系电话：<input type="text" name="tel" id="tel1"/></p>
        活动的起止时间：<input type="text" id="start1" name='starttime' class="form-control laydate-icon" />
        -<input type="text" id="end1" name='endtime' class="form-control laydate-icon"/>
        <br />
        <br />
        <button onclick="apply()" id="but">提交</button>
        <button onclick="chakan()" id="chakan1">查看配置活动</button>
    </div>


</div>
<script>
    $(function(){
        var start = {
            elem: '#start', //选择ID为START的input
            format: 'YYYY/MM/DD', //自动生成的时间格式
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16 23:59:59', //最大日期
            istime: true, //必须填入时间
            istoday: false,  //是否是当天
            start: laydate.now(0,"YYYY/MM/DD"),  //设置开始时间为当前时间
            choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };
        var end = {
            elem: '#end',
            format: 'YYYY/MM/DD',
            min: laydate.now(),
            max: '2099-06-16 23:59:59',
            istime: true,
            istoday: false,
            start: laydate.now(0,"YYYY/MM/DD"),
            choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start);
        laydate(end);

        var start1 = {
            elem: '#start1', //选择ID为START的input
            format: 'YYYY/MM/DD', //自动生成的时间格式
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16 23:59:59', //最大日期
            istime: true, //必须填入时间
            istoday: false,  //是否是当天
            start: laydate.now(0,"YYYY/MM/DD"),  //设置开始时间为当前时间
            choose: function(datas){
                end1.min = datas; //开始日选好后，重置结束日的最小日期
                end1.start = datas //将结束日的初始值设定为开始日
            }
        };
        var end1 = {
            elem: '#end1',
            format: 'YYYY/MM/DD',
            min: laydate.now(),
            max: '2099-06-16 23:59:59',
            istime: true,
            istoday: false,
            start: laydate.now(0,"YYYY/MM/DD"),
            choose: function(datas){
                start1.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start1);
        laydate(end1);
    })
</script>
<script>
    var vendorID=<s:property value="vendorID"/>;
    var typeId=<s:property value="typeId"/>;
    // alert(typeId);
    function apply() {
        var radiovalue=$("input[type='radio']:checked").val();
        if(radiovalue=="1"){
            var prizeid=$("#prizeid").val();
            var Batch=$("#batch").val();
            var batch=Batch.substring(1,Batch.length+1);
            var name=$("#name").val();
            var tel=$("#tel").val();
            var starttime=$("#start").val();
            var endtime=$("#end").val();
            $.ajax({
                url: "http://localhost:8010/marketcode",
                dataType:'jsonp',
               // processData: false,
                type:'get',
                jsonpCallback:"callback",
                data:{
                    typeid:typeId,
                    batchid:batch,
                    vendorid:vendorID,
                    starttime:starttime,
                    endtime:endtime,
                    name:name,
                    tel:tel,
                    prizeid:prizeid},
                success:function(data){
                    if(data.result==1){
                        alert("设置成功");
                        window.location.href="/market/apply.jsp";
                    }
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                   // alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                }
            })

        }
        if(radiovalue=="2"){
            var Batch=$("#batch1").val();
            var redpacketinfoid=$("#redpacketinfoid").val()
            var batch=Batch.substring(1,Batch.length+1);
            var name=$("#name1").val();
            var tel=$("#tel1").val();
            var starttime=$("#start1").val();
            var endtime=$("#end1").val();
            $.ajax({
                url: "http://localhost:8010/marketcode",
                data:{
                    productid:typeId,
                    batchid:batch,
                    vendorid:vendorID,
                    starttime:starttime,
                    endtime:endtime,
                    name:name,
                    tel:tel,
                    redpacketinfoid:redpacketinfoid
                },
                dataType:'jsonp',
                // processData: false,
                type:'get',
                jsonpCallback:"callback",
                success:function(data){
                    if(data.result==1){
                        alert("设置成功");
                        window.location.href="/market/set.jsp";
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

    }


    function change(val){
        $("#1").hide();
        $("#2").hide();
        $("#"+val).show();


    }
</script>

</body>
</html>