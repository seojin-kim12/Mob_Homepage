<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>의뢰서 작성</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css">

<style>
@import url('https://cdn.jsdelivr.net/gh/quiple/hbios-sys@latest/hbios-sys.css');

body {
	background-image: url('../Mob_homepage/request_img/submain_bg.png');  /*이미지 넣기*/ 
	background-size: 80%;
}

.cursor{
	position:absolute;
	top:0;
	left: 0;
	z-index: 9999;
	transform:translate(80%, -0%);
}

#title {
	padding-left: 40px;
	padding-top: 3%;
	padding-bottom: 60px;
	color: 	#C71585;
	font-family: 'HBIOS-SYS';
	font-size: 34px;
}

.container {
  position: relative;
  text-align: center;
}

.user-title {
  position: absolute;
  top: 7%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-size: 100px;
}

.user-text {
  font-family: 'HBIOS-SYS';
  position: absolute;
  top: 13%;
  right: 47%;
  font-size: 35px;
}

.select {
  font-family: 'HBIOS-SYS';
  position: absolute;
  top: 28.5%;
  left: 57%;
  transform: translate(-50%, -50%);
  font-size: 40px;
}

.back{
   	font-family: 'HBIOS-SYS';
    font-size: 60px;
    text-decoration-line:none;
    color: white;
    text-shadow:3px 3px 3px #000;
    vertical-align: top;
    padding-bottom: 10%;
}
	
.submit img {
	transition: all 0.2s linear;
}

