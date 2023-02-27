<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>의뢰서 확인</title>
<script src="jquery-3.5.1.min.js"></script>
<script type="text/javascript"> 
        $(document).ready(function(){
            
            $(document).mousemove(function(e){
                var mouseX = e.pageX;
                var mouseY = e.pageY;

                $('.cursor').css({
                    left: mouseX + "px",
                    top : mouseY + "px"
                })
            })
        })
</script> 

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
	@import url('https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css');
	
	body {
		background-image: url('../Mob_homepage/request_img/submain_bg.png'); /*이미지 넣기*/
		background-size: 80%;
	}
		
	#title {
		padding-left: 40px;
		padding-top: 20px;
		padding-bottom: 60px;
		color: #DCDCDC;
		font-family: 'HBIOS-SYS';
		font-size: 80px;
		text-shadow: 3px 3px 3px #A9A9A9;
	}
	
 	.bg1{
		width: 1000px;
		height: 35px;
		margin-left: 20%;
		background-color: #ff00dd;
		border: 3.5px solid white;
		margin-bottom: 0.5%;
	} 
	
	.bg2{
		width: 700px;
		height: 35px;
		margin-left: 20%;
		background-color: #ff00dd;
		border: 3.5px solid white;
		margin-bottom: 0.5%;
	}
	.cursor{
		position:absolute;
	    top:0;
	    left: 0;
	    z-index: 9999;
	    transform:translate(80%, -0%);
	}
	
    .x img {
    	transition: all 0.2s linear;
    }
    
    .x:hover img {
    	transform: scale(1.2);
    }
    
    .reset img {
    	transition: all 0.2s linear;
    }
    
    .reset:hover img {
    	transform: scale(1.2);
    }
</style>
</head>
<body>
	<div class="cursor">
        <img src="cursor_img/cursor_pink.png" style="width: 120px;" alt="fllow_img">
    </div>
    
	<%
	int flag = 0;
	if (request.getParameter("name") == "") 
		flag = 1;
	if (request.getParameter("tel") == "") 
		flag = 1;
	if (request.getParameter("course") == null) 
		flag = 1;
	if (request.getParameter("memo1") == "") 
		flag = 1;
	if (request.getParameter("agree") == null || request.getParameter("agree").equals("1")) 
		flag = 1;
	%>

		<%
		if(flag == 0){
		%>
		<!-- 의뢰서 내용 성공-->
		<audio autoplay>
			<source src="audio/clab.mp3" type="audio/mp3">
		</audio>
		<div style="margin-left: 4.5%;">
			<img alt="사진" src="main_img/pink_star_XS.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_M.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_XL.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_M.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_L.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_L.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_S.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_XS.gif" style="margin-bottom: -860px;">
			<img alt="사진" src="main_img/pink_star_S.gif" style="margin-bottom: -860px;"> 
			<img alt="사진" src="main_img/pink_star_XL.gif" style="margin-bottom: -860px;"> 
		</div>
		
		<div style="margin-top: -5%;">
			<div id="title" align="center"><img src="request_img/succes.png" alt="사진" style="width: 1200px; height: 150x;"/></div>
			
			<div style="margin-top: -2%;">
			<form method=post action=submain.jsp>			
				<div class="bg1">
					<span class="x">
						<a href="submain.jsp"><img src="request_img/bar_x.png" alt="x 사진" style="margin-left: 96%; margin-top: -0.5%;"/></a>
					</span>
				</div>								
			</form>
			<textarea style="margin-left: 20%; width: 1000px; height: 600px; background-color: #e9daec; opacity: 0.8; font-family: 'HBIOS-SYS'; font-size: 35px;" 
			readonly>&nbsp;&#10; 성&nbsp;&nbsp;&nbsp;&nbsp;함: <%=request.getParameter("name") %>&#10;&#10; 전화번호: <%=request.getParameter("tel") %>&#10;&#10; 의뢰 코스: <%=request.getParameter("course") %>&#10;&#10; 의뢰 내용: <%=request.getParameter("memo1") %>&#10;&#10; 문의 내용: <%=request.getParameter("memo2") %>
			</textarea>
			</div>
		</div>
		
		<%
		}
		if(flag==1){
		%>
		<!-- 의뢰서 내용 실패-->
		<audio autoplay>
			<source src="audio/fail.mp3" type="audio/mp3">
		</audio>
		<div style="margin-top: -5%;">
			<div id="title" align="center"><img src="request_img/fail.png" alt="사진" style="width: 1000px; height: 150x; margin-top: 5%;"/></div>
			
			<div style="margin-left: 13%;">
			<form method=post action=request.jsp>
				<div class="bg2">
					<span class="x">
						<a href="submain.jsp"><img src="request_img/bar_x.png" alt="x 사진" style="margin-left: 94%; margin-top: -0.5%;"/></a>
					</span>
				</div>
			</form>
			<textarea style="margin-left: 20%; width: 700px; height: 180px; background-color: #e9daec; text-align: center; opacity: 0.8; font-family: 'HBIOS-SYS'; font-size: 35px;" readonly>
			&nbsp;&#10;의뢰가 취소되었습니다.&#10;&#10;재작성 후 제출 부탁드립니다.
			</textarea>
			</div>
			
			<div align="center" style="margin-top: 6%;">
				<img alt="사진" src="request_img/left.gif" style="width: 160px; height: 90px; margin-right: 1.5%;">
				<span class="reset">
					<a href="request.jsp"><img src="request_img/reset_button.png" alt="reset" style="width: 300px; margin-top: 7%; height: 75px;"/></a>
				</span>
				<img alt="사진" src="request_img/right.gif" style="width: 160px; height: 90px; margin-left: 1.5%;">
			</div>
		</div>
		<%
		}
		%>
</body>
</html>