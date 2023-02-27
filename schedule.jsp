<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
 
<jsp:useBean id="c" class="jspbook.mob.Reservation" scope="page"/>
<jsp:setProperty name="c" property="*"/>


<%!
	public String parseDay(int cnt, int k, String day) {
		if (cnt == 0 && day.equals("일"))
			return "<font color=#ff0000>" + day + "</font>";
		else {
			if (cnt % 7 == (k))
				return "<font color=#ff0000>" + day + "</font>";
			
			else
				return day;
		}
}%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>예약 현황</title>

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

<style>
.slash {
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg"><line x1="0" y1="100%" x2="100%" y2="0" stroke="red" stroke-width="3"/></svg>');
}

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
	transform:translate(-80%, 70%);
}
		
table {
	width: 800px;
	height: 200px;
	border-collapse: collapse;
	font-size: 30px;
	padding-top: 50px;
	background-color: white;
	opacity: 0.8;
}

td {
	text-align: center;
	border-collapse: collapse;
	border: solid 1px gray;
	height: 80px;
	width: 120px;
	border-color: 	#00FF00;
}

tr {
	border-collapse: collapse;
	border: solid 1px gray;
}

.reservation {
	margin-left: -15px;
}

.today {
	background-color: #C0C0C0;	
}

.schedule_img {
	position: relative;
	margin-left: 2%;
	margin-top: 2%;
}

