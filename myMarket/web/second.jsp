<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>怀旧模式</title>
    <!-- Bootstrap -->
    <!--<link href="css/bootstrap.css" rel="stylesheet">-->
    <!-- [if lt IE 9]> -->
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <link rel="stylesheet" href="css/intel.css"/>
    <link rel="stylesheet" href="css/my_else.css"/>
    <!-- <![endif] -->
</head>
<script type="text/javascript">
    window.onload=function(){
        var str=location.href; //取得整个地址栏
        var num=str.indexOf("?")
        str=str.substr(num+1); //取得所有参数
        var arr=str.split("&"); //各个参数放到数组里
        num=arr[0].indexOf("=");
        if(num>0){
            var url=arr[0].substr(num+1);
        }
        num=arr[1].indexOf("=");
        if(num>0){
            var word= decodeURI(arr[1].substr(num+1));
        }
        //alert(word);
        document.getElementById("camera").setAttribute("src",url);
        document.getElementById("suggest_content").innerText=word;
        var share;
        share="${share}";
        if(share==1){
        	$(".img-responsive").css("display","block");
        }
    }

</script>
<body>
<div class="write" style="text-align:center">
    <!--<img src="img/write.png" alt="" class="img-responsive"/>-->
    <img src='img/camera.png' alt='' id='camera' align="center" width="200" height="150"  style="text-align:center;"/>
</div>
<!--转发提示-->
<div class="share">
    <img src="img/share.png" alt="" class="img-responsive" style="margin-top: -27em;margin-left: 2.5em; width: 80%; display:none;"/>
</div>
<!--form表单部分-->
<form action='' method='post' name='myform'>
    <!--<input type='file' id='iptfileupload' onchange='show()' value=''/>-->
    <textarea id="suggest_content" name="word"  cols="23" rows="2" placeholder="请输入您想对他（她）说的话(60字以内)" readonly="true"></textarea>
    <!--<h2 id="localtime"></h2>-->
</form>
<!--提交按钮-->
<div class="submit">
    <!--  <img src="image/btSubmit.png"  class="img-responsive" alt=""/>
   <button class="button">提交</button> -->
</div>
<script src="js/jquery-1.11.3.js"></script>
<!--<script src="js/bootstrap.min.js"></script>-->
<!--<script src="js/btSubmit.js"></script>-->
<script src="js/img_upload.js"></script>
<!--<script src="js/localtime.js"></script>-->

<script>
    jQuery(function () {
        $("#camera").click(function () {
            $("#iptfileupload").click();
        });
    });
</script>
</body>
</html>


