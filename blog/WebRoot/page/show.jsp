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
		 		var blogId ="";
		 		selData();
	            function selData(){
	                jQuery.post("system/findBlogByUserId.action",function(data){
	                    if(data==null){
	                        $("#mytbody").html("<tr><td colspan='2' algin='center'>查无结果</td></tr>");
	                    }else {
	                        var resultData = "";
	                        for (var j = 0; j < data.length; j++) {
	                            resultData += "<tr class='color' blogid="+data[j].blogId+"><td style='width:260px'><img src=" + data[j].imageUrlCopy +"></td>";
	                            resultData += "<td><ul><li style='margin:25;font-size:25px'>" + data[j].title+ "</li>";
	                            resultData += "<li style='margin:21'>" + data[j].subTitle + "</li>";
	                            resultData += "<li style='margin:23'>发布时间：" + getLocalTime(data[j].createDate) + "</li></ul></td></tr>";
	                        }
	                        $("#mytbody").html(resultData);
	                    }
	                });
	            }
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
				
				//选中变色
			   $(".color").live("click",function(){
			   	var trs = $("#table tr");
			   		blogId = $(this).attr("blogid");
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
	            
	            //gengxin
	            $("#update").click(function(){
		            if(blogId==""){
		            	alert("请选择一条");
		            	return false;
		            }
            	window.location.href="/system/findBlogById.action?id="+blogId;
            	})
            });

	</script>
  </head>
  
  <body>
    <div class="place">
    <span class="icon-reorder"><a href="/system/findAllBlog.action">首页</a></span>
  
    	 &nbsp; &nbsp; &nbsp;<a class="button border-blue icon-check" href="/system/toAddBlog.action">添加文章</a>&nbsp;
    	 &nbsp;<a class="button border-blue icon-check" id="update">修改文章</a>&nbsp;
	</div>
        <table width="100%" class="table" id="table">
        <tbody id="mytbody"></tbody>
    	</table>
  </body>
</html>
