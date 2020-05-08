<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>안녕하세요. 이것은 쿠키 예제입니다</h3>
	<form action="cookieEx3.jsp" method="post">
		<input class="rbtn" type="radio" name="lang" value="korea" checked="checked"/>
		<label>한국어 페이지 보기</label>
		<input class="rbtn" type="radio" name="lang" value="English" />
		<label>영어 페이지 보기</label>
		<input type="submit" value="설정" />
	</form>
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script>
		$(function(){
			$(".rbtn").removeProp("checked");
			if(localStorage.lang == "korea"){
				$(".rbtn:first").prop("checked", "checked");
				$("h3").text("안녕하세요. 이것은 쿠키 예제입니다");
			}else{
				$(".rbtn:last").prop("checked", "checked");
				$("h3").text("Hello. This is Cookie Example.");
			}
			$(".rbtn").click(function(){
				$(".rbtn").removeProp("checked");
				$(this).prop("checked", "checked");
				localStorage.lang = $(this).val();
			});
		});
	</script>
</body>
</html>