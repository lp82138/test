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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <style type="text/css">
        div{
            width:100%;
        }
    </style>
    <script type="text/javascript">
    	function check(){
    	    var state  = $("#blogId").val();
    		if(state){
    			document.forms[0].action = "/system/updateBlog.action";  
    		}else{
    			document.forms[0].action = "/system/addBlog.action"; 
    		}
    		var content = UE.getEditor('myEditor').getContent();
    		$("#text").val(content);
    	
    	}
    </script>
  </head>
  
  <body>
    <div class="place">
    <span class="icon-reorder"></span>
</div>
<form method="post" class="form-x" action="" onsubmit="return check()" >
    <div class="form-group">
        <div class="body-content">
            <div class="label">
                <label>标题：</label>
            </div>
            <div class="field">
            	<input type="hidden" value="${blog.blogId }" name="blogId" id="blogId" >
                <input type="text" value="${blog.title }" name="title" >
                </select>
            </div>
        </div>
        <div class="body-content">
            <div class="label">
                <label>副标题：</label>
            </div>
            <div class="field">
                <input type="text" value="${blog.subTitle }" name="subTitle">
            </div>
        </div>
        <div class="body-content">
            <div class="label">
                <label>图片：</label>
            </div>
            <div class="field">
                <input type="text" value="${blog.imageUrl }" name="imageUrl">
            </div>
        </div>
        <div class="body-content">
            <div class="label">
                <label>正文：</label>
            </div>
            <div class="field">
                <input type="hidden" id="description" value="${blog.text }" />
                <script  name="text" id="editor" value="${blog.text }" type="text/plain" style="width:650px;height:300px;margin-left: 210px"></script>
                <script type="text/javascript">
                var ue = UE.getEditor('editor');
				       ue.ready(function() {
				            //异步回调
				            setContent();
				        });
			        function setContent() {
			            var description = $("#description").val();
			            UE.getEditor('editor').setContent(description);
			        }
                </script>
            </div>
        </div>
        </form>
        
        <div class="form-foot">
            <button class="button border-green icon-check" type="submit"> 提交</button>&nbsp;
            <input type="button" class="button border-blue" value="返回" class="input-button" onclick="history.back();" />
        </div>
    </div>
  </body>
</html>
