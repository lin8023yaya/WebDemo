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
        table {

        }

        .activity td {
            /*border: 1px solid grey;*/
            border: 1px solid transparent;
        }

        .activity table {
            /*border-bottom: 0;*/
        }

        .prize_set {
            height: 180px;

            /*border: 1px solid transparent;*/
        }

        #but0, #but, #qiyeSee0, #qiyeSee1, #guanliSee0, #guanliSee1 {
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
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3
        style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 105px;height: 100%">&nbsp;活动申请</h3>
</div>
<br/><br/>
<div class="content" style="margin: 0;height: 430px;width: 100%; text-align: center">


    活动种类：普通活动：<input type="radio" name="radio" value="1" onclick="change(this.value)"/>&nbsp;
    红包活动：<input type="radio" name="radio" value="2" onclick="change(this.value)"/>
    <div style="display: none" id="1">
        <br/>
        <p>活动的奖品编号: <input type="text" name="num" id="prizeId"/></p>
        <p>商品的批次序号：<input type="text" name="num1" id="batch"/></p>
        <p>活动负责联系人：<input type="text" name="name" id="name"/></p>
        <p>负责人联系电话：<input type="text" name="tel" id="tel"/></p>
        活动的起止时间：<input type="text" id="start" name='starttime' class="form-control laydate-icon"/>
        -<input type="text" id="end" name='endtime' class="form-control laydate-icon"/>
        <br/>
        <br/>
        <button onclick="apply()" id="but0">提交</button>
        <br/>
        <button onclick="qiyeSee(this.value)" id="qiyeSee0" value="0">查看配置-企业</button>
        <br/>
        <button onclick="guanliSee(this.value)" id="guanliSee0" value="0">查看配置-管理</button>
    </div>


    <div style="display: none" id="2">
        <br/>
        <p>红包设置的编号：<input type="text" name="num" id="redpacketinfoid"/></p>
        <p>商品的批次序号：<input type="text" name="num1" id="batch1"/></p>
        <p>红包负责联系人：<input type="text" name="name" id="name1"/></p>
        <p>负责人联系电话：<input type="text" name="tel" id="tel1"/></p>
        活动的起止时间：<input type="text" id="start1" name='starttime' class="form-control laydate-icon"/>
        -<input type="text" id="end1" name='endtime' class="form-control laydate-icon"/>
        <br/>
        <br/>
        <button onclick="apply()" id="but">提交</button>
        <br/>
        <button onclick="qiyeSee(this.value)" id="qiyeSee1" value="1">查看配置-企业</button>
        <br/>
        <button onclick="guanliSee(this.value)" id="guanliSee1" value="1">查看配置-管理</button>
    </div>


</div>
<script>
    $(function () {
        var start = {
            elem: '#start', //选择ID为START的input
            format: 'YYYY/MM/DD', //自动生成的时间格式
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16 23:59:59', //最大日期
            istime: true, //必须填入时间
            istoday: false,  //是否是当天
            start: laydate.now(0, "YYYY/MM/DD"),  //设置开始时间为当前时间
            choose: function (datas) {
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
            start: laydate.now(0, "YYYY/MM/DD"),
            choose: function (datas) {
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
            start: laydate.now(0, "YYYY/MM/DD"),  //设置开始时间为当前时间
            choose: function (datas) {
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
            start: laydate.now(0, "YYYY/MM/DD"),
            choose: function (datas) {
                start1.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start1);
        laydate(end1);
    })
</script>
<script>
    var vendorId = 101721851;
    var typeId = 6666443229868;

    // alert(typeId);
    function apply() {
        var radiovalue = $("input[type='radio']:checked").val();
        if (radiovalue == "1") {
            var prizeId = $("#prizeId").val();
            var Batch = $("#batch").val();
            var batch = Batch.substring(1, Batch.length + 1);
            var name = $("#name").val();
            var tel = $("#tel").val();
            var startTime = $("#start").val();
            var endTime = $("#end").val();
            alert(vendorId,typeId,prizeId,batch,name,tel,startTime,endTime);
            var regName =/^[\u4e00-\u9fa5]{2,4}$/;
            if(!regName.test(name)){
                alert('真实姓名填写有误');
                return false;
            }
            var mobileRegex = /^(((1[3456789][0-9]{1})|(15[0-9]{1}))+\d{8})$/;

            if(mobileRegex.test(tel)){
                alert('手机号正确');
            }else{
                alert('手机号输入不正确');
            }
            $.ajax({
                url: "/market/marketCode",
                dataType: 'json',
                // processData: false,
                type: 'post',
                data: {
                    typeId: typeId,
                    batchId: batch,
                    vendorId: vendorId,
                    startTime: starttime,
                    endTime: endtime,
                    name: name,
                    tel: tel,
                    prizeId: prizeId
                },
                success: function (result) {
                    if (result.status == 1) {
                        alert(result.message);
                    } else {
                        alert(result.message);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            })

        }
        if (radiovalue == "2") {
            var Batch = $("#batch1").val();
            var redpacketinfoid = $("#redpacketinfoid").val()
            var batch = Batch.substring(1, Batch.length + 1);
            var name = $("#name1").val();
            var tel = $("#tel1").val();
            var starttime = $("#start1").val();
            var endtime = $("#end1").val();
            var regName =/^[\u4e00-\u9fa5]{2,4}$/;
            if(!regName.test(name)){
                alert('真实姓名填写有误');
                return false;
            }
            var mobileRegex = /^(((1[3456789][0-9]{1})|(15[0-9]{1}))+\d{8})$/;

            if(mobileRegex.test(tel)){
                alert('手机号正确');
            }else{
                alert('手机号输入不正确');
            }
            $.ajax({
                url: "/redpacket/batchbound",
                data: {
                    productid: typeId,
                    batchid: batch,
                    vendorId: vendorId,
                    starttime: starttime,
                    endtime: endtime,
                    name: name,
                    tel: tel,
                    redpacketinfoid: redpacketinfoid
                },
                dataType: 'json',
                // processData: false,
                type: 'post',
                success: function (result) {
                    if (result.status == 1) {
                        alert(result.message);
                    } else {
                        alert(result.message);
                    }
                },
                error: function () {
                    alert("请求失败！");
                }
            })

        }

    }

    function qiyeSee(val) {
        if (val == 0) {
            alert(0);
            $.ajax({
                type:"get",
                url:"/market/vrecord?vendorId="+vendorId,
                dataType:"json",
                success:function (result) {
                 alert(result.message);
                 window.location.href="vrecord.jsp";
                },
                error:function () {
                    alert("提交失败!");
                }
            })
        }
        if (val == 1) {
            alert(1);
        }
    }

    function guanliSee(val) {
        if (val == 0) {
            alert(0);
        }
        if (val == 1) {
            alert(1);
        }
    }

    function change(val) {
        $("#1").hide();
        $("#2").hide();
        $("#" + val).show();


    }
</script>

</body>
</html>