.submit:hover img {
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
	<audio autoplay>
		<source src="audio/kira.mp3" type="audio/mp3">
	</audio>
	
	<div class="cursor">
        <img src="cursor_img/cursor_pink.png" style="width: 120px;" alt="fllow_img">
    </div>
    
    <div id="title" align="center">
		<img src="request_img/title.png" alt="사진" style="width: 1100px;"/><br>
		<br>기타사항은 이메일로 문의해주세요
	</div>
		
	<form method=post action=request_check.jsp>
		<div class="margin-top: -3%;">
			<!-- 의뢰서 내용 -->
			<div class="container">
			
				<div align="center" style="padding-left:3%;">
					<img src="request_img/paper.png" alt="사진"/>
				</div>
				
				<div class="user-title">
					<img src="request_img/request_title.png" alt="사진" style="margin-top: -16%; margin-left: -5%"/>
				</div>
				
				<div class="user-text" style="width: 1000px;">
					<p style="padding-left: 40%; margin-top: 20px;">성&nbsp;&nbsp;&nbsp;&nbsp;함 : <input type=text size="12px;" name=name style="width:200px; height:30px; vertical-align: middle; font-family: 'HBIOS-SYS'; font-size: 20px;"> </p>
					<p style="padding-left: 40%; padding-top: 20px;">전화번호 : <input type=text size="12px;" name=tel style="width:200px; height:30px; vertical-align: middle; font-family: 'HBIOS-SYS'; font-size: 20px;"></p><br>&nbsp;
					<p style="padding-left: 21.5%; margin-top: -50px; margin-left: -130px; width: 100%;">의뢰 코스 : </p>
		             
					<div class="select" style="padding-left:53%; width: 100%; margin-top: -15.5%;">
						<input type=checkbox name=course value="A코스···시범코스" style="width:23px; height:23px;" onclick="clickCheck1(this)"> A코스<span style="font-size: 25px;">···시범코스</span> <br>
			            <input type=checkbox name=course value="B코스···진심코스" style="width:23px; height:23px; margin-top: 2%;" onclick="clickCheck1(this)"> B코스<span style="font-size: 25px;">···진심코스</span> <br>
			            <input type=checkbox name=course value="C코스···전력코스" style="width:23px; height:23px; margin-top: 2%;" onclick="clickCheck1(this)"> C코스<span style="font-size: 25px;">···전력코스 </span>
			        </div> 
			        <br>&nbsp;
			        
		        	<p style="padding-left: 34.5%; padding-top: 2%; width: 100%;">의뢰 내용 : 
		        		<textarea style="height: 230px; width: 500px; vertical-align: top; font-family: 'HBIOS-SYS'; font-size: 20px;" maxlength='150' name=memo1></textarea>
		        	</p>
		        	<p style="padding-left: 34.5%; margin-top: 10%; width: 100%;">문의 내용 : 
		        		<textarea style="height: 230px; width: 500px; vertical-align: top; font-family: 'HBIOS-SYS'; font-size: 20px;" maxlength='150' name=memo2></textarea>
		        	</p>
		        	
		        	<div style="padding-top: 2%;">
			        	<p style="padding-left: 42%; padding-bottom: -100px; font-size: 32px; width: 100%;"><span style=" color: #C71585;">해당 의뢰의 비밀 유지에 동의하시겠습니까?</span><br>&nbsp;<br>&nbsp;
			        	<input type=checkbox name=agree value=0 style="margin-left: 0%; width:25px; height:25px; padding-left: 40%;" onclick="clickCheck2(this)"> 동의합니다
				        <input type=checkbox type=reset name=agree value=1 style="margin-left: 17%; width:25px; height:25px;" onClick="alert('의뢰가 취소될 수 있습니다.  정말 동의하지 않습니까?'); clickCheck2(this);"> 동의하지 않습니다
				        
				        <span class="submit">
					        <button type="submit" style="width:300px; height:60px; font-size: 40px; margin-top: 24%; margin-right:30%;">
					        	<img src="request_img/submit_button.png" alt="사진" style="width: 350px; margin-left: -30px; margin-top: -22px;"/>
					        </button>
				        </span>
				        
				        <span class="reset">
							<button type="reset" style="width:200px; height:60px; font-size: 40px; margin-top: 24%; vertical-align: top;" onClick="javascript:window.scrollTo(0,0)">
								<img src="request_img/reset_button.png" alt="사진" style="width: 300px; margin-left: -30px; margin-top: -6px;"/>
							</button>
						</span>			
			        </div> 
		        </div>       
		        <p style="padding-top: 14%; margin-left: 2%;"><a class="back" href="submain.jsp"> B A C K </a>&nbsp;
			</div>
		</div>
	</form>
	
	<div style="margin-top: -118%;">
		<img src="request_img/red_star.gif" alt="사진" style="width: 100px; margin-top: 6%; padding-left: 5%;"/><br>
		<img src="request_img/mint_star.gif" alt="사진" style="width: 120px; margin-top: -2%; padding-left: 85%;"/><br>
		<img src="request_img/green_star.gif" alt="사진" style="width: 80px; margin-top: -2%; padding-left: 6%;"/><br>
		<img src="request_img/yellow_star.gif" alt="사진" style="width: 130px; margin-top: 12%; padding-left: 3%;"/><br>
		<img src="request_img/red_star.gif" alt="사진" style="width: 100px; margin-top: 9%; padding-left: 88%;"/><br>
		<img src="request_img/mint_star.gif" alt="사진" style="width: 90px; margin-top: 8%; padding-left: 5%;"/><br>
		<img src="request_img/green_star.gif" alt="사진" style="width: 130px; margin-top: 9%; padding-left: 3%;"/><br>
		<img src="request_img/yellow_star.gif" alt="사진" style="width: 100px; margin-top: 9%; padding-left: 88%;"/><br>
		<img src="request_img/red_star.gif" alt="사진" style="width: 90px; margin-top: 4%; padding-left: 90%;"/><br>
		<img src="request_img/mint_star.gif" alt="사진" style="width: 100px; margin-top: -9%; padding-left: 9%;"/>
	</div>
</body>
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

<script>
	/* 체크 박스 하나만 선택 */
	function clickCheck1(target) {
	    document.querySelectorAll(`input[type=checkbox][name="course"]`)
	        .forEach(el => el.checked = false);
	
	    target.checked = true;
	}
	function clickCheck2(target) {
	    document.querySelectorAll(`input[type=checkbox][name="agree"]`)
	        .forEach(el => el.checked = false);
	
	    target.checked = true;
	}
</script>
</html>