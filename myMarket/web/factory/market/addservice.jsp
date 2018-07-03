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
        .ty{
            margin-top: 2%;
        }
        .but{ border: 1px solid #015595;
            border-radius: 3px;
            background-color: #015595;
            width: 160px;
            height: 28px;
            margin-top: 2%;}

    </style>
</head>
<body>
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 135px;height: 100%">&nbsp;新增费用标准</h3></div>
<br /><br />
<div class="content" style="margin: 0;height: 430px;width: 100%; text-align: center">



    费用种类：服务费用：<input type="radio" name="radio" value="1" onclick="change(this.value)"/>&nbsp;&nbsp;&nbsp;&nbsp;标签费用：<input type="radio" name="radio" value="2" onclick="change(this.value)"/>
    <div style="display: none" id="1">
        <br />
        <form style="text-align: center;margin-top: 1%;" >
            <div>第一、二档分割线:	<input type="text" class="ty" id="level1"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一档服务费：<input type="text" class="ty" id="cost1"/>元<br /></div>
            <div>第二、三档分割线:	<input type="text" class="ty" id="level2"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二档服务费：<input type="text" class="ty" id="cost2"/>元<br /></div>
            <div>第三、四档分割线:	<input type="text" class="ty" id="level3"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三档服务费：<input type="text" class="ty" id="cost3"/>元<br /></div>
            <div>第四、五档分割线:	<input type="text" class="ty" id="level4"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第四档服务费：<input type="text" class="ty" id="cost4"/>元<br /></div>
            <div>预计开始使用时间:	<input type="text" class="form-control laydate-icon" id="start" class="ty" id="startpredict"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第五档服务费：<input type="text" class="ty" id="cost5"/>元<br /></div>
            <button onclick="apply()" id="but0" style="margin-top: 5%">提交</button>
        </form>
    </div>

    <div style="display: none" id="2">
        <br />
        <form style="text-align: center;margin-top: 1%;" >
            <div>第一、二档分割线:	<input type="text" class="ty" id="2level1"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一档服务费：<input type="text" class="ty" id="2cost1"/>元<br /></div>
            <div>第二、三档分割线:	<input type="text" class="ty" id="2level2"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二档服务费：<input type="text" class="ty" id="2cost2"/>元<br /></div>
            <div>第三、四档分割线:	<input type="text" class="ty" id="2level3"/>万枚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三档服务费：<input type="text" class="ty" id="2cost3"/>元<br /></div>
            <div>预计开始使用时间:	<input type="text" id="end" class="form-control laydate-icon" class="ty" id="2startpredict"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第四档服务费：<input type="text" class="ty" id="2cost4"/>元<br /></div>
            <button onclick="apply()" id="but" style="margin-top: 5%">提交</button>
        </form>
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


    })
</script>
<script>
    function apply() {
        var radiovalue=$("input[type='radio']:checked").val();
        if(radiovalue=="1"){
            //alert(radiovalue)
            var level1=$("#level1").val();
            var level2=$("#level2").val();
            var level3=$("#level3").val();
            var level4=$("#level4").val();
            var cost1=$("#cost1").val();
            var cost2=$("#cost2").val();
            var cost3=$("#cost3").val();
            var cost4=$("#cost4").val();
            var cost5=$("#cost5").val();
            var start=$("#start").val();
            //alert(cost3);
            var url="http://localhost:8010/servicecharge?level1="+level1+"&level2="+level2+"&level3="+level3+"&level4="+level4+"&cost1="+cost1+"&cost2="+cost2+"&cost3="+cost3+"&cost4="+cost4+"&cost5="+cost5+"&startpredict="+start+"&type=1";

            //alert(url);
            $.ajax({
                type:'GET',
                url: url,
                dataType:'jsonp',
                processData: false,
                jsonpCallback:"callback",
                //data:{level1:level1,level2:level2,level3:level3,level4:level4,cost1:cost1,cost2:cost2,cost3:cost3,cost4:cost4,cost5:cost5,startpredict:start,type:radiovalue},
                //data:{cost3:cost3},
                success:function(data) {
                    if (data.result == "success") {
                        alert(data.info);
                    } else {
                        alert(data.info);
                    }
                    alert("保存成功")
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    // alert(XMLHttpRequest.readyState);
                    alert("系统繁忙，请稍后再试");
                }
            })

        }
        if(radiovalue=="2"){
            //alert(radiovalue)
            var level1=$("#2level1").val();
            var level2=$("#2level2").val();
            var level3=$("#2level3").val();
            var cost1=$("#2cost1").val();
            var cost2=$("#2cost2").val();
            var cost3=$("#2cost3").val();
            var cost4=$("#2cost4").val();
            var start=$("#end").val();
            var url="http://localhost:8010/servicecharge?level1="+level1+"&level2="+level2+"&level3="+level3+"&cost1="+cost1+"&cost2="+cost2+"&cost3="+cost3+"&cost4="+cost4+"&startpredict="+start+"&type=2";
            //alert(url)
            $.ajax({
                url: url,
                //data:{level1:level1,level2:level2,level3:level3,level4:level4,cost1:cost1,cost2:cost2,cost3:cost3,cost4:cost4,cost5:cost5,startpredict:start,type:radiovalue},
                dataType:'jsonp',
                processData: false,
                type:'post',
                jsonpCallback:"callback",
                success:function(data){
                    if(data.result=="success"){
                        alert(data.info);
                    }else {
                        alert(data.info);
                    }
                    alert("保存成功")
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