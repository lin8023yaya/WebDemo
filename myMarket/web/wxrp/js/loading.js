(function($){
Loading = function(loading_end_fn){
	var resources = [
        "images/xm/bgc.png",
	"images/xm/bgc1.png",
	"images/xm/page6alertimg.png",
        "images/xm/page0img.png"
	 ];
   var imgArray = $("img");
   var lindex = 0;
   for(var i = 0; i < imgArray.length; i++)
	   resources.push($(imgArray[i]).attr("src"));
   for(var i = 0; i < resources.length;i++){
   	 var img = new Image();
   	 img.src = resources[i];
   	 img.onload = function(){
   	 	 lindex++;
		 $("#loading-html").html((lindex/resources.length*100).toFixed(2)+"%<!--<br/>正在努力加载中......-->");
 		 if(lindex == resources.length){
 			 $("#loading-html").html("100.00%<!--<br/>正在努力加载中......-->");
 			 loading_end_fn();
 		 }
   	 };
   	 img.onerror = function(){
 		 lindex++;
 		 $("#loading-html").html((lindex/resources.length*100).toFixed(2)+"%<br/><!--正在努力加载中......-->");
	     if(lindex == resources.length){
	    	 $("#loading-html").html("100.00%<br/><!--正在努力加载中......-->");
	    	 loading_end_fn();
         }
   	 };
   }
};
})(jQuery);