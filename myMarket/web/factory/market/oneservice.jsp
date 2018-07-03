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
    table
    {
      border-collapse:collapse;
    }

    table,th, td
    {
      border: 1px solid black;
    }
    table
    {
      width:60%;
    }

    th
    {
      height:50px;
    }
    .but{
      border: 1px solid #015595;
      border-radius: 3px;
      background-color: #015595;
      width: 160px;
      height: 28px;
      margin-top: 2%;}

  </style>
</head>
<body >
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 id="title" style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 120px;height: 100%">&nbsp;&nbsp;服务购买</h3></div>
<br /><br />
<div class="content" style="height: 530px;width: 100%; text-align: center">

  <form  style="text-align: center;margin-top: 1% ;margin-left: 27%">
    <table style="text-align: center">
      <thead>
      <tr>
        <th id="thead1" class="radio">服务套餐选择</th ><th id="thead2">年用量（万枚）</th><th id="thead3">费用(元/年)</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <th class="radio"><input name="service" type="radio" value="1" id="radio1"/></th><th class="1">0-${charge.level1==null?"暂无":charge.level1}</th><th>${charge.cost1==null?"暂无":charge.cost1}</th>
      </tr>
      <tr>
        <th class="radio"><input name="service" type="radio" value="2" id="radio2" /></th><th class="2">${charge.level1==null?"暂无":charge.level1}-${charge.level2==null?"暂无":charge.level2}</th><th>${charge.cost2==null?"暂无":charge.cost2}</th>
      </tr>
      <tr>
        <th class="radio"><input name="service" type="radio" value="3" id="radio3"/></th><th class="3">${charge.level2==null?"暂无":charge.level2}-${charge.level3==null?"暂无":charge.level3}</th><th>${charge.cost3==null?"暂无":charge.cost3}</th>
      </tr>
      <tr>
        <th class="radio"><input name="service" type="radio" value="4" id="radio4"/></th><th class="4">${charge.level3==null?"暂无":charge.level3}-${charge.level4==null?"":charge.level4}</th><th>${charge.cost4==null?"暂无":charge.cost4}</th>
      </tr>
      <tr  id="bq">
        <th class="radio"><input name="service" type="radio" value="5" /></th><th class="5">${charge.level4==null?"暂无":charge.level4}-</th><th>${charge.cost5==null?"暂无":charge.cost5}</th>
      </tr>
      <tr id="biao" style="display: none;" > <th colspan="3"><input type="text" id="num"  placeholder="输&nbsp;入&nbsp;要&nbsp;购&nbsp;买&nbsp;的&nbsp;标&nbsp;签&nbsp;数&nbsp;量" style="text-align: center;width: 100%;height: 100%;border: none;font-size: 20px"></th></tr>
      </tbody>
    </table>

  </form>

  <button onclick="apply()" class="but" style="margin-top: 5%;text-align: center">提交</button>
  <script>

      $(function () {
          // alert(1)
          $("#biao").hide();
          var ty="${charge.type}";
          //    alert(ty);
          if(ty=="2"){
              $("#biao").show();
          }
          if(ty=="2"){
              // alert(2)

              $("#radio1").attr("type", "text")
              $("#radio1").css("width","100%")
              $("#radio1").css("height","100%")
              $("#radio1").css("border","none")
              $("#radio1").css("text-align","center")
              $("#radio2").attr("type", "text")
              $("#radio2").css("width","100%")
              $("#radio2").css("height","100%")
              $("#radio2").css("border","none")
              $("#radio2").css("text-align","center")
              $("#radio3").attr("type", "text")
              $("#radio3").css("width","100%")
              $("#radio3").css("height","100%")
              $("#radio3").css("border","none")
              $("#radio3").css("text-align","center")
              $("#radio4").attr("type", "text")
              $("#radio4").css("width","100%")
              $("#radio4").css("height","100%")
              $("#radio4").css("border","none")
              $("#radio4").css("text-align","center")
              $("#radio1").attr("readonly","readonly")
              $("#radio2").attr("readonly","readonly")
              $("#radio3").attr("readonly","readonly")
              $("#radio4").attr("readonly","readonly")
              $("#thead1").html("标签套餐");
              $("#thead2").html("购买数量(万枚)");
              $("#thead3").html("费用（元/枚）");
              $("#title").html("&nbsp;&nbsp;标签购买");
              $("#bq").hide();
              for(var i=0;i<7;i++){
                  $(".radio")[i].hide();
              }

          }
      })


      function apply(){
          var id="${charge.id}";
          var vendorID=<s:property value="vendorID"/>;
          var tys="${charge.type}";

          if(tys=="1"){
              var a = $("input[type='radio']:checked").val();
              if(typeof(a)=="undefined"){
                  alert("请选择服务套餐！");
              }else {
                  var  num="0";
                  window.location.href="/government/showordder.action?vendorID="+vendorID+"&chargeid="+id+"&level="+a+"&num="+num;
              }
          }else {
              var num= $("#num").val();
              //alert(num=="")
              if(num==""){
                  alert("请输入购买标签数量！");
              }else {
                  var a="0";
                  window.location.href="/government/showordder.action?vendorID="+vendorID+"&chargeid="+id+"&level="+a+"&num="+num;
              }

          }


      }

  </script>

</div>


</body>
</html>