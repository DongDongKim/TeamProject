<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap 사용 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- css 사용 -->
<link rel="stylesheet" href="../css/StyleMain.css">
<title>컴퓨터 공학과 졸업 학점 조회</title>
</head>
<body>
<!-- 상단 부분 -->
<div id="Header">
	<h1>What to course?</h1>
</div>

<!-- 중단 도움말 부분 -->
<div id="Navigation">
	<!-- 도움말 버튼 -->
	<table>
		<tr>
			<td align="left">
				<button id="help_button" class="btn btn-info" data-toggle="collapse" data-target="#help_img">How to use?</button>
			</td>
		</tr>
	</table>
	<!-- 사용법과 관련된 이미지 -->
	<table id="help_img" class="collapse">
		<tr>
			<td>
				<h2>이 프로그램은 명지대학교 공학대학에 다니는 재학생들의 수강신청을 도와주는 프로그램입니다.<br/><br/> 2016년부터 모든 공대에서 졸업을 위해  공학인증을 강제로 실시함에 따라 커키큘럼이 복잡해졌습니다.<br/><br/> 이 프로그램을 이용하시면 편리하게 수강해야하는 과목들을 관리할 수 있습니다. </h2>
			</td>
		</tr>
		<tr>
			<td>
				<span class="badge">1</span> 명지대 myIweb에 로그인을 합니다.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../images/login.PNG" class="img-rounded" width=700em height=500em>
			</td>
		</tr>
		<tr>
			<td>
				<span class="badge">2</span> 메뉴에서 '수강신청/성적조회/를 클릭합니다.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../images/search1.PNG" class="img-rounded" width=700em height=500em>
			</td>
		</tr>
		<tr>
			<td>
				<span class="badge">3</span> 서브 메뉴에서 '성적조회'를 클릭합니다.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../images/search2.PNG" class="img-rounded" width=700em height=500em>
			</td>
		</tr>	
		<tr>
			<td>
				<span class="badge">4</span> 수강하신 과목들을 드래그하여 복사합니다.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../images/drag.PNG" class="img-rounded" width=700em height=500em>
			</td>
		</tr>
		<tr>
			<td>
				<span class="badge">5</span> 복사한 내용을 홈페이지 입력란에 붙여넣어 주세요.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../images/paste.PNG" class="img-rounded" width=700em height=500em>
			</td>
		</tr>
	</table>
</div>

<!-- 중단 컨텐트 부분 -->
<div id="Section">
	<form name="MainContent" method="post" action="SubjectList.jsp">
		<table>
			<!-- 컨텐트 -->
			<tr>
				<td>
					<textarea rows="30" name="Content"></textarea>
				</td>
			</tr>
			<!-- 버튼 -->
			<tr>
				<td align="right">
					<button type="submit" class="btn btn-primary">Check</button>
					<button type="reset" class="btn btn-success">Refresh</button>
				</td>
			</tr>
		</table>	
	</form>
</div>
</body>
</html>