<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>메뉴선택</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css">
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

<style>
@import
	url('https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css')
	;

@font-face {
	font-family: 'DungGeunMo';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.cursor{
	position:absolute;
	top:0;
	left: 0;
	z-index: 9999;
	transform:translate(80%, -0%);
}

body {
	background-image: url("background.png");
	background-size: 100%;
}

td {
	text-align: center;
	height: 200px;
	width: 800px;
}

td.eku1 {
	vertical-align: middle;
	width: 200px;
}

td.eku2 {
	vertical-align: bottom;
	width: 200px;
}

a.back {
	font-family: 'HBIOS-SYS';
	font-size: 60px;
	text-decoration-line: none;
	color: white;
	text-shadow: 3px 3px 3px #000;
	vertical-align: top;
	padding-bottom: 10%;
}

.big img {
	trasition: all 0.2s linear;
}

.big:hover img {
	transform: scale(1.2);
}

.jb-text {
	font-family: 'HBIOS-SYS';
	padding: 10px 15px;
	background-color: black;
	border-radius: 5px;
	color: white;
	position: absolute;
	display: none;
	margin-left: 150px;
	line-height: 20px;
}

.jb-title:hover+.jb-text {
	display: block;
}
</style>
</head>
<body>
	<audio autoplay>
		<source src="audio/bling.mp3" type="audio/mp3">
	</audio>
	
	<div class="cursor">
        <img src="cursor_img/cursor_green.png" style="width: 120px;" alt="fllow_img">
    </div>
	
	<div align="center">
		<p>&nbsp;</p>
		<p>
			<img src="submain_img/title.png" alt="title">
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<table>
			<tr>
				<td rowspan="5" class="eku1"><img src="submain_img/ekubo1.gif"
					alt="ekubo1" width="100%"></td>
				<td><span class="jb-title"><img
						src="submain_img/introduce.png" alt="introduce" height="100%"></span>
					<span class="jb-text"> <font color="red">&#60;개발한
							사람들&#62;</font><br> <font color="salmon">동덕여자대학교 학생들</font><br>
						<font color="yellow">디자인: 20211186 강현우,</font><br> <font
						color="chartreuse">20221109 김지윤</font><br> <font color="aqua">개발:
							20210794 김서진,</font><br> <font color="violet">20210806 이진희</font></span> <span><img
						src="submain_img/reigen.png" alt="reigen" height="100%"></span></td>
				<td rowspan="5" class="eku2"><img src="submain_img/ekubo2.gif"
					alt="ekubo2" width="100%"></td>
			</tr>
			<tr>
				<td><span class="big"><a href="request.jsp"><img
							src="submain_img/request.gif" alt="request" height="100%"></a></span>
					<span class="big"><a href="schedule.jsp"><img
							src="submain_img/schedule.png" alt="schedule" height="100%"></a></span>
				</td>
			</tr>
			<tr>
				<td><span class="big"><a href="review.jsp"><img
							src="submain_img/review.png" alt="review" height="100%"></a></span> <span
					class="big"><a href="experience1.jsp"><img
							src="submain_img/experience.png" alt="experience" height="100%"></a></span>
				</td>
			</tr>
			<tr>
				<td><span class="big"><a href="road.jsp"> <img
							src="submain_img/road.png" alt="road" width="100%"></a></span></td>
			</tr>
			<tr>
				<td height="200px"><img src="submain_img/arrow.gif" alt="arrow"
					height="100%"></td>
			</tr>
			<tr>
				<td colspan="3" width="1200px"><img src="submain_img/cost.gif"
					alt="cost" width="1000px"></td>
			</tr>
		</table>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>
			<a class="back" href="main.jsp">B A C K</a>
		</p>
	</div>
</body>
</html>