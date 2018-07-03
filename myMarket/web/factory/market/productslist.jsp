<%--
  Created by IntelliJ IDEA.
  User: SeleneFox
  Date: 13-4-20
  Time: 上午9:20
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="<s:url value="/js/jquery-ui/themes/smoothness/jquery-ui.min.css"/>"/>
    <link rel="stylesheet" href="<s:url value="/js/jqGrid/ui.jqgrid.css"/>"/>
    <link rel="stylesheet" href="<s:url value="/css/util.css"/>"/>
    <link rel="stylesheet" href="<s:url value="/factory/css/product.css"/>"/>
    <link rel="stylesheet" href="<s:url value="/css/second.css"/>"/>
    <link rel="stylesheet" href="/js/jquery-ui/themes/base/all.css">
    <link href="<s:url value="/js/jAlert/jquery.alerts.css"/>" rel="stylesheet" />
    <link rel="stylesheet" href="/css/themes/gray/easyui.css">
    <link rel="stylesheet" href="/css/themes/icon.css">
    <script src="<s:url value="/js/httpconnect.js"/>"></script>
    <script src="<s:url value="/js/pop.js"/>"></script>
    <script src="<s:url value="/js/jquery-1.7.2.min.js"/>"></script>
    <script src="<s:url value="/js/jAlert/jquery.ui.draggable.js"/>"></script>
    <script src="<s:url value="/js/jAlert/jquery.alerts.js"/>"></script>
    <script src="<s:url value="/js/jqGrid/i18n/grid.locale-cn.js"/>"></script>
    <script src="<s:url value="/js/jqGrid/jquery.jqGrid.js"/>"></script>
    <script src="<s:url value="/js/json_sans_eval.js"/>"></script>
    <script src="/js/jquery-ui/ui/core.js"></script>
    <script src="/js/jquery-ui/ui/widget.js"></script>
    <script src="/js/jquery-ui/ui/datepicker.js"></script>
    <script src="/js/jquery-ui/ui/i18n/datepicker-zh-CN.js"></script>
    <script src="/js/jquery-ui/ui/timepicker.js"></script>
    <script src="/js/jquery.form.js"></script>
    <script src="<s:url value="/js/jquery.easyui.min.js"/>"></script>
    <script src="/js/gallery/inputprocess.js"></script>
    <script >
        var path = "<%=request.getContextPath()%>";
        function createProdcutType(){
            this.location = "<s:url action="product_edit" namespace="/factory"><s:param name="productinfo.act">add</s:param> </s:url>";
        }

        function batch_add_pop(){
            var http = new HTTP();
            http.setAsync(false);
            var data = http.GetData('<s:url action="showBatchPage" namespace="/factory"/>', null);
            alertWin("批量新增", data, 600, 600,-80);
        }
        function fdownload(){
            $("#downloadLabel").css("display","none");
            $("#uploadDiv").css("display","none");
            $("#category_block").css("display","block");
            $("#buttonBlcok").css("display","block");
            $("#downnloadPic").attr("href","#");
            $("#downloadDiv").animate({right:'50px'});
            $.ajax({
                async:false,
                url:path + "/json/get_category_list.action",
                type:"post",
                dataType:"text",
                cache:false,
                success:function (data) {
                    var allCates = jsonParse(data).allCates;
                    var ctg = "";
                    for (var i=0;i<allCates.length;i++){
//                            ctg = ctg+'<div class="cate-rows"><div ><input type="checkbox" value="'+allCates[i].cid+'"/></div><label>'
//                                    +allCates[i].cname+'</label><input type="hidden" value='+allCates[i].templateInfo+' ></div>';
                        ctg = ctg+"<div class='cate-rows'><div ><input type='checkbox' value='"+allCates[i].cid+"'/></div><label>"
                            +allCates[i].cname+"</label><input type='hidden' value=\""+allCates[i].templateInfo+"\"></div>";
                    }
                    $("#category_block").append('<span>*选择要备案商品的行业</span>'+ctg);

                },
                error:function () {

                }
            });
        }
        function fuploadPOP(){
            $("#w").window('open');
        }
        //上传
        function uploadFile(){
            var filename = $("input[type='file']").val();
            if (filename == ""){
                $("#noFileError").text("请上传一个文件");
                $("#noFileError").css("display","block");
                return;
            }else {
                var index = filename.lastIndexOf(".");
                if (filename.substr(index+1) != "xls"){
                    $("#noFileError").text("请上传xls文件");
                    $("#noFileError").css("display","block");
                    return ;
                }
            }

            $("#w").parent().hide();
            addBgDiv("请稍候...");
            $("#product_upload_form").submit();
        }
        function bachFirst(){
            $("#downloadLabel").css("display","block");
            $("#uploadDiv").css("display","block");
            $("#category_block").css("display","none");
            $("#buttonBlcok").css("display","none");
            $("#downnloadPic").attr("href","javascript:fdownload();");
            $("#category_block").empty();
            $("#downloadDiv").animate({right:''});
        }
        function downloadTemp(){
            var cates='';
            $("#category_block input[type='checkbox']:checked").each(function(){
                var category;
                var cid=$(this).val();
                var cname=$(this).parent().parent().find("label").text();
                var templateinfo = $(this).parent().parent().find("input[type='hidden']").val()
                category = '{"cid":"'+cid+'","cname":"'+cname+'","templateInfo":"'+templateinfo+'"}';
                if (cates != ''){
                    cates=cates+','+category;
                }else {
                    cates = "["+category;
                }

            });
            if (cates == ''){
                jAlert("请选择一个备案商品的行业","提示");
                return false;
            }
            cates=cates+"]";
            $("#sel_cates").val(cates);
            $("#product_batchadd_form").submit();
        }
        function query(){
            var begintime = $("#begintime").val();
            var endtime = $("#endtime").val();
            if(endtime < begintime) {
                jAlert("开始时间不能大于结束时间",'结果');
                return false;
            }
            //$("#loading").css("display","block");
//                var status = $("#status-query").val();
            var params = {
                'productinfo.applyStatus':1,
                'begintime':begintime,
                'endtime':endtime,
                'productinfo.pageFlag':1
            };
            $(".norecords").hide();
            $("#gridTable").jqGrid('setGridParam',{
                postData:params,
                'page':1
            }).trigger("reloadGrid"); //重新载入
            return false;
        }
        function query1(){
            $(".norecords").hide();
            $("#gridTable1").jqGrid('setGridParam',{
                'url':'<s:url action="craft_list" escapeAmp="false" namespace="/json"/>',
                'page':1
            }).trigger("reloadGrid"); //重新载入
            return false;
        }
        function changeTab(val){
            if (val == 1){
                $("#gridDiv1").css("display","block");
                $("#gridDiv2").css("display","none");
                $("#productQryDiv").css("display","block");
                $("#clearButton").css("display","none");
                $("#productlist-create-title").attr("class","productlist-create-title");
                $("#productlist-create-title-1").attr("class","productlist-create-title-1");
                query();
            }else {
                $("#gridDiv2").css("display","block");
                $("#gridDiv1").css("display","none");
                $("#clearButton").css("display","block");
                $("#productQryDiv").css("display","none");
                $("#productlist-create-title").attr("class","productlist-create-title-1");
                $("#productlist-create-title-1").attr("class","productlist-create-title");
                query1();
            }
        }
        function clearAll(){
            jConfirm('确认删除草稿箱吗？', '确认窗口', function(r) {
                if(r) {
                    $.ajax({
                        cache: true,
                        type: "POST",
                        dataType: "json",
                        url: '/json/clearDraft.action',
                        async: false,
                        error: function (request) {
                            jFail("Connection error", "结果");
                        },
                        success: function (data) {
                            if (data.result == 0) {
                                query1();
                                $("#productlist-create-title-1").text("草稿箱（0）")
                            } else {
                                jFail(data.failinfo, "结果");
                            }
                        }
                    });
                }
            });
        }
        $(function() {
            timerClearDiv();
            $("#begintime").datepicker({
                changeMonth: true,
                changeYear: true
            });
            $("#endtime").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
        $(function()
        {

            $('#w').window({
                onBeforeClose: function () { //当面板关闭之前触发的事件
                    $("#noFileError").css("display","none");
                }
            });

            $("#gridTable").jqGrid({
                url: '<s:url action="product_list" escapeAmp="false" namespace="/json"/>',
                datatype: "json",
                mtype:"POST",//提交方式
                postData:{
                    "productinfo.pageFlag":1,
                    "productinfo.applyStatus":1,
                    "begintime":$("#begintime").val(),
                    "endtime":$("#endtime").val()
                },
                height: $(window).height()-150,
                width:$(window).width()-20,
                page:$( "#page").val(),
                colModel:[
                    {
                        name:'productName',
                        label:'名称',
                        index:'productName',
                        width:100,
                        formatter: function (value, grid, rows, state) {
                            //alert(value);
                            return '<span style="color:blue;cursor: pointer" >'+value+'</span>';
                        }
                    },
                    {name:'categoryTypeName',label:'商品类型',index:'categoryTypeName', width:100},
                    //{name:'categoryName',label:'贸易类别',index:'categoryName', width:100},
                    {name:'tagTypeName',label:'防伪类别',index:'tagTypeName', width:80},
                    {name:'createTimeStr',label:'备案时间',index:'createTimeStr', width:80},
//                        {name:'applyStatusName',label:'状态',index:'applyStatusName', width:50},
                    {name:'typeId',label:'',index:'typeId', hidden:true},
                    {name:'vendorId',label:'',index:'vendorId', hidden:true}
                ],
                rowNum:20,
                pager: '#gridPager',
                sortname: 'typeId',
                prmNames: {search: "search"},
                viewrecords: true,
                emptyrecords:"共0条记录",
                sortorder: "desc",
                jsonReader : {
                    root:"gridModel",       // (2)
                    records: "record",      // (3)
                    repeatitems : true,     // (4)
                    id:"0"
                },
                onCellSelect:function(rowid,iCol,cellcontent,e) {
                    if(iCol == 0) {
                        var rowData = $("#gridTable").jqGrid("getRowData", rowid);
                        document.location.href = "<s:url action="apply2" namespace="/government"/>"+"?typeId="+rowData["typeId"]
                            +"&vendorID="+rowData["vendorId"]+"&begintime="+$("#begintime").val()+"&endtime="+$("#endtime").val()
                            +"&page="+ $( "#gridTable").getGridParam("page");
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

            $("#gridTable1").jqGrid({
                url: '<s:url action="craft_list" escapeAmp="false" namespace="/json"/>',
                datatype: "json",
                mtype:"POST",//提交方式
                postData:{
                    "productinfo.pageFlag":1,
                    "begintime":$("#begintime").val(),
                    "endtime":$("#endtime").val()
                },
                height: $(window).height()-150,
                width:$(window).width()-20,
                page:$( "#page").val(),
                colModel:[
                    {
                        name:'productName',
                        label:'名称',
                        index:'productName',
                        width:100,
                        formatter: function (value, grid, rows, state) {
                            //alert(value);
                            return '<span style="color:blue;cursor: pointer" >'+value+'</span>';
                        },
                        unformat:function(value){
                            return value;
                        }
                    },
                    {name:'categoryTypeName',label:'商品类型',index:'categoryTypeName', width:100},
                    {name:'categoryName',label:'贸易类别',index:'categoryName', width:100},
                    {name:'tagTypeName',label:'防伪类别',index:'tagTypeName', width:80},
                    {name:'remark',label:'备注',index:'remark', width:80},
                    {name:'applyStatusName',index:'applyStatusName', width:50, hidden:true},
                    {name:'id',label:'',index:'id', hidden:true},
                    {name:'applyStatus',label:'',index:'applyStatus', hidden:true},
                    {name:'vendorId',label:'',index:'vendorId', hidden:true}
                ],
                rowNum:20,
                pager: '#gridPager1',
                sortname: 'id',
                prmNames: {search: "search"},
                viewrecords: true,
                emptyrecords:"共0条记录",
                sortorder: "desc",
                jsonReader : {
                    root:"gridModel",       // (2)
                    records: "record",      // (3)
                    repeatitems : true     // (4)
                },
                onCellSelect:function(rowid,iCol,cellcontent,e) {
                    if(iCol == 0) {
                        var rowData = $("#gridTable1").jqGrid("getRowData", rowid);
                        document.location.href = "<s:url action="draft_product_edit" namespace="/factory"/>"+"?draftinfo.id="+rowData["id"];
                    }
                },
                loadComplete: function(){
                    var re_records = $("#gridTable1").getGridParam('records');
                    if(re_records == 0 || re_records == null){
                        if($("#gridTable1").parent().find(".norecords").html() == null){
                            $("#gridTable1").parent().append("<div class=\"norecords\">暂无内容</div>");
                        }
                        $(".norecords").show();
                    }
                    var allData = $("#gridTable1").jqGrid("getRowData");
                    for (var i=0;i<allData.length;i++){
                        if (allData[i].applyStatus != 0){
                            $("#gridTable1 #"+allData[i].id+" td").css("background-color","pink");
                        }

                    }

                }
            }).closest(".ui-jqgrid-bdiv").css({ 'overflow-y' : 'scroll' });

            if ("<s:property value="draftinfo.act"/>" == "draft"){
                $("#productlist-create-title-1").trigger("onclick");
            }

//                $("#uploadPop").dialog("close");
        });
        function clickCell(id){
            //var selectedId = $("#gridTable").jqGrid("getGridParam", "selrow");
            var rowData = $("#gridTable").jqGrid("getRowData", id);
            document.location.href = "<s:url action="product_edit" namespace="/factory"/>"+"?productinfo.typeId="+rowData["typeId"]+"&productinfo.vendorId="+rowData["vendorId"];
        }
    </script>
</head>
<body>
<div class="content" id="loadingdiv" style="margin:0;">
    <script>
        $("#loadingdiv").hide();
        addBgDiv("读取中...");
    </script>
    <div id="productlist-main">

        <div class="productlist-create">
            <div id="productlist-create-title" class="productlist-create-title" onclick="changeTab(1)">商品选择</div>
            <%-- <div id="productlist-create-title-1" class="productlist-create-title-1" onclick="changeTab(2)">草稿箱（<s:property value="craftTotalNum"/>）</div>
             <div style="padding-left: 5px">
                 <input type="button" name="button2" class="button" onclick="createProdcutType();" style="width: 100px;" id="button2" value="+ 新增商品" />
                 <input type="button" name="button2" class="button" onclick="batch_add_pop();" style="width: 100px;"  value="+ 批量新增" />
             </div>--%>
            <div id="productQryDiv" style="float: right;">
                <s:form name="apply_search_form" cssStyle="text-align:right;font-weight:bold;font-size: 12px;">
                    备案时间：<s:textfield id="begintime" name="begintime" cssStyle="width:80px;" readonly="true"/> - <s:textfield id="endtime" name="endtime" cssStyle="width:80px;" readonly="true"/>
                    <%--状态：<s:select id="status-query" onchange="return query();"  list="applystatuslistvendor" listValue="tagname" listKey="value" headerKey="" headerValue="全部" name="productinfo.applyStatus" value="productinfo.applyStatus"/>--%>
                    <s:submit cssClass="util-button" value="查询" onclick="return query();"/>
                </s:form>
            </div>
            <div id="clearButton" style="display: none;float: right;">
                <input type="button" class="button" value="清空草稿箱" onclick="clearAll();"/>
            </div>
        </div>
        <div id="gridDiv1">
            <table id="gridTable"></table>
            <div id="gridPager"></div>
        </div>
        <div id="gridDiv2" style="display: none">
            <table id="gridTable1" ></table>
            <div id="gridPager1"></div>
        </div>
        <s:hidden id="page" name="page"/>
    </div>
    <div id="w" class="easyui-window" title="文件上传" data-options="iconCls:'icon-save',minimizable:false,maximizable:false,collapsible:false,resizable:false,shadow:false,closed:true" style="width:520px;height:180px;padding:10px;">
        <s:form id="product_upload_form" action="upload_excel_file" namespace="/factory" method="POST" enctype="multipart/form-data">
            <div style="margin-bottom:20px;width:98%">
                <input class="easyui-filebox" name="file" data-options="prompt:'选择文件...'" style="width:100%">
            </div>
            <div id="noFileError" style="display: none;padding-left: 9px;;color: red;">请上传一个文件</div>
            <div style="padding-left: 9px;padding-top: 21px;">
                <a href="javascript:uploadFile()" class="easyui-linkbutton" style="width: 464px">上传</a>
            </div>
        </s:form>
    </div>
    <s:if test="productinfo.result!=null && productinfo.result != 0">
        <script >
            jAlert('<s:property value="productinfo.failinfo"/>',"结果");
        </script>
    </s:if>
    <%--<div id="uploadPop" class="easyui-dialog" title="模板上传" data-options="iconCls:'icon-save',--%>
    <%--buttons: [{--%>
    <%--text:'上传',--%>
    <%--iconCls:'icon-ok',--%>
    <%--handler:uploadFile()--%>
    <%--}]" style="width:400px;height:200px;padding:10px;">--%>
    <%--<div style="margin-bottom:20px">--%>
    <%--<div>文件:</div>--%>
    <%--<input id="uploadFile" class="easyui-filebox" name="image" data-options="prompt:'选择文件...'" style="width:100%"/>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<s:form id="upload_file_form" name="upload_file_form" method="POST" enctype="multipart/form-data">--%>
    <%--<s:hidden name="image"/>--%>
    <%--</s:form>--%>
</div>
</body>
</html>