<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>唠唠茶</title>
<style type="text/css">   
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
<body>
<!-- 页面布局 -->
<!-- Image and text -->
<%@include file="nav.jsp" %>
<!-- 页面左边区域 -->
<div class="card" style="width: 30rem;margin-left: 84px;margin-top:10px;">
  <img class="card-img-top" src="images/image1.JPG" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">welcome to 唠唠茶</h5>
    <p class="card-text">本网站为唠唠茶——茶室预定网站，在这各类风格茶室应有尽有。无论你是唠唠茶忠实顾客，还是未听说过我们的新顾客，在唠唠茶你都能尽情享受你所爱的。</p>
  </div>
</div>
<!-- 页面右边区域 -->
<div  style="width:600px;margin-left: 590px;margin-top:-505px;">
<table class="table table-bordered table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">茶室名</th>
      <th scope="col">8:00-10:30</th>
      <th scope="col">11:00-13:30</th>
      <th scope="col">14:00-16:30</th>
      <th scope="col">19:00-21:30</th>
    </tr>
  </thead>
  	  				<tbody>
					   
					    <tr>
					      
					      <th scope="row"><a href="GuanRoom">${room[0].name}</a></th>
					      <td> ${room[0].time1}</td>
					      <td>${room[0].time2}</td>
					      <td>${room[0].time3}</td>
					      <td>${room[0].time4}</td>
					    </tr>
					    <tr>
					      <th scope="row"><a href="LuRoom">${room[1].name}</a></th>
					      <td>${room[1].time1}</td>
					      <td>${room[1].time2}</td>
					      <td>${room[1].time3}</td>
					      <td>${room[1].time4}</td>
					    </tr>
					    <tr>
					      <th scope="row"><a href="BanRoom">${room[2].name}</a></th>
					      <td>${room[2].time1}</td>
					      <td>${room[2].time2}</td>
					      <td>${room[2].time3}</td>
					      <td>${room[2].time4}</td>
					    </tr>
					    <tr>
					      <th scope="row"><a href="YunRoom">${room[3].name}</a></th>
					      <td>${room[3].time1}</td>
					      <td>${room[3].time2}</td>
					      <td>${room[3].time3}</td>
					      <td>${room[3].time4}</td>
					    </tr>
					    <tr>
					      <th scope="row"><a href="YiRoom">${room[4].name}</a></th>
					      <td>${room[4].time1}</td>
					      <td>${room[4].time2}</td>
					      <td>${room[4].time3}</td>
					      <td>${room[4].time4}</td>
					    </tr>
					    <tr>
					      <th scope="row"><a href="LanRoom">${room[5].name}</a></th>
					      <td>${room[5].time1}</td>
					      <td>${room[5].time2}</td>
					      <td>${room[5].time3}</td>
					      <td>${room[5].time4}</td>
					    </tr>

					  </tbody>
</table>	
</div>
</body>
</html>