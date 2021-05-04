<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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
<%@include file="nav.jsp" %>
	<div class="col-md-6" style=" margin-left: 100px; margin-top:20px;">
	<table class="table table-dark">
	  <thead>
	    <tr>
	      <th scope="col">历史记录：</th>
	      <th scope="col"></th>
	     
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">12.25</th>
	      <td>观湖轩，14:00-16:30</td>
	 
	    </tr>
	    <tr>
	      <th scope="row">12.03</th>
	      <td>半烛轩，19:00-21:30</td>
	  
	    </tr>
	    <tr>
	      <th scope="row">11.18</th>
	      <td>观湖轩，14:00-16:30</td>

	    </tr>
	  </tbody>
	</table>
	</div>

  <div class="col-md-3" style=" margin-left: 890px;margin-top:-210px;" >
  <div class="card text-center bg-light ">
  <img class="card-img-top" src="images/touxiang.JPG" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">櫵有荷华</h5>
    <hr>
    <p class="card-text">账户等级：U2</p>
    <hr>
    <p class="card-text">常选包厢：观湖轩</p>
  </div>
  </div>
</div>

 
				
</body>
</html>