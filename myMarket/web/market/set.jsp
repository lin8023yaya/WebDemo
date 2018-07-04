<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2018/7/3
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>set</title>
    <script src="/js/jquery-1.11.3.js"></script>
    <style>
        table {
            border: 1px solid grey;
        }

        .discript_detail {
            border: 1px solid grey;
            border-bottom: 0;
            height: 45px;
        }

        .discript_head {
            background-color: #E6E6E6;
        }

        .activity td {
            border: 1px solid grey;
        }

        .activity table {
            border-bottom: 0;
        }

        /*table td{*/
        /*padding:0;*/
        /*}*/
        .prize_level {
            border-top: 0;
            background-color: #FCFAF1;
        }

        .prize_set {
            height: 50px;
        }

        input[type="submit"] {
            border: 1px solid #015595;
            border-radius: 3px;
            background-color: #015595;
            width: 160px;
            height: 28px;
            margin-left: 40%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="content" style="margin: 0;height: 430px;width: 100%;">
    <div class="discript">
        <table style="width: 100%;" role="grid" cellspacing="0" cellpadding="0">
            <tr>
                <td class="discript_head">活动描述</td>
            </tr>
            <tr>
                <td class="discript_detail">用户根据商家设定的每个奖品的概率进行抽奖，用户中奖后奖品有企业进行配送</td>
            </tr>
        </table>
    </div>
    <div class="head" style="width: 100%;height:30px; background-color: #E6E6E6; ">
        <p style="margin: 0;">活动设置：</p>
    </div>
    <div class="activity">
        <form action="" onsubmit="return false">
            <table style="width: 100%;" role="grid" cellspacing="0" cellpadding="0">
                <tr>

                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品一</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize1" id="prize11" value="${showprize.prize1}"/></span>
                        <span>中奖概率：<input type="text" name="odds1" id="prize1" value="${showprize.odds1}"/></span>
                    </td>
                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品二</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize2" id="prize22" value="${showprize.prize2}"/></span>
                        <span>中奖概率：<input type="text" name="odds2" id="prize2" value="${showprize.odds2}"/></span>
                        <span></span>
                    </td>
                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品三</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize3" id="prize33" value="${showprize.prize3}"/></span>
                        <span>中奖概率：<input type="text" name="odds3" id="prize3" value="${showprize.odds3}"/></span>
                    </td>
                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品四</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize4" id="prize44" value="${showprize.prize4}"/></span>
                        <span>中奖概率：<input type="text" name="odds4" id="prize4" value="${showprize.odds4}"/></span>
                    </td>
                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品五</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize5" id="prize55" value="${showprize.prize5}"/></span>
                        <span>中奖概率：<input type="text" name="odds5" id="prize5" value="${showprize.odds5}"/></span>
                    </td>
                </tr>
                <tr>
                    <td class="prize_level">
                        <p style="margin: 0;">奖品六</p>
                    </td>
                </tr>
                <tr>
                    <td class="prize_set">
                        <span>奖品名称：<input type="text" name="prize6" id="prize66" value="${showprize.prize6}"/></span>
                        <span>中奖概率：<input type="text" name="odds6" id="prize6" value="${showprize.odds6}"/></span>
                    </td>
                </tr>
            </table>
            <input type="text" name="promotionid" style="display: none" id="promotionid" value="1"/>
            <input type="text" name="vendorid" style="display: none" id="vendorid" value="101721861"/>
            <input type="submit" value="保存" id="baocun"/>
        </form>
        <input type="button" value="查看" id="chakan" onclick="chakan()"/>
    </div>
    <%--<input type="text" name="prizeTotal" id="prizeTotal" style="display:none; "/>--%>
    <input type="text" name="prizeTotal" id="prizeTotal"/><br/>
</div>
<script type="text/javascript">

    $(function () {
        $("#prizeTotal").blur(function () {
            var sum = 0;
            for (var i = 1; i < 7; ++i) {
                sum += +document.getElementById('prize' + i).value;
            }
            document.getElementById('prizeTotal').value = sum;
            alert(sum);
            if (document.getElementById('prizeTotal').value != 1) {
                alert("对不起,中奖率不足100%");
            }else {
                alert("奖项设置成功!");
            }
        });
    });

    $("#baocun").click(function () {
        var prize1 = $("#prize11").val();
        var prize2 = $("#prize22").val();
        var prize3 = $("#prize33").val();
        var prize4 = $("#prize44").val();
        var prize5 = $("#prize55").val();
        var prize6 = $("#prize66").val();
        var odds1 = $("#prize1").val();
        var odds2 = $("#prize2").val();
        var odds3 = $("#prize3").val();
        var odds4 = $("#prize4").val();
        var odds5 = $("#prize5").val();
        var odds6 = $("#prize6").val();
        var promotionid = $("#promotionid").val();
        var vendorid = $("#vendorid").val();
        alert(vendorid);
        alert(prize2);
        $.ajax({
            type: "post",
            url: "/market/prize",
            data: {
                vendorId: vendorid,
                promotionId: promotionid,
                prize1: prize1,
                prize1: prize2,
                prize1: prize3,
                prize1: prize4,
                prize1: prize5,
                prize1: prize6,
                odds1: odds1,
                odds1: odds2,
                odds1: odds3,
                odds1: odds4,
                odds1: odds5,
                odds1: odds6
            },
            dataType: "json",
            error: function () {
                alert("传输失败!");
            },
            success: function (data) {
                alert(data);
            }
    });
    });

</script>
</body>
</html>
