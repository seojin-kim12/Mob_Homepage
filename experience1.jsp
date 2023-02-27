<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>영 제거: 요괴대왕</title>

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
	body {
	    background-image: url('../Mob_homepage/experience_img/back.png');  /*이미지 넣기*/ 
	    background-size: 88%;
	}

	.cursor{
		position:absolute;
	    top:0;
	    left: 0;
	    z-index: 9999;
	    transform:translate(80%, -0%);
	}	

	@font-face {
	    font-family: 'SBAggroB';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	@font-face {
	     font-family: 'DungGeunMo';
	     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
	     font-weight: normal;
	     font-style: normal;
	}
	
	.name {
		padding-top: 2%;
		font-family: 'SBAggroB';
		color: #ba2f3c;
		font-size: 100px;
		text-shadow:5px 5px 5px #000;
	}
	
	.intro {
		padding-top: 1.5%;
		font-family: 'DungGeunMo';
		font-size: 30px;
	}

	.star img {
    	 transition : transform 1s;
    }
    
    .star:hover img {
    	 transform:rotate(360deg);
    }
    
    .king {
    	overflow: hidden;
    }

    .king img {
    	transition: all 0.2s linear;
    }
    .king:hover img {
    	transform: scale(1.2);
    }
    
    .right img {
    	transition: all 0.2s linear;
    }
    
    .right:hover img {
    	transform: scale(1.2);
    } 

</style>
</head>
<body>
	<audio autoplay>
		<source src="audio/kira.mp3" type="audio/mp3">
	</audio>
	
	<div class="cursor">
        <img src="cursor_img/cursor_blue.png" style="width: 120px;" alt="fllow_img">
    </div>

	<div style="margin-left: 4.5%;">
		<img alt="사진" src="experience_img/blue_star_XS.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_M.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_XL.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_M.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_L.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_L.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_S.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_XS.gif" style="margin-bottom: -860px;">
		<img alt="사진" src="experience_img/blue_star_S.gif" style="margin-bottom: -860px;"> 
		<img alt="사진" src="experience_img/blue_star_XL.gif" style="margin-bottom: -860px;"> 
	</div>
		
	<div style="margin-top: -80px;">
		<span class="star"><img src="experience_img/red_star.gif" alt="사진" style="width: 90px; margin-top: 2.5%; margin-left: 12%;"/><br></span>
		<span class="star"><img src="experience_img/mint_star.gif" alt="사진" style="width: 80px; margin-top: 3%; margin-left: 70%;"/><br></span>
		<span class="star"><img src="experience_img/yellow_star.gif" alt="사진" style="width: 70px; margin-left: 25%;"/></span>
		<span class="star"><img src="experience_img/green_star.gif" alt="사진" style="width: 70px; margin-top: 3%; margin-left: 82%;"/><br></span>
	
		<span class="right">
			<a href="experience2.jsp"><img src="experience_img/right.png" alt="사진" style="width: 70px; margin-top: -2.8%; margin-left: 94%;"/></a><br>
		</span>
		
		<span class="star"><img src="experience_img/mint_star.gif" alt="사진" style="width: 90px; margin-top: -5%; margin-left: 5%;"/><br></span>
		<span class="star"><img src="experience_img/green_star.gif" alt="사진" style="width: 70px; margin-top: 4%; margin-left: 15%;"/></span>
		<span class="star"><img src="experience_img/red_star.gif" alt="사진" style="width: 90px; margin-top: 7.8%; margin-left: 55%;"/></span>
		
		<div class="picture" align="center" style="margin-top: -720px;">
			<div class="king" style="height: 455.64px; width: 400px;"><img src="experience_img/king.png" alt="사진" style="width: 400px;"/></div><br>
			<div class="name">요괴대왕</div>
			<div class="intro">
			흉악한 요괴 집단 ⌈백귀⌋의 우두머리<br><br>
			붉은 눈과 날카로운 이빨이 특징이다
			</div>
		</div>
	</div>
</body>
</html>