.bg {
	/* position: absolute; */
    top: 50%;
    transform: translate( -50%, -50% );
    margin-left: 34%;
    margin-top: -440px;
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

.reservation_img {
	position: relative;
	margin-left: 64%;
	margin-top: -52%;
}

.request {
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate( -50%, -50% );
    margin-left: -17%;
    margin-top: -4%;
}

.rq_w {
	padding-top: 50px;
	margin-left: 30px;
	font-family: 'HBIOS-SYS';
	font-size: 30px;
}

.submit img {
	transition: all 0.2s linear;
}

.submit:hover img {
	transform: scale(1.2);
}

.caution-text {
	padding: 15px 20px;
    background-color: #444444;
    color: #ffffff;
    display: none;
    font-size: 17px;
    width: 340px;
    font-family: 'HBIOS-SYS';
}

.caution:hover + .caution-text {
    display: block;
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
    
    <div id="title" align="center">
		<img src="schedule_img/current_situation.png" alt="사진"/><br>
	</div>
    
    <div class="schedule_img">
    	<img src="schedule_img/schedule.png" alt="스케쥴 창" style="width: 950px;"/>
    	
		<div class="bg">
			<%
			Calendar today = Calendar.getInstance();
	
			int year;
			String sYear=request.getParameter("YEAR"); 
			if(sYear==null)
				year = c.getYear(); 
			else
				year = Integer.parseInt(sYear);
			
			int month;
			String sMonth;
			if(c.getU_month() != null)
				sMonth = c.getU_month();
			else {
				sMonth=request.getParameter("MONTH");  
			}
			
			if(sMonth==null)
				month = c.getMonth();  
			else {
				month = Integer.parseInt(sMonth);
				if(month < 1 || month > 12)
					month = c.getMonth();
			}
			
			int date;
			String sDate = request.getParameter("DATE"); 
			if(sDate==null) 
				date = c.getDate();  
			else
				date = Integer.parseInt(sDate);
		
			Calendar cal = Calendar.getInstance();
			cal.set(year, month - 1, 1);
		
			int start = cal.getMinimum(Calendar.DATE);
			int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
			int startDate = cal.get(Calendar.DAY_OF_WEEK);
			
			out.print("<div style='font-size:25px; padding-top: 20px; padding-bottom:20px;'>");
			
			out.print("<span style='font-size:30px; padding-top: 50px; padding-left:70px; font-weight: bold;'>"+year+"年</span>");
			
			
			/* 사용자가 예약하기 버튼에 월과 일을 작성하면 그에 대한 정보를 저장 */
	 		String u_month = c.getU_month();
			String u_date = c.getU_date();
			String u_name = c.getU_name();
			int user_month;
			int user_date; 
			int flag = 0;
			
			if(u_month==null){
				user_month=0; 
			} else{
			    user_month=Integer.parseInt(u_month);
			    if(user_month < 1 || user_month > 12) {
			    	user_month = month;
			    	flag = 1;
			    }
			}
			
			if(u_date==null){
				user_date=0; 
			}else{
				user_date=Integer.parseInt(u_date); 
				if(user_date < 1 || user_date > end || flag == 1){
					user_date = 0;
					flag=0;
				}
			}
			
			if(u_name == null){
				u_name = "알수없음";
			}
			
	 		/* out.print(user_month+"월"+user_date+"일");  */
	 		
			
			if(month==1){ // 만약, 1월이면 1월보다 밑으로 못 내려가도록 추가한 코드
				out.print("<a href='schedule.jsp?YEAR="+year);
				out.print("&MONTH="+1+"&U_MONTH="+u_month+"&U_DATE="+u_date+"\' style='padding-left:230px;'>"+"</a>");
			}
			else{
				out.print("<a href='schedule.jsp?YEAR="+year);
				out.print("&MONTH="+(month-1)+"&U_MONTH="+u_month+"&U_DATE="+u_date+"\' style='padding-left:190px;'>"+" ◀ </a>");
			}
			
			out.print("<span style='font-size: 50px; color: red; font-weight: bold;'>"+month+"月</span>");
			
			if(month==12){ // 만약, 12월이면 12월보다 위로 못 내려가도록 추가한 코드
				out.print("<a href='schedule.jsp?YEAR="+year);
				out.print("&MONTH="+12+"&U_MONTH="+u_month+"&U_DATE="+u_date+"\' style='padding-right:190px;'>"+"</a>");
			}
			else{
				out.print("<a href='schedule.jsp?YEAR="+year);
				out.print("&MONTH="+(month+1)+"&U_MONTH="+u_month+"&U_DATE="+u_date+"\' style='padding-right:190px;'>"+" ▶ </a>");	
			}
			
			
			/* out.print(c.getYear() + "-" + c.getMonth() + "-"+c.getDate()); */
			out.print("</div>");
			
			//out.println(startDate);
		
			int num=0; // 달별로 필요한 열의 개수가 다름
			int cnt = 0;
			int p_date = start;
			
			int k=0;
			if(startDate==1)
				k=0;
			else if(startDate==2)
				k=6;
			else if(startDate==3)
				k=5;
			else if(startDate==4)
				k=4;
			else if(startDate==5)
				k=3;
			else if(startDate==6)
				k=2;
			else if(startDate==7)
				k=1;
			
			
			%>
			<div style="margin-left: 5%; margin-top: 2%;">
				<%
				out.println("<table>");
				for (int i = 0; i < 7; i++) {
					out.println("<tr>");
			
					for (int j = 0; j < 7; j++) {
						if (i == 0) {
							out.println("<td>");
							if (j == 0){
								out.println(parseDay(cnt, 0, "일"));
							}
							if (j == 1)
								out.println("월");
							if (j == 2)
								out.println("화");
							if (j == 3)
								out.println("수");
							if (j == 4)
								out.println("목");
							if (j == 5)
								out.println("금");
							if (j == 6)
								out.println("토");
							
							out.println("</td>");
						} 
						else if (p_date <= end) {
							// 만약 1일이라면
							if (p_date == 1) {
								for (int s = 1; s <= startDate - 1; s++){
									out.println("<td>&nbsp</td>");
									j++;
								}
								
								// 오늘일로부터 지난 요일이면 슬래쉬
								if((month <= c.getMonth() && p_date < c.getDate()) || month < c.getMonth()){
									out.println("<td class='slash'>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");
								}
								else{
									if(month == c.getMonth() && p_date == c.getDate())
										out.println("<td class='today'>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");
									else if(month == user_month && p_date == user_date && cnt % 7 != (k)){
										out.println("<td><span class='name'><img src='schedule_img/complete.gif' alt='사진' style='width: 110px; margin-left: -17px;'/></span></td>");
									}
									else
										out.println("<td>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");
								}
							} 
							
							// 1일을 제외한 요일
							else{
								// 오늘일로부터 지난 요일이면 슬래쉬
								if((month <= c.getMonth() && p_date < c.getDate()) || month < c.getMonth()){
									//예약 정보 배경 추가해보기
									if((month + p_date) % 12 == 0 && cnt % 7 != (k)){
										out.println("<td class='slash'><img src='schedule_img/succes.png' alt='사진' style='width: 110px; margin-left: -17px;'/></td>");
									}
									else{out.println("<td class='slash'>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");}
								} 
								else{
									//예약 정보 배경 추가해보기
									if((month + p_date) % 12 == 0 && cnt % 7 != (k)){
										if(month == c.getMonth() && p_date == c.getDate())
											out.println("<td class='today'><img src='schedule_img/finish.png' alt='사진' style='width: 110px; margin-left: -17px;'/></td>");
										else
											out.println("<td><img src='schedule_img/finish.png' alt='사진' style='width: 110px; margin-left: -17px;'/></td>");
										/* out.println("<span class='reservation'>"+parseDay(cnt, k, String.valueOf(p_date))+"</span>");  */
									}
									
									/* 예약하기 누르면 사용자가 정의한 월과 일에 예약되게 함 */
									else if(month == user_month && p_date == user_date && cnt % 7 != (k)){
										if(month == c.getMonth() && p_date == c.getDate())
											out.println("<td class='today'><span class='name'><img src='schedule_img/complete.gif' alt='사진' style='width: 110px; margin-left: -17px;'/></span></td>");
										else
											out.println("<td><span class='name'><img src='schedule_img/complete.gif' alt='사진' style='width: 110px; margin-left: -17px;'/></span></td>");
									}
									
									else{
										if(month == c.getMonth() && p_date == c.getDate())
											out.println("<td class='today'>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");
										else
											out.println("<td>"+parseDay(cnt, k, String.valueOf(p_date))+"</td>");
										}
								}
							}
							if(p_date == end)
								num=1;
							p_date++;
						}
						else{
							out.println("<td></td>");
						}
						cnt++;
					}
					
					if(num==1){
						num=0;
						break;
					}
					
					out.println("</tr>");
				}
				out.println("</table>");
				%>
				<img src="schedule_img/sunday.png" alt="사진"/>
			</div>
		</div>
	</div>
	
	
	<div class="reservation_img">
		<img src="schedule_img/request.png" alt="사진"/></span><br>  	
		
		<div class="request">
			<form method=post action=schedule.jsp>
				<div class = rq_w>
					<br>
					예약자명 : <input type="text" name="u_name" style="width: 120px; height: 30px; font-size: 30px; font-family: 'HBIOS-SYS';" maxlength='3' /><br><br>
					예약 날짜 : 
					<input type="number" name="u_month" style="width: 50px; height: 30px; font-size: 30px; font-family: 'HBIOS-SYS';"/>월
					<input type="number" name="u_date" style="width: 50px; height: 30px; font-size: 30px; font-family: 'HBIOS-SYS';"/>일<br><br><br>
					
					<span class="submit">
					    <button type="submit" style="width:100px; height: 20px; margin-left: 200px;">
					       <span class="caution"><img src="schedule_img/reservation_bt.png" alt="사진" style="margin-left: -80px; margin-top: -30px;"/></span>
					       <span class="caution-text">*경고*<br>지난 요일에는 예약이 불가합니다.<br>이미 예약된 날짜에는 예약이 불가합니다.<br>매주 일요일에는 예약이 불가합니다.</span>
					    </button>
				     </span>
				</div>
			</form>
		</div>
	</div>
	
	<div style="margin-left: 77%; margin-top: -0.5%;">
		<img src="schedule_img/up.gif" alt="사진"/>
	</div>
	
	<div style="margin-left: 58%; margin-top: 0%;">
		<img src="schedule_img/caution.png" alt="사진"/>
	</div>
	
	<div align="center" style="margin-top: 8%;"><p style="padding-top: 14%; margin-left: 2%;"><a class="back" href="submain.jsp"> B A C K </a></div>
</body>
</html>