<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="counter" class="jspbook.mob.CounterBean" scope="application"/>
<jsp:setProperty name="counter" property="newVisit" value="1222"/>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>영 기타 등등 사무소에 오신것을 환영합니다.</title>

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
	@font-face {
	    font-family: 'YiSunShinRegular';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/YiSunShinRegular.woff') format('woff');
 	    font-weight: normal; 
 	    font-style: normal; 
	}
	
	@font-face {
     font-family: 'DungGeunMo';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
     font-weight: normal;
     font-style: normal;
    }
     
	@font-face {
	    font-family: 'RixInooAriDuriR';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/RixInooAriDuriR.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
		
	@font-face {
	  font-family: 'LAB디지털';
	  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/LAB디지털.woff') format('woff');
	  font-weight: normal;
	  font-style: normal;
	}

	body {
	        /*<body> 태그 배경 이미지 넣기, 화면에 가득 찰 때까지 반복  <<<<<디자인 받으면 삽입하기>>>>>*/
	       background-image: url('../Mob_homepage/main_img/main_bg.png');  /*이미지 넣기*/ 
	       background-size: 90%;  /*화면에 가득 찰 때까지 반복*/  
	       height: 899px;
	       /*  cursor: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg'  width='40' height='48' viewport='0 0 100 100' style='fill:black;font-size:24px;'><text y='50%'>🥦</text></svg>") 16 0, auto; */
	}
	    
	.cursor{
		position:absolute;
	    top:0;
	    left: 0;
	    z-index: 9999;
	    transform:translate(80%, -0%);
	}
	    
	/*  그 유명한 요괴 대왕을 쓰러뜨린!! 21세기 샛별, 영능력자 부분 */
	#aa {
		margin-top:30px;
		font-family: 'DungGeunMo';
		font-size: 40px;
		margin-top: 3px;
	}
	#aa2 {
		padding-top: 10px;
		font-family: 'DungGeunMo';
		font-size: 30px;
	}
	/* 요괴 대왕 부분 */
	span {
		font-size: 75px;
	}	
	/* 당신은 몇번째 손님입니다 부분 */
	#bb{
		font-family: 'DungGeunMo';
		font-size: 30px;
		margin-top:-10px;
	}
	
	#name {
		margin-top: 5px;
		padding-top: 15px;
		padding-bottom: -5px;
	}
	/*  홈페이지에 오신걸 환영합니다!! 부분 */
    h3 {
    	font-size: 50px;
    	color:#00FFFF;
    	text-shadow:1px 1px 1px #000;
    	margin-top: 18px;
    	margin-bottom: 15px;
    }
    
    a{
    	text-decoration-line:none;
    	color:#ADFF2F;
    	text-shadow:1px 1px 1px #000;
    	vertical-align: top;
    }
    
    .enter img {
    	transition: all 0.2s linear;
    }
    
    .enter:hover img {
    	transform: scale(1.2);
    } 
    
    .star img {
    	 transition : transform 1s;
    }
    
    .star:hover img {
    	 transform:rotate(360deg);
    }
    
    .digit_bg {
		position: relative;
		padding-top: -50px;
	}
	
	.digit {
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate( -50%, -50% );
	    font-family: 'LAB디지털';
    	font-size: 35px;
    	font-weight: bold;
    	color: 	#00FF7F	;
    	margin-top: 9px;
	}
</style>
</head>
<body>
	<div class="cursor">
        <img src="cursor_img/cursor_pink.png" style="width: 120px;" alt="fllow_img">
    </div>
    
	<!-- ----------------------별 구현--------------------------------------- -->
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
	<!-- ----------------------영 등등 사무소 간판--------------------------------------- -->
	<div align="center">
		<div style="margin-top: -78px;">
			<div id="title" style="padding-top: 30px;">
				<span class="star"><img alt="사진" src="main_img/red_star.gif" style="width: 110px;height: 110px;margin-bottom: 30px;"></span>
				<span class="star"><img alt="사진" src="main_img/yellow_star.gif" style="width: 110px;height: 110px;margin-bottom: 30px;"></span>
				
				<img alt="사진" src="main_img/title_r.png" style="width: 700px; height: 170px; padding-top:20px;">
				
				<span class="star"><img alt="사진" src="main_img/mint_star.gif" style="width: 110px;height: 110px;margin-bottom: 30px;"></span>
				<span class="star"><img alt="사진" src="main_img/green_star.gif" style="width: 110px;height: 110px;margin-bottom: 30px;"></span>
			</div>
			
			<div id="aa">
		 		그 유명한 <span style="color:red; text-decoration: underline; font-size: ">요괴대왕</span>을 쓰러뜨린!!<br> 
			</div>
			<div id="aa2">
				21세기 샛별·영능력자<br>
			</div>
			
			<div id="name">
				<img alt="사진" src="main_img/name_r.png" style="width: 500px;"><span style="font-family: 'DungGeunMo'; font-size: 40px;"> 의</span>
			</div>
			
			<h3 style="font-family: 'YiSunShinRegular';">
			홈페이지에 오신 걸
			<div style="padding-top: 10px;">환영합니다!!</div>
			</h3>
			
			<div id="enter">
				<img alt="사진" src="main_img/left.gif" style="width: 160px; height: 90px; margin-top:-5px; padding-right: 10px;">
				
				<span class="enter">
					<a href="submain.jsp" style="padding-left: 20px;">
						<img alt="사진" src="main_img/enter.png" style="width:230px;"/>
					</a>
				</span>
				
				<img alt="사진" src="main_img/right.gif" style="width: 160px; height: 90px; padding-left: 12px;">
			</div>
			
			<!-- 들어온 숫자 세는 코드 -->
			<br><div id="bb">당신은 <span class="digit_bg"><img src="main_img/count.png" alt="사진" style="width: 310px; height: 60px; 		vertical-align: bottom;"/><span class="digit"><%=counter.countPrint() %></span></span> 번째 손님입니다.</div>
		</div>
	</div>
</body>
</html>