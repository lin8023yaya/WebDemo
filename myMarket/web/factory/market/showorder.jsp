
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
    .in{
      width: 100%;
      height: 100%;
      border: none;
      text-align: center;
    }
  </style>
</head>
<body >
<div style="height: 30px;width: 100%;background-color:#F8F8FF;"><h3 style="margin-top: 0px;margin-left: 0px;background-color:#FFFFFF;width: 135px;height: 100%">&nbsp;订单详情</h3></div>
<br /><br />
<div class="content" style="height: 530px;width: 100%; text-align: center">



  <div style="text-align: center; margin-top: 1% ;margin-left: 27%">
    <table>
      <tr>
        <th colspan="2">请确认订单信息</th>
      </tr>
      <tr>
        <th>订单编号</th><th>${Order.number}</th>
      </tr>
      <tr>
        <th>商品名称</th><th>${Order.type.equals("1")?"服务费":"标签费"}</th>
      </tr>
      <tr>
        <th>联系人</th><th><input type="text" id="name" class="in" value="${Order.name}"></th>
      </tr>
      <tr>
        <th>电话</th><th><input type="text"  id="tel" class="in" value="${Order.tel}"></th>
      </tr>
      <tr>
        <th>地址</th><th><input type="text" id="address"  class="in" value="${Order.address}"></th>
      </tr>
      <tr>
        <th>金额</th><th>${Order.totalmoney}</th>
      </tr>
      <tr>
        <th>支付类型</th><th>支付宝</th>
      </tr>

    </table>
  </div>

  <button onclick="apply()" class="but" style="margin-top: 5%;">支付</button>

  <div id="result"></div>

  <%--<button onclick="apply()" class="but" style="margin-top: 5%;text-align: center">提交</button>--%>
  <script>
      function apply(){
          // alert(1)
          var vendorid="${Order.vendorid}";
          var count="${Order.count}";
          var level="${Order.level}";
          var number="${Order.number}";
          var cid="${Order.chargeid}";
          var type="${Order.type}";
          var name=$("#name").val();
          var tel=$("#tel").val();
          var address=$("#address").val();

          var url="http://localhost:8010/orderpay?count="+count+"&level="+level+"&number="+number+"&chargeid="+cid+"&type="+type+"&name="+name+"&tel="+tel+"&address="+address+"&vendorid="+vendorid;
         // alert(url);
          $.ajax({
              type:'get',
              url: url,
              dataType:'jsonp',
              processData: false,
              jsonpCallback:"callback",
              success:function(data) {
                 // alert(data.info);
                  $("#result").html(data.info);
              },
              error:function(XMLHttpRequest, textStatus, errorThrown) {
                  //alert(XMLHttpRequest.status);
                  // alert(XMLHttpRequest.readyState);
                  alert("系统繁忙，请稍后再试");
              }
          })
      }

  </script>

</div>


</body>
</html>