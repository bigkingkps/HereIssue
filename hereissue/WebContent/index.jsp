<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		#index_full{
			width: 100%;
			height: 100%;
			
		}
	/* 멍청이 */
		#wordcloud{
			width: 1500px;
			height: 700px;
			border: 1px solid black;
			background: lightblue;
			margin: auto;
			position: relative;
		}
		.word_box{
			position: absolute;
			text-align: center;
			text-shadow: 1px 1px 1px gray;
			
			
		}
		
		#rank1{
			width: 600px;
			height: 100px;
			
			top: 250px;
			left: 460px;
			line-height: 100px;
			font-size: 50px;
		}
		
		#rank2{
			width: 420px;
			height: 50px;
			top:100px;
			left: 300px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank3{
			width: 420px;
			height: 50px;
			top:400px;
			left: 30px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank4{
			width: 420px;
			height: 50px;
			top:600px;
			left: 400px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank5{
			width:420px;
			height: 50px;
			top:20px;
			left: 550px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank6{
			width: 420px;
			height: 50px;
			top:20px;
			left: 100px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank7{
			width: 420px;
			height: 50px;
			top:370px;
			left: 450px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank8{
			width: 420px;
			height: 50px;
			top:440px;
			left: 500px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank9{
			width: 420px;
			height: 50px;
			top:180px;
			left: 500px;
			line-height: 50px;
			font-size: 40px;
		}
		#rank10{
			width: 420px;
			height: 50px;
			top:370px;
			left: 900px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank11{
			width: 420px;
			height: 50px;
			top:80px;
			left: 800px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank12{
			width: 420px;
			height: 50px;
			top:140px;
			left: 980px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank13{
			width: 420px;
			height: 50px;
			top:500px;
			left: 1050px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank14{
			width: 420px;
			height: 50px;
			top:510px;
			left: 180px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank15{
			width: 420px;
			height: 50px;
			top:190px;
			left: 80px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank16{
			width: 420px;
			height: 50px;
			top:250px;
			left: 20px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank17{
			width: 420px;
			height: 50px;
			top:320px;
			left: 30px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank18{
			width: 420px;
			height: 50px;
			top:430px;
			left: 940px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank19{
			width: 420px;
			height: 50px;
			top:600px;
			left: 900px;
			line-height: 50px;
			font-size: 35px;
		}
		#rank20{
			width: 420px;
			height: 50px;
			top:500px;
			left: 600px;
			line-height: 50px;
			font-size: 35px;
		}
		
		.top5{
			
			
			 
			color: white;
			
			animation-name:top5; /* 설정할 애니메이션 이름 */
			animation-duration:0.7s; /* 1회 애니메이션 동작시간 */ 
			animation-iteration-count:infinite; /* 반복횟수: 무한 반복 */
		}
		@keyframes top5{
			0%{color:#FF0040;} /* 시작부분 :0%=from*/
			30%{color:#FF0040;}
			100%{#FF0040:;}/*  마지막부분 100%=to */
		}
		
		.top10{
			
			
			 
			color: white;
			
			animation-name:top10; /* 설정할 애니메이션 이름 */
			animation-duration:0.5s; /* 1회 애니메이션 동작시간 */ 
			animation-iteration-count:infinite; /* 반복횟수: 무한 반복 */
		}
		@keyframes top10{
			0%{color:#46FFFF;} /* 시작부분 :0%=from*/
			30%{color:#32A4FF;}
			100%{#0A82FF;}/*  마지막부분 100%=to */
		}
		
		.top_odd{
			
			
			 
			color: white;
			
			animation-name:top_odd; /* 설정할 애니메이션 이름 */
			animation-duration:0.4s; /* 1회 애니메이션 동작시간 */ 
			animation-iteration-count:infinite; /* 반복횟수: 무한 반복 */
		}
		@keyframes top_odd{
			0%{color:#66F8F0;} /* 시작부분 :0%=from*/
			30%{color:#66F8F0;}
			100%{#73E1E1;}/*  마지막부분 100%=to */
		}
		
		.top_even{
			
			
			 
			color: white;
			
			animation-name:top_even; /* 설정할 애니메이션 이름 */
			animation-duration:0.5s; /* 1회 애니메이션 동작시간 */ 
			animation-iteration-count:infinite; /* 반복횟수: 무한 반복 */
		}
		@keyframes top_even{
			0%{color:#FF3232;} /* 시작부분 :0%=from*/
			30%{color:#FF5050;}
			100%{color:#FF8C8C;}/*  마지막부분 100%=to */
		}
		
		
		
		
		
		
	</style>


</head>
	



<body>

<div id=index_full>

<div id=wordcloud>

	<div id=rank1 class="word_box top5">${list.get(0)}</div>
	<div id=rank2 class="word_box top5">${list.get(1)}</div>
	<div id=rank3 class="word_box top5">${list.get(2)}</div>
	<div id=rank4 class="word_box top5">${list.get(3)}</div>
	<div id=rank5 class="word_box top5">${list.get(4)}</div>
	<div id=rank6 class="word_box top10">${list.get(5)}</div>
	<div id=rank7 class="word_box top10">${list.get(6)}</div>
	<div id=rank8 class="word_box top10">${list.get(7)}</div>
	<div id=rank9 class="word_box top10">${list.get(8)}</div>
	<div id=rank10 class="word_box top10">${list.get(9)}</div>
	<div id=rank11 class="word_box top_odd">${list.get(10)}</div>
	<div id=rank12 class="word_box top_even">${list.get(11)}</div>
	<div id=rank13 class="word_box top_odd">${list.get(12)}</div>
	<div id=rank14 class="word_box top_even">${list.get(13)}</div>
	<div id=rank15 class="word_box top_odd">${list.get(14)}</div>
	<div id=rank16 class="word_box top_even">${list.get(15)}</div>
	<div id=rank17 class="word_box top_odd">${list.get(16)}</div>
	<div id=rank18 class="word_box top_even">${list.get(17)}</div>
	<div id=rank19 class="word_box top_odd">${list.get(18)}</div>
	<div id=rank20 class="word_box top_even">${list.get(19)}</div> 
	
</div>

</div>



</body>
</html>