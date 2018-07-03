<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="/government/market/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<
<script type="javascript">
    $(function () {

        $.ajax({
            type: "POST",
            url:"http://localhost:8010/apply",
            dataType: "json",
            timeout: 50000,
            success: function (result) {
               alert( result.applylist);
            },
            error: function(result) {
                alert("网络异常，稍后再试！");
            }
        })
    })
</script>
</body>
</html>