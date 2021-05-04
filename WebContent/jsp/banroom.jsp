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
<div style="width:1000px;margin-left: 90px;margin-top:20px;">
<ul class="list-unstyled">
  <li class="media">
    <img class="mr-3" src="images/room6.JPG" style="width:400px;height:400px">
    <div class="media-body">
      <h5 class="mt-0 mb-1" >半烛轩</h5>
                位于茶室一楼正中，整面的落地窗，光线可直接照进室内，室内的时间随着太让的东升西落而不断变化。
      <h6>可容纳人数：5-6人</h6>
      <!-- Button trigger modal -->
		<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
		 预约
		</button>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">请输入你所要预约的时间段</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      		<div>
		        <c:choose>
                   <c:when test="${room[2].time1=='无预约'}">
                       <button type="button" class="btn btn-primary" >8:00-10:30</button>
                   </c:when>
                   <c:otherwise>
                       <button type="button" class="btn btn-secondary" >8:00-10:30</button>  
                   </c:otherwise>
				</c:choose>
				<c:choose>
                   	<c:when test="${room[2].time2=='无预约'}">
                          <button type="button" class="btn btn-primary">11:00-13:30</button>
                   	</c:when>
                   	<c:otherwise>
                           <button type="button" class="btn btn-secondary">11:00-13:30</button> 
                 	</c:otherwise>
				</c:choose>
					<c:choose>
                   	<c:when test="${room[2].time3=='无预约'}">
                           <button type="button" class="btn btn-primary">14:00-16:30</button>
                   	</c:when>
                   	<c:otherwise>
						   <button type="button" class="btn btn-secondary">14:00-16:30</button>
                 	</c:otherwise>
				</c:choose>
					<c:choose>
                   	<c:when test="${room[2].time4=='无预约'}">
                           <a class ="btn btn-primary" href="BookRoomAction?roomID=3?roomstate=4" role="button">19:00-21:30</a>
                   	</c:when>
                   	<c:otherwise>
                           <button type="button" class="btn btn-secondary">19:00-21：30</button>
                 	</c:otherwise>
				</c:choose>

		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		        <a class ="btn btn-outline-primary" href="BookRoomAction?roomID=3" role="button">确认</a>
		      </div>
		    </div>
		  </div>
		</div>
		</div>
    </div>
  </li>
</ul>
</div>
<!-- 页面右边区域 -->

</body>
</html>