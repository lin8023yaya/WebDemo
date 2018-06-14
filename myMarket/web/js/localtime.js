/**
 * Created by msj on 2017/5/17.
 */
function tick()
{
    var today;
    today = new Date();
    document.getElementById("localtime").innerHTML = showLocale(today);
    window.setTimeout("tick()", 1000);
}
function showLocale(objD)
{
    var str,colorhead,colorfoot;
    var yy = objD.getYear();
    if(yy<1900) yy = yy+1900;
    var MM = objD.getMonth()+1;
    if(MM<10) MM = '0' + MM;
    var dd = objD.getDate();
    if(dd<10) dd = '0' + dd;
    var ww = objD.getDay();
    if  ( ww==0 )  colorhead="<font color=\"#BDBDBD\">";
    if  ( ww > 0 && ww < 6 )  colorhead="<font color=\"#BDBDBD\">";
    if  ( ww==6 )  colorhead="<font color=\"#BDBDBD\">";
    colorfoot="</font>"
    str = colorhead + yy + "-" + MM + "-" + dd + " "  + colorfoot;
    return(str);
}
tick();