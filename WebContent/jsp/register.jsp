<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">    
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.min.js"></script>    
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>   
<script src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>    
<style type="text/css">        
.login-container{            
width: 400px;            
margin: auto;        
}        
.login-nav{            
width: 400px;            
height: 30px;            
padding: 27px 0 24px;            
text-align: center;            
line-height: 0px;            
font-size: 24px;            
color: #666;            
}         
body{  
     background-image:url(images/background.JPG); /*图片地址*/                             
     background-origin:content;   /*从content区域开始显示背景*/  
 /*             图片上下左右居中  */
     background-size:cover;       /*          覆盖填充，将图片缩放到宽度或高度正好适应定义背景的区域  */*/
     background-repeat:no-repeat;     /*         图像不重复显示  */
       } 
</style>
<%@include file="bt.jsp" %> 
</head>
<body >
<!-- 页面布局 -->
<!-- Image and text -->
<nav class="navbar navbar-light bg-dark">
  <a class="navbar-brand text-white-50" href="#">
    <img src="images/logo.JPG" width="30" height="30" class="d-inline-block align-top" alt="">
       欢迎来到唠唠茶
  </a>
</nav>
   	<div class="row" style="margin-top: 10px;">
    	
        	<div class="col-md-3">
           

       		</div>
       	 <div class="col-md">
       	    <div class="card bg-transparent">
				<div class="card-header bg-secondary">
				    用户注册
				  </div>
				  <div class="card-body text-light">
				  <form method ="post" action="RegisterAction" role="form"> 
				     <div class="form-group row">
				      <label class="col-sm-2 col-form-label">用户名：</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control"  name="username">
					    </div>
					  </div>
					  <div class="form-group row">
				      <label class="col-sm-2 col-form-label">密码：</label>
					    <div class="col-sm-8">
					      <input type="password" class="form-control" name="password">
					    </div>
					  </div>
					<p>
						性别：
						<input type ="radio" name ="sex" value="男">男
						<input type="radio" name="sex" value="女">女
					</p>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">联系方式（电话）</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="phonenumber">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">邮箱：</label>
					    <div class="col-sm-8">
					      <input type="email" class="form-control" name="email">
					    </div>
					  </div>
					<p>
					    <button type="submit" class="btn btn-primary">注册</button>
					</p>
					</form>
				  </div>
		     </div>
  		</div>
        <div class="col-md-3">
      
        </div>
    </div>
				
</body>
</html>