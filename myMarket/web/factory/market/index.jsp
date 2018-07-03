<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="js/jquery-1.11.3.min.js"></script>
    <style>
        table{
            /*border: 1px solid grey;*/
        }

        .activity td{
            /*border: 1px solid grey;*/
            border:1px solid transparent ;
        }
        .activity table{
            /*border-bottom: 0;*/
        }
        .prize_set{
            height: 280px;
            /*border: 1px solid transparent;*/
        }
        input[type="submit"]{
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
        <div class="activity" style="width: 100%;height: 100%;">
            <form action="" onSubmit="return sub()">
                <table style="width: 100%;" role="grid" cellspacing="0" cellpadding="0">
                    <tr>
                        <td  style="border-bottom:1px solid transparent; ">
                            <p></p>
                            活动选择：
                            <p></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="prize_set">
                            <img src="/factory/market/img/A.png" alt="" style="float: left;margin-left: 40px;"/>
                            <!--<span  style="float: left;">幸运大转盘</span>-->
                            <img src="/factory/market/img/B.png" alt="" style="float: left;margin-left: 40px;"/>
                            <!--<p>幸运大转盘</p>-->
                            <img src="/factory/market/img/B.png" alt=""  style="float: left;margin-left: 40px;"/>
                            <img src="/factory/market/img/B.png" alt=""  style="float: left;margin-left: 40px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="margin-left: 100px;" onclick="back(this.id)" id="001">1 幸运大转盘</span>
                            <span style="margin-left: 210px;" onclick="redset(this.id)" id="002">2 开发中</span>
                            <span style="margin-left: 220px;">3 开发中</span>
                            <span style="margin-left: 230px;">4 开发中</span>
                        </td>
                    </tr>
                </table>
                <!--<input type="submit" value="保存" id="baocun" />-->
            </form>
        </div>
    </div>
<script>
    var vendorID=<s:property value="vendorID"/>;
    function back(promotionid){
        window.location.href="/government/set.action?promotionid="+promotionid;
    }
    function redset(promotionid) {
        window.location.href="/government/redset.action?promotionid="+promotionid;
    }
</script>

</body>
</html>