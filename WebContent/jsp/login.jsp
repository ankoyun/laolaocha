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

 
		<div class="card border-secondary bg-transparent mb-3" style="max-width: 40rem;position: absolute;margin-top: 50px;left:700px;">
		  <div class="card-header bg-secondary">用户登录</div>
		  <div class="card-body text-white-50">
		   <p style="color:red">${info}</p>
		   <form method ="post" action="loginAction" role="form"> 
				<div class="form-group row">
				    <label for="inputname" class="col-sm-4 col-form-label">用户账户：</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" name="username">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword" class="col-sm-4 col-form-label">登陆密码：</label>
				    <div class="col-sm-6">
				      <input type="password" class="form-control" name="password">
				    </div>
				  </div>
					
					  <div class="form-group row">
					  <label for="exampleInputPassword1"  class="col-sm-4 col-form-label">校验码：</label>
			          <input type="text" class="form-control col-sm-4" placeholder="校验码" name="code"><img src ="ResponseImage">
					 </div>
					<div class="form-group form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1">
					    <label class="form-check-label" for="exampleCheck1">记住密码</label>
					</div>
				   <button type="submit" class="btn btn-primary">登录</button>
				   <a href="Register" class="btn btn-primary" style="margin-left:100px">注册</a>
				   
				</form>
		  </div>
		</div>
				
</body>
</html>