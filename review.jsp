<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>후기</title>

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
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

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

a.back {
	font-family: 'HBIOS-SYS';
	font-size: 60px;
	text-decoration-line: none;
	color: white;
	text-shadow: 3px 3px 3px #000;
	vertical-align: top;
	padding-bottom: 10%;
}

a {
	text-decoration: none;
	color: white;
}

table, tr, td {
	font-family: 'DungGeunMo';
}

td.star {
	width: 200px;
	padding: 0px 0px 0px 10px;
}

td.id {
	width: 280px;
	color: white;
	font-size: 15px;
	vertical-align: bottom;
}

td.date {
	width: 280px;
	color: pink;
	text-align: right;
	vertical-align: bottom;
	font-size: 13px;
	padding: 0px 15px 0px 0px;
}

td.line {
	height: 10px;
}

p.question {
	color: white;
	font-size: 17px;
	font-weight: bold;
	padding: 0px 10px 0px 10px;
}

p.answer {
	color: white;
	font-size: 15px;
	padding: 0px 10px 0px 10px;
}

p.review {
	color: hotpink;
	font-size: 15px;
	padding: 0px 10px 0px 10px;
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
		<p>&nbsp;</p>
		<p>
			<img src="review_img/title.png">
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<table>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">캐스퍼_****sd</td>
				<td class="date">2021.12.20 06:33pm</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"저를 극도로 게으르게 만드는 유령이 있는 것 같아요. 제 잘못일리가 없어요,
						도와주세요!"</p>
					<p class="answer">이것은 심각한 문제로 보입니다. 저를 만나러 오신다면 이 레이겐이 당신을 확실하게
						도울 수 있겠으나, 이 문제는 고급 엑소시즘 기술이 필요할 수 있습니다!</p>
					<p class="review">-> 역시 모든 문제는 귀신 탓이였군요... 정말 확실하게 해결되었어요, 감사해요
						레이겐씨!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">빡쳐있음_**it</td>
				<td class="date">2022.09.20 04:02am</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"지금 비디오 게임을 할 때마다 계속 지고있어요, 이건 분명 TV가 귀신에게
						홀린거에요!!!"</p>
					<p class="answer">맞습니다, 아주 무시무시한 문제를 금방 발견해서 다행입니다! 저에게 바로
						연락해주시면 신속히 해결 가능합니다. 지금 바로 의뢰서 작성하러 가세요! 1분도 걸리지 않습니다.</p>
					<p class="review">-> 상담도 자세하고 일처리가 빨라서 좋았습니다!!! TV도 정신을 차려서
						좋네요!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">내 계란을 내버려 둬_****ck</td>
				<td class="date">2020.08.18 10:45pm</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"누군가에게 매우 크고 강한 손의 힘 때문에 더이상 작은 물건이나 계란을 잡을
						수 없도록 만드는 저주가 있나요?"</p>
					<p class="answer">죄송합니다만, 저희는 저주와 관련된 상담은 받지 않고 있습니다. 더 큰 계란을
						사보는 것은 고려해보셨나요?</p>
					<p class="review">-> 아니요, 그런 생각은 못해봤는데.. 한 번 해볼게요! 친절한 답변
						고맙습니다.</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">아담_****am</td>
				<td class="date">2021.10.31 03:09pm</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"내 은행 계좌는 사악한 돈 귀신에 홀려 있어, 도대체 있던 것들이 다 어디로
						가는 거야?!"</p>
					<p class="answer">이 문제는 많은 다수의 사람들이 시달리는 매우 신중하게 접근해야하는 문제입니다.
						까다롭기 때문에 마음의 준비를 하시고 방문해주시길 바랍니다. 저희 사무실은 언제나 열려있습니다!</p>
					<p class="review">-> 레이겐님은 돈 귀신을 쉽게 추방했다! 나에게 남은 건 내 생각을 괴롭히는
						0원 상당의 악마들뿐이야, 고마워 레이겐님!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">피콜로_*****lo</td>
				<td class="date">2022.04.03 01:26am</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"ㄷㅇㅗ와줏ㅅㅇ새요ㅓ!!!!!!!!!"</p>
					<p class="answer">나는 당신이 굉장히 좋은 아빠이거나 꽤 괜찮은 악기로써 괜찮을 것이라 확신합니다!</p>
					<p class="review">-> 감ㅁㅅ사합ㄴ디다!!!!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">상사병_******ck</td>
				<td class="date">2021.02.14 09:07am</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"당신의 기술과 전문 지식으로 2D와 3D 사이의 장벽을 뛰어넘는 법을
						알려주실 수 있나요? 그래야 저희 남편을 만날 수 있거든요."</p>
					<p class="answer">저의 영혼 사진 기술로 당신을 도울 수 있으리라 생각됩니다. 믿고 연락 주세요!</p>
					<p class="review">-> 레이겐씨 덕분에 마침내 만나고 말았어요... 전 이제 죽어도 여한이 없어요!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">안유미_******mi</td>
				<td class="date">2022.09.02 12:53am</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"효과가 있는지 모르겠어요.. 약 2주 전에 집에서 엑소시즘을 했는데도 밤에
						이상한 쿵쿵 소리가 들려요, 위험한 건가요?!"</p>
					<p class="answer">글만으로는 판단하기가 어렵네요, 이번주 내로 저희 사무실을 방문하신다면 문제가
						있는지 바로 방문하여 확인이 가능합니다!</p>
					<p class="review">-> 이렇게 쉽게 해결될 줄 몰랐어요, 정말 유능하신 분이네요. 다음에도 믿고
						맡길게요!</p>
					<p>&nbsp;</p></td>
			</tr>
			<tr>
				<td class="star"><img src="review_img/star.png" width="100%"></td>
				<td class="id">존너_****er</td>
				<td class="date">2021.11.20 11:22pm</td>
			</tr>
			<tr>
				<td colspan="3" class="text"><img src="review_img/line.png"
					width="100%"><br>
					<p class="question">"당신 동네에 이상한 일이 생기면, 누구한테 전화할 거에요??"</p>
					<p class="answer">아무한테도 전화할 필요 없습니다! 그런 상황을 위해 존재하는 것이 이
						웹사이트입니다!! 이 사이트를 활용한다면 어떤 일이든 금방 해결될 것입니다.</p>
					<p class="review">-> 허투루 말한 게 아니네요, 진짜 답변이 금방 와서 좋네요!</p>
					<p>&nbsp;</p></td>
			</tr>
		</table>
		<p>
			<a href="review.jsp"><img src="review_img/page.png" width="150px"></a>
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>
			<a class="back" href="submain.jsp">B A C K</a>
		</p>
	</div>
</body>
</html>