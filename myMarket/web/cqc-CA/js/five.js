/* GitHub: https://github.com/peet86/Ratyli */



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
});

$(document).ready(function(){
	var vendorids = location.search.split('=')[1];
	//alert(vendorids);
	var typeId = location.search.split('=')[2];
	//alert(typeId);
	var vendorID = vendorids.split("&")[0];
	$.ajax({
		type: 'GET',
		url: "http://goods.zkxaiot.cn/Market/getGrade?vendorid="+vendorID+"&typeid="+typeId,
		dataType:'jsonp',
		jsonpCallback:"callback",
		success: function(result){
//					alert(result.grade[0]);
			//alert("ajax");
			
			result.grade[0] == null ? $("#five1").css("display","none") : $('.grade1').html(result.grade[0]);
			result.grade[1] == null ? $("#five2").css("display","none") : $('.grade2').html(result.grade[1]);
			result.grade[2] == null ? $("#five3").css("display","none") : $('.grade3').html(result.grade[2]);
			result.grade[3] == null ? $("#five4").css("display","none") : $('.grade4').html(result.grade[3]);
			result.grade[4] == null ? $("#five5").css("display","none") : $('.grade5').html(result.grade[4]);
			result.grade[5] == null ? $("#five6").css("display","none") : $('.grade6').html(result.grade[5]);
			result.grade[6] == null ? $("#five7").css("display","none") : $('.grade7').html(result.grade[6]);
			result.grade[7] == null ? $("#five8").css("display","none") : $('.grade8').html(result.grade[7]);
			result.grade[8] == null ? $("#five9").css("display","none") : $('.grade9').html(result.grade[8]);
			result.grade[9] == null ? $("#five10").css("display","none") : $('.grade10').html(result.grade[9]);
			result.grade[10] == null ? $("#five11").css("display","none") : $('.grade11').html(result.grade[10]);
			result.grade[11] == null ? $("#five12").css("display","none") : $('.grade12').html(result.grade[11]);
			result.grade[12] == null ? $("#five13").css("display","none") : $('.grade13').html(result.grade[12]);
			result.grade[13] == null ? $("#five14").css("display","none") : $('.grade14').html(result.grade[13]);
			result.grade[14] == null ? $("#five15").css("display","none") : $('.grade15').html(result.grade[14]);


			$(".btn").click(function(){
				var suggest=$("#textarea").val();
				//alert(suggest);
				var total1=$("#score1").html() == 0 ? -1 : $('#score1').html();
				//$('#score1').html(total1)
					//alert("total1="+total1);
				var total2=$("#score2").html() == 0 ? -1 : $('#score2').html();
					//alert("total2="+total2);
                //$('#score2').html(total2)
				var total3=$("#score3").html() == 0 ? -1 : $('#score3').html();
				//alert("total31="+total3);
               // $('#score3').html(total3)
				var total4=$("#score4").html() == 0 ? -1 : $('#score4').html();
               // $('#score4').html(total4)
				var total5=$("#score5").html() == 0 ? -1 : $('#score5').html();
                //$('#score5').html(total5)
				var total6=$("#score6").html() == 0 ? -1 : $('#score6').html();
               // $('#score6').html(total6)
                var total7=$("#score7").html() == 0 ? -1 : $('#score7').html();
                //$('#score7').html(total7)
                var total8=$("#score8").html() == 0 ? -1 : $('#score8').html();
                //$('#score8').html(total8)
				var total9=$("#score9").html() == 0 ? -1 : $('#score9').html();
				//alert("total9="+total9);
                //$('#score9').html(total9)
				var total10=$("#score10").html() == 0 ? -1 : $('#score10').html();
                $('#score10').html(total10)
				//alert("total10="+total10);
				var total11=$("#score11").html() == 0 ? -1 : $('#score11').html();
				//alert("total11="+total11);
                //$('#score11').html(total11)
				var total12=$("#score12").html() == 0 ? -1 : $('#score12').html();
                //$('#score12').html(total12)
				var total13=$("#score13").html() == 0 ? -1 : $('#score13').html();
                //$('#score13').html(total13)
				var total14=$("#score14").html() == 0 ? -1 : $('#score14').html();
               // $('#score14').html(total14)
				var total15=$("#score15").html() == 0 ? -1 : $('#score15').html();
               // $('#score15').html(total15)

				var total;
				var totalElse ="&suggest="+suggest+"&vendorid="+result.list[0]+"&typeid="+result.list[1];
				//alert(totalElse);
				if($(".grade1").html() == 0){
					total = totalElse;
					//alert(total);
				}else if($(".grade2").html() == 0){
					total ="?score1="+total1+totalElse;
					//alert(total);
					//continue;
				}else if($(".grade3").html() == 0){
					//alert("total3="+total3);
					total = "?score1="+total1+"&score2="+total2+totalElse;
					//alert(total);
					//return;
				}else if($(".grade4").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+totalElse;
					//alert(total);
				}else if($(".grade5").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+totalElse;
					//alert("total5="+total5);
					//alert(total);
				}else if($(".grade6").html() == 0){
					//alert("6==0");
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+totalElse;
					//alert(total);
				}else if($(".grade7").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+totalElse;
					//alert(total);
				}else if($(".grade8").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+totalElse;
					//alert(total);
				}else if($(".grade9").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+totalElse;
					//alert(total);
				}else if($(".grade10").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+totalElse;
					//alert(total);
				}else if($(".grade11").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+totalElse;
					//alert(total);
				}else if($(".grade12").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+"&score11="+total11+totalElse;
					//alert(total);
				}else if($(".grade13").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+"&score11="+total11+"&score12="+total12+totalElse;
					//alert(total);
				}else if($(".grade14").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+"&score11="+total11+"&score12="+total12+"&score13="+total13+totalElse;
					//alert(total);
				}else if($(".grade15").html() == 0){
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+"&score11="+total11+"&score12="+total12+"&score13="+total13+"&score14="+total14+totalElse;
					//alert(total);
				}else{
					total = "?score1="+total1+"&score2="+total2+"&score3="+total3+"&score4="+total4+"&score5="+total5+"&score6="+total6+"&score7="+total7+"&score8="+total8+"&score9="+total9+"&score10="+total10+"&score11="+total11+"&score12="+total12+"&score13="+total13+"&score14="+total14+"&score15="+total15+totalElse;
					//alert(total);
				}
				//alert("最后"+total);
				$.ajax({
                    type: 'GET',
                    url: "http://goods.zkxaiot.cn/Market/setGrade"+total,
                    dataType:'json',
                    success: function(result){
                       // alert("执行"+result.result);
					},
                    error : function() {
                        //alert("error");
                    }

				})
			})
		},
		error : function() {
			//alert("errorwai");
		}
	});
})















