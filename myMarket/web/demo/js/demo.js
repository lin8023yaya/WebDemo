/* GitHub: https://github.com/peet86/Ratyli */


//var result = {
//    "grade":["颜色偏差","重量偏差","错位","指示灯混�?","噪音�?","线路杂乱","气流不够","缝隙"],
//    "list":[101721851,6666443229876]
//}
$(function() {
	// Rated Callback
	$("#five1 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score1").html(value*2);
		}
	});
	$("#five2 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score2").html(value*2);
		}
	});
	$("#five3 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score3").html(value*2);
		}
	});
	$("#five4 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score4").html(value*2);
		}
	});
	$("#five5 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score5").html(value*2);
		}
	});
	$("#five6 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score6").html(value*2);
		}
	});
	$("#five7 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score7").html(value*2);
		}
	});
	$("#five8 .ratyli").ratyli({
		onRated:function(value,init){
			// rating callback
			if(!init)
				//alert(value);  // prevent run at init
			$("#score8").html(value*2);
		}
	});
});
$("#five9 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score9").html(value*2);
    }
});
$("#five10 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score10").html(value*2);
    }
});
$("#five11 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score11").html(value*2);
    }
});
$("#five12 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score12").html(value*2);
    }
});
$("#five13 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score13").html(value*2);
    }
});
$("#five14 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score14").html(value*2);
    }
});
$("#five15 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score15").html(value*2);
    }
});
$("#five16 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score16").html(value*2);
    }
});
$("#five17 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score17").html(value*2);
    }
});
$("#five18 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score18").html(value*2);
    }
});
$("#five19 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score19").html(value*2);
    }
});
$("#five20 .ratyli").ratyli({
    onRated:function(value,init){
        // rating callback
        if(!init)
        //alert(value);  // prevent run at init
            $("#score20").html(value*2);
    }
});


