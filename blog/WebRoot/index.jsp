<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
		 $(function(){
		 selData();
	            function selData(){
	                jQuery.post("system/findBlog.action",function(data){
	                    if(data==null){
	                        $("#mytbody").html("<tr><td colspan='2' algin='center'>查无结果</td></tr>");
	                    }else {
	                        var resultData = "";
	                        for (var j = 0; j < data.length; j++) {
	                            resultData += "<tr class='color'><td style='width:260px'><img src=" + data[j].imageUrlCopy +"></td>";
	                            resultData += "<td><ul><li style='margin:25;font-size:25px'>" + data[j].title+ "</li>";
	                            resultData += "<li style='margin:21'>" + data[j].subTitle + "</li>";
	                            resultData += "<li style='margin:23'>发布时间：" + getLocalTime(data[j].createDate) + "</li></ul></td></tr>";
	                        }
	                        $("#mytbody").html(resultData);
	                        $("#insert").append("<a class='button border-green icon-check' href='/system/toAddBlog.action'>添加文章</a>&nbsp;");
	                    }
	                });
	            }
            });
            //时间戳转字符串
            function getLocalTime(nS) {  
	            var time = new Date(nS);
				var y = time.getFullYear();
				var m = time.getMonth()+1;
				var d = time.getDate();
				var h = time.getHours();
				var mm = time.getMinutes();
				var s = time.getSeconds();
				return y+"-"+m+"-"+d;
			}

		   $(".color").live("click",function(){
		   	var trs = $("#table tr");
		   		tronmousedown(trs,this);
		   });
		   
		   function tronmousedown(trs,obj){  
		    for( var o=0; o<trs.length; o++ ){  
		     if( trs[o] == obj ){  
		      trs[o].style.backgroundColor = "#DFEBF2";  
		     }  
		     else{  
		      trs[o].style.backgroundColor = "";  
		     }  
		    }  
		   }  
            
	</script>
  </head>
  
  <body>
    <div class="place">
    <span class="icon-reorder"></span>
	</div>
        <table width="100%" class="table" id="table">
        <tbody id="mytbody"></tbody>
    	</table>
    	<div style="height: 20px"></div>
    	<div id="insert"></div>
  </body>
</html>
