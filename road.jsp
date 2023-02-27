<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>오시는 길</title>

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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css">
<style>
body {
	background-image: url("background.png");
	background-size: 100%;
}

.cursor{
	position:absolute;
	top:0;
	left: 0;
	z-index: 9999;
	transform:translate(80%, -0%);
}

.space {
	margin: 15px;
}

.text {
	font-family: 'HBIOS-SYS';
	font-size: 20px;
	color: white;
	vertical-align: center;
}

li {
	margin-bottom: 20px;
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

    .road {
    	overflow: hidden;
    }

    .road img {
    	transition: all 0.2s linear;
    }
    .road:hover img {
    	transform: scale(2);
    }
</style>
</head>
<body>
	<audio autoplay>
		<source src="audio/kira.mp3" type="audio/mp3">
	</audio>
	
	<div class="cursor">
        <img src="cursor_img/cursor_green.png" style="width: 120px;" alt="fllow_img">
    </div>
	
	<div align="center">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>
			<img src="road_img/title.png" alt="title">
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<table>
			<tr>
				<td><div class="road"><img src="road_img/road.png" alt="road"></div></td>
				<td class="space">&nbsp;</td>
				<td class="text"><ul>
						<li>지하철: 시오중학교 역 6번출구에서 도보 3분
						<li>버스: 시오중학교 역 6번출구 승강장에서 도보 5분
						<li>이메일: reigenARTK@gomail.com
					</ul></td>
			</tr>
		</table>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>
			<a class="back" href="submain.jsp">B A C K</a>
		</p>
	</div>
</body>
</html>