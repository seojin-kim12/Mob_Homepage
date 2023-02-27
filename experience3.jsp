<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>영 제거: 끌고가는 여자</title>

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
		
	body {
	    background-image: url('../Mob_homepage/experience_img/woman_bg.png');  /*이미지 넣기*/ 
	    background-size: 100%;
	}

	.cursor{
		position:absolute;
	    top:0;
	    left: 0;
	    z-index: 9999;
	    transform:translate(80%, -0%);
	}
	
	.name {
		font-family: 'YiSunShinRegular';
		color: #ba2f3c;
		font-size: 100px;
		text-shadow:5px 5px 5px #000;
		font-weight: bold;
		margin-bottom: 3%;
	}
	
	.intro {
		padding-top: 5%;
		font-family: 'YiSunShinRegular';
		font-size: 30px;
		color: white;
		font-weight: bold;
		margin-top: 5%;
	}

    .back img {
    	transition: all 0.2s linear;
    }
    
    .back:hover img {
    	transform: scale(1.2);
    }
    
    .woman {
    	overflow: hidden;
    }

    .woman img {
    	transition: all 0.2s linear;
    }
    .woman:hover img {
    	transform: scale(1.2);
    }
    
    .explanation-text {
		padding: 15px 20px;
	    background-color: #444444;
	    color: #ffffff;
	    display: none;
	    font-size: 20px;
	    width: 400px;
	    text-align: center;
	    font-family: 'YiSunShinRegular';
	}
	
	.explanation:hover + .explanation-text {
	    display: block;
	}

</style>
</head>
<body>
	<span style="margin-left: 40%;">
		<audio autoplay>
			<source src="audio/scary.mp3" type="audio/mp3">
		</audio>
	</span>
	
	<div class="cursor">
        <img src="cursor_img/cursor_red.png" style="width: 120px;" alt="fllow_img">
    </div>
    
	<div style="margin-top: 520px;">
		<!-- <a href="expierence2.jsp"><img src="expierence_img/left.png" alt="사진" style="width: 70px; margin-top: -30%; margin-left: 2%;"/></a><br> -->
		
		<div class="picture" align="center" style="margin-top: -520px;">
			<div class="name">끌고가는 여자</div>
			<div class="woman" style="height: 455.64px; width: 400px;"><img src="experience_img/woman.gif" alt="사진" style="width: 400px;"/></div><br>
			<span class="intro">
				후카즈메초의 도시괴담 중 하나로<br><br>
				악력이 500kg이고 100m를 20초 안에 헤엄칠 수 있다
			</span>	
		</div>
	</div>
	
	<div class="back">
		<a href="submain.jsp"><img src="experience_img/back2.png" alt="사진" style="margin-top: -8%; margin-left: 80%;"/></a>
	</div>
	
</body>
</html>