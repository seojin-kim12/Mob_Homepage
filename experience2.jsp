<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>영 제거: 악령총장</title>

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
	
	.name {
		padding-top: 2%;
		font-family: 'SBAggroB';
		color: #ba2f3c;
		font-size: 100px;
		text-shadow:5px 5px 5px #000;
		margin-top: -1%;
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
    
    .right img {
    	transition: all 0.2s linear;
    }
    
    .right:hover img {
    	transform: scale(1.2);
    }

    .left img {
    	transition: all 0.2s linear;
    }
    
    .left:hover img {
    	transform: scale(1.2);
    }
    
    .qubo img {
    	transition: all 0.2s linear;
    }
    
    .qubo:hover img {
    	transform: scale(1.2);
    }
    
    .caution-text {
		padding: 15px 20px;
	    background-color: #444444;
	    color: #ffffff;
	    display: none;
	    font-size: 20px;
	    width: 260px;
	    font-family: 'HBIOS-SYS';
	    margin-top: -20%;
	    margin-left: 80%;
	    text-align: center;
	}
	
	.caution:hover + .caution-text {
	    display: block;
	}
	
	.leader {
    	overflow: hidden;
    }

    .leader img {
    	transition: all 0.2s linear;
    }
    .leader:hover img {
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
			<a href="experience1.jsp"><img src="experience_img/left.png" alt="사진" style="width: 70px; margin-top: -4%; margin-left: 2%;"/></a>
		</span>
		
		<span class="left">
			<a href="experience3.jsp"><img src="experience_img/right.png" alt="사진" style="width: 70px; margin-top: -8%; margin-left: 94%;"/></a><br>
		</span>
		
		<span class="star"><img src="experience_img/mint_star.gif" alt="사진" style="width: 70px; margin-top: 9%; margin-left: 15%;"/></span>
			
		<div class="picture" align="center" style="margin-top: -700px;">
			<div class="leader" style="height: 455.64px; width: 400px;"><img src="experience_img/leader.png" alt="사진" style="width: 400px;"/></div><br>
			<div class="name">악령총장</div>
			<div class="intro">
			터널 안을 단체로 바이크 타고 질주하던 중<br><br>
			맨 앞의 녀석이 바나나 껍질을 밟는 바람에<br><br>
			전원 사망한 폭주족의 두목이다
			</div>
		</div>
		
		<span class="caution"><span class="qubo"><img src="experience_img/guide.png" alt="사진" style=" margin-top: -9%; margin-left: 85%;"/></span></span>
		<span class="caution-text">*경고*<br>다음은 좀 무서울지도?</span>
	</div>
</body>
</html>