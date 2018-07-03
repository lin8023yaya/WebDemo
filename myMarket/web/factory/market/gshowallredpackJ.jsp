<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="<s:url value="/js/jquery-ui/themes/smoothness/jquery-ui.min.css"/>"/>
  <link rel="stylesheet" href="<s:url value="/js/jqGrid/ui.jqgrid.css"/>"/>
  <link rel="stylesheet" href="<s:url value="/js/jAlert/jquery.alerts.css"/>"  />
  <link rel="stylesheet" href="<s:url value="/css/util.css"/>"/>
  <link rel="stylesheet" href="<s:url value="/factory/css/manageaccount.css"/>"/>
  <link rel="stylesheet" href="<s:url value="/css/second.css"/>"/>
  <link rel="stylesheet" href="/js/jquery-ui/themes/base/all.css">
  <link rel="stylesheet" href="/css/themes/gray/easyui.css">
  <link rel="stylesheet" href="/css/themes/icon.css">
  <script src="/js/jquery-ui/jquery.js"></script>
  <script src="<s:url value="/js/json_sans_eval.js"/>"></script>
  <script src="<s:url value="/js/jquery-1.7.2.min.js"/>"></script>
  <script src="<s:url value="/js/jqGrid/i18n/grid.locale-cn.js"/>"></script>
  <script src="<s:url value="/js/jqGrid/jquery.jqGrid.js"/>"></script>
  <script src="<s:url value="/js/jquery.validate.min.js"/>"></script>
  <script src="<s:url value="/js/messages_zh.js"/>"></script>
  <script src="<s:url value="/js/additional-methods.min.js"/>"></script>
  <script src="<s:url value="/js/jAlert/jquery.ui.draggable.js"/>"></script>
  <script src="<s:url value="/js/jAlert/jquery.alerts.js"/>"></script>
  <script src="<s:url value="/js/httpconnect.js"/>"></script>
  <script src="<s:url value="/js/pop.js"/>"></script>
  <script src="/js/jquery-ui/ui/core.js"></script>
  <script src="/js/jquery-ui/ui/widget.js"></script>
  <script src="<s:url value="/js/jquery.easyui.min.js"/>"></script>
  <script src="/js/gallery/inputprocess.js"></script>

  <script >
      //获取扫码统计列表
      $(function(){
          timerClearDiv();
          $("#gridTable").jqGrid({
              url: '<s:url action="gshowallredpack" escapeAmp="false" namespace="/json"/>',
              datatype: "json",
              mtype:"POST",//提交方式
              /*postData:{
                  //参数
                  "scanstatbean.pageFlag":1
              },*/
              height: $(window).height()-150,
              width:$(window).width()-20,
              page:1,
              colModel:[
                  {name:'redpacketinfoid',label:'红包奖品配置序号',index:'redpacketinfoid', width:100},
                  {name:'name',label:'申请人',index:'name', width:80},
                  {name:'tel',label:'电话',index:'tel', width:70},
                  {name:'starttime',label:'开始时间',index:'starttime', width:70},
                  {name:'endtime',label:'结束时间',index:'endtime', width:70},
                  {name:'status',label:'活动状态',index:'status', width:70}
                  /*{
                      name:'sex',
                      label:'性别',
                      index:'scancnt',
                      width:80,
                      formatter: function (value, grid, rows, state) {
                          //alert(value);
                          return '<span style="color:blue;cursor: pointer">'+value+'</span>';
                      }
                  },
                  {name:'scancnt',label:'',index:'scancnt', hidden:true},
                  {name:'typeid',label:'',index:'typeid', hidden:true}*/
              ],
              rowNum:20,
              pager: '#gridPager',
              sortname: 'redpacketinfoid',
              prmNames: {search: "search"},
              viewrecords: true,
              emptyrecords:"共0条记录",
              sortorder: "desc",
              //描述json 数据格式的数组
              jsonReader : {
                  root:"gridModel",       // (2)json中代表实际模型数据的入口
                  records: "record",      // (3)json中代表数据行总数的数据
                  repeatitems : true,     // (4)
                  id:"0"
              },
              onCellSelect:function(rowid,iCol,cellcontent,e) {
                  //  alert(rowid);
                  //   alert(iCol);
                  if(iCol == 3) {
                      var rowData = $("#gridTable").jqGrid("getRowData", rowid);
                      //if(rowData["scancnt"]>0){
                      if(true){
                          // alert(rowData["id"]);
                          scan_pop(rowData["id"]);
                      }else{
                          jAlert("暂无扫码记录");
                      }
                      //alert("结束");
                  }
              },
              loadComplete: function(){
                  var re_records = $("#gridTable").getGridParam('records');
                  if(re_records == 0 || re_records == null){
                      if($("#gridTable").parent().find(".norecords").html() == null){
                          $("#gridTable").parent().append("<div class=\"norecords\">暂无内容</div>");
                      }
                      $(".norecords").show();
                  }
              }
          }).closest(".ui-jqgrid-bdiv").css({ 'overflow-y' : 'scroll' });

      });
      var scantypeid = "";
      //扫面详情
      function scan_pop(id){
          // alert("111111111111111");
          $.ajax({
              ///json/getScanstatdetailapi.action
              url:"/government/test.action",
              type:"post",
            /*data: {
             "scanstatbean.typeid":typeid
             },*/
              dataType:"json",
              cache:false,
              success:function (result) {
                  //alert(result[1].name);
                  var scanList = result;
                  var data = [];
                  data.push("<div class=\"manageaccountlist-main\" style=\"width: 100%\">");
                  data.push("<div class=\"manageaccountlist-control\" style=\"float:right\">");
                  data.push("<div style=\"padding-left: 150px;cursor: pointer;float:right;margin: 4px auto\">");
                  data.push("<input type=\"button\" class=\"util-button\" onclick=\"downloadscan("+id+")\" value=\"下载\"/>");
                  data.push("</div>");
                  data.push("</div>");
                  data.push("<div class=\"table-wrap\" style=\"height: calc(100% - 50px)\">");
                  data.push("<div class=\"table-list\" >");
                  data.push("<div style=\"height: 100%;width: 100%\">");
                  data.push("<div class=\"table-header\">");
                  data.push("<div class=\"table-item-1 table-item\">id</div>");
                  data.push("<div class=\"table-item-1 table-item\">姓名</div>");
                  data.push("<div class=\"table-item-1 table-item\">年龄</div>");
                  data.push("<div class=\"table-item-1 table-item\">性别</div>");
                /*data.push("<div class=\"table-item-1 table-item\">是否VIP</div>");
                 data.push("<div class=\"table-item-1 table-item\">扫码位置</div>");
                 data.push("<div class=\"table-item-1 table-item\">是否被验证</div>");*/
                  data.push("</div>");
                  data.push("<div class=\"table-body\">");
                  for(var i=0;i<scanList.length;i++){
                      data.push("<div class=\"table-tr\"> " +
                          "<div class=\"table-item-1 table-item\" title=\"\" onclick=\"test( "+scanList[i].id+ ")\" style=\"cursor: pointer;\">"+scanList[i].id+"</div>  <div class=\"table-item-1 table-item\" title=\"\">"+scanList[i].name+"</div><div class=\"table-item-1 table-item\" title=\"\">"+scanList[i].age+"</div> <div class=\"table-item-1 table-item\" title=\"\">"+scanList[i].sex+"</div> "+"</div>");
                  }
                  data.push("</div>");
                  data.push("</div>");
                  data.push("</div>");
                  data.push("</div>");
                  data.push("</div>");
                  alertWin("test", data.join(""), 800, 600,0);


              },
              error:function () {

              }
          });
      }
      //下载查看
      function downloadscan(typeid) {
          document.getElementById("downloadFrame").src = '<s:url action="getScanstatdetailapidownload" namespace="/json" escapeAmp="false"/>?scanstatbean.typeid='+typeid;
      }
      function test(id) {
          alert(id);
      }




  </script>
</head>
<body>
<div class="manageaccountlist-main" id="loadingdiv">
  <script>
      $("#loadingdiv").hide();
      addBgDiv("读取中...");
  </script>
  <div id="manageaccountlist-main">
    <div class="manageaccountlist-create">
      <div id="manageaccountlist-create-title">红包活动记录</div>
    </div>
    <table id="gridTable"></table>
    <div id="gridPager"></div>
    <s:hidden id="page" name="page"/>
    <s:hidden id="typeId" name="scanstatbean.typeId"/>
  </div>
  <iframe id="downloadFrame" width="1" height="1" style="visibility: hidden;display: none;"/>
</div>
</body>
</html>