$(document).ready(function(){
    var vendorids=location.search.split('=')[1];
    var typeId=location.search.split('=')[2];
    var vendorID=vendorids.split("&")[0];
	$.ajax({
		type: 'GET',
		url: "http://goods.zkxaiot.cn/Market/getGrade?vendorid="+vendorID+"&typeid="+typeId,
		dataType:'json',
		success: function(result){
//					alert(result.grade[0]);
			result.grade[0] == null ? $("#five1").css("display","none") : $('.grade1').html(result.grade[0]);
			//$('.grade1').html(result.grade[0]);
			//alert(result.grade[0]);

			result.grade[1] == null ? $("#five2").css("display","none") : $('.grade2').html(result.grade[1]);
			//$('.grade2').html(result.grade[1]);
			//alert(result.grade[1]);

			result.grade[2] == null ? $("#five3").css("display","none") : $('.grade3').html(result.grade[2]);
			//$('.grade3').html(result.grade[2]);
			//alert(result.grade[2]);

			result.grade[3] == null ? $("#five4").css("display","none") : $('.grade4').html(result.grade[3]);
			//$('.grade4').html(result.grade[3]);

			result.grade[4] == null ? $("#five5").css("display","none") : $('.grade5').html(result.grade[4]);
			//$('.grade5').html(result.grade[4]);

			result.grade[5] == null ? $("#five6").css("display","none") : $('.grade6').html(result.grade[5]);
			//$('.grade6').html(result.grade[5]);

			result.grade[6] == null ? $("#five7").css("display","none") : $('.grade7').html(result.grade[6]);
			//$('.grade7').html(result.grade[6]);

			result.grade[7] == null ? $("#five8").css("display","none") : $('.grade8').html(result.grade[7]);
			//alert(result.grade[7] == undefined);
            result.grade[8] == null ? $("#five9").css("display","none") : $('.grade9').html(result.grade[8]);
            result.grade[9] == null ? $("#five10").css("display","none") : $('.grade10').html(result.grade[9]);
            result.grade[10] == null ? $("#five11").css("display","none") : $('.grade11').html(result.grade[10]);
            result.grade[11] == null ? $("#five12").css("display","none") : $('.grade12').html(result.grade[11]);
            result.grade[12] == null ? $("#five13").css("display","none") : $('.grade13').html(result.grade[12]);
            result.grade[13] == null ? $("#five14").css("display","none") : $('.grade14').html(result.grade[13]);
            result.grade[14] == null ? $("#five15").css("display","none") : $('.grade15').html(result.grade[14]);
			//$('.grade8').html(result.grade[7]);

			$(".btn").click(function(){
				var suggest=$("#textarea").val();


				var total1=result.grade[0] == null ? 0 :($("#score1").html() == 0 ? -1 : $('#score1').html());
				//var total1=$("#score1").html() == 0 ? -1 : $('#score1').html();
				$('#score1').html(total1)
				var total2=result.grade[1] == null ? 0 :($("#score2").html() == 0 ? -1 : $('#score2').html());
				//var total2=$("#score2").html() == 0 ? -1 : $('#score2').html();
                $('#score2').html(total2)
				var total3=result.grade[2] == null ? 0 :($("#score3").html() == 0 ? -1 : $('#score3').html());
				//var total3=$("#score3").html() == 0 ? -1 : $('#score3').html();
                $('#score3').html(total3)
				var total4=result.grade[3] == null ? 0 :($("#score4").html() == 0 ? -1 : $('#score4').html());
				//var total4=$("#score4").html() == 0 ? -1 : $('#score4').html();
                $('#score4').html(total4)
				var total5=result.grade[4] == null ? 0 :($("#score5").html() == 0 ? -1 : $('#score5').html());
				//var total5=$("#score5").html() == 0 ? -1 : $('#score5').html();
                $('#score5').html(total5)
				var total6=result.grade[5] == null ? 0 :($("#score6").html() == 0 ? -1 : $('#score6').html());
				//var total6=$("#score6").html() == 0 ? -1 : $('#score6').html();
                $('#score6').html(total6)
				var total7=result.grade[6] == null ? 0 :($("#score7").html() == 0 ? -1 : $('#score7').html());
				//var total7=$("#score7").html() == 0 ? -1 : $('#score7').html();
				$('#score7').html(total7)
				//alert(total7);
				var total8=result.grade[7] == null ? 0 :($("#score8").html() == 0 ? -1 : $('#score8').html());
				$('#score8').html(total8)

                var total9=result.grade[8] == null ? 0 :($("#score9").html() == 0 ? -1 : $('#score9').html());
                $('#score9').html(total9)
                var total10=result.grade[9] == null ? 0 :($("#score10").html() == 0 ? -1 : $('#score10').html());
                $('#score10').html(total10)
                var total11=result.grade[10] == null ? 0 :($("#score11").html() == 0 ? -1 : $('#score11').html());
                $('#score11').html(total11)
                var total12=result.grade[11] == null ? 0 :($("#score12").html() == 0 ? -1 : $('#score12').html());
                $('#score12').html(total12)
                var total13=result.grade[12] == null ? 0 :($("#score13").html() == 0 ? -1 : $('#score13').html());
                $('#score13').html(total13)
                var total14=result.grade[13] == null ? 0 :($("#score14").html() == 0 ? -1 : $('#score14').html());
                $('#score14').html(total14)
                var total15=result.grade[14] == null ? 0 :($("#score15").html() == 0 ? -1 : $('#score15').html());
                $('#score15').html(total15)

				//var total8=$("#score8").html() == 0 ? -1 : $('#score8').html();
				//$('#score8').html(total8)
				/*var total;
				if(total1 == 0){
					total= 0 ;
				}else if(total2 == 0){
					total= "?score1="+total1 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total3 == 0){
					total= "?score1="+total1+"&score2="+total2 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total4 == 0){
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total5 == 0){
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total6 == 0){
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total7 == 0){
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else if(total8 == 0){
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}else{
					total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+ "&score8="+total8 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				}*/
                var total;
                if(total1 == 0){
                    total= 0 ;
                }else if(total2 == 0){
                    total= "?score1="+total1 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total3 == 0){
                    total= "?score1="+total1+"&score2="+total2 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total4 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total5 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total6 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total7 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total8 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total9 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total10 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total11 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+ "&score10="+total10+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total12 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+ "&score10="+total10+ "&score11="+total11+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total13 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+ "&score10="+total10+ "&score11="+total11+ "&score12="+total12+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total14 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+ "&score10="+total10+ "&score11="+total11+ "&score12="+total12+ "&score13="+total13+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else if(total5 == 0){
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7 +"&score8="+total8+ "&score9="+total9+ "&score10="+total10+ "&score11="+total11+ "&score12="+total12+ "&score13="+total13+ "&score14="+total14+"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }else{
                    total= "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+ "&score8="+total8+ "&score9="+total9+ "&score10="+total10+ "&score11="+total11+ "&score12="+total12+ "&score13="+total13+ "&score14="+total14+ "&score15="+total15 +"&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
                }
				//alert(total);

				$.ajax({
					type: 'GET',
					url: "http://goods.zkxaiot.cn/Market/setGrade"+total,
					dataType:'json',
					success: function(result){
                        alert(result.result);
					},
					error : function() {
						//alert("error");
					}

				})
			})
		},
		error : function() {
			//alert("error");
		}
	});
})















