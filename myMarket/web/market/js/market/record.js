var val = 0;
function allPrize(val) {
    if (val == 0) {
        //alert(0);
        $.ajax({
            type:"get",
            url:"/market/record",
            dataType:"json",
            success:function (result) {
                alert(result.message);
                window.location.href="record.jsp";
            },
            error:function () {
                alert("提交失败!");
            }
        })
    }
}