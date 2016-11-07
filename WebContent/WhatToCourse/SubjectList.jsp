<%@page import="org.apache.poi.xssf.usermodel.XSSFRow"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "subject.data.*"%>
<%@page import = "subject.database.*"%>
<%@page import = "subject.process.*" %>

<jsp:useBean id="AdmYear" class="subject.data.AdmissionYear" scope="page"></jsp:useBean>
<jsp:useBean id="SbjCode" class="subject.data.SubjectCode" scope="page"></jsp:useBean>
<jsp:useBean id="DAO" class="subject.database.DAO" scope="page"></jsp:useBean>
<jsp:useBean id="StrProc" class="subject.process.StringProcessor" scope="page"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap 사용 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- css 사용 -->
<link rel="stylesheet" href="../css/StyleList.css">
<title>컴퓨터 공학과 졸업 학점 조회</title>
</head>
<body>
<%
//한글 인코딩(한글 깨짐 방지)
request.setCharacterEncoding("UTF-8");

String content = request.getParameter("Content").trim();
ArrayList<SubjectCode> sbjcodelist = StrProc.extractSubjectCode(AdmYear, content);

System.out.println(AdmYear.getAdmissionYear());
for(int i=0; i<sbjcodelist.size(); i++) {
	System.out.println(sbjcodelist.get(i).getSubjectCode());
}

FileInputStream xlsxFile = new FileInputStream("C:/SubjectCodeData.xlsx");
XSSFWorkbook workbook = new XSSFWorkbook(xlsxFile);
XSSFSheet sheet = workbook.getSheetAt(0);

int xlsxRows = sheet.getPhysicalNumberOfRows();

for(int rownum=1; rownum<xlsxRows; rownum++) {
	XSSFRow xlsxRow = sheet.getRow(rownum);
	System.out.println(xlsxRow.getCell(1).toString());
	System.out.println(xlsxRow.getCell(2).toString());
}
xlsxFile.close();

%>
<!-- 상단 부분 -->
<div id="Header">
	<h1>What to course?</h1>
</div>

<!-- 중단 뒤로가기 버튼 부분 -->
<div id="Navigation">
	<table>
		<tr>
			<td align="left">
				<button id="help_button" class="btn btn-info" onclick="location='Main.jsp'">← Back</button>
			</td>
		</tr>
	</table>
</div>

<!-- 중단 테이블 부분 -->
<div id="Section">
	<table class="table">
		<tr class="table_head">
			<td rowspan="2"></td>
			<td colspan="2" align="center"><b>1학년</b></td>
			<td colspan="2" align="center"><b>2학년</b></td>
			<td colspan="2" align="center"><b>3학년</b></td>
			<td colspan="2" align="center"><b>4학년</b></td>
		</tr>
		<tr class="active">
			<td align="center"><b>1학기</b></td>
			<td align="center"><b>2학기</b></td>
			<td align="center"><b>1학기</b></td>
			<td align="center"><b>2학기</b></td>
			<td align="center"><b>1학기</b></td>
			<td align="center"><b>2학기</b></td>
			<td align="center"><b>1학기</b></td>
			<td align="center"><b>2학기</b></td>
		</tr>
		<tr class="danger">
			<td align="center"><b>전공</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="info">
			<td align="center"><b>MSG</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="warning">
			<td align="center"><b>종교필수</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="success">
			<td align="center"><b>공통</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="success">
			<td align="center"><b>핵심</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="success">
			<td align="center"><b>자유선택</b></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</div>
</body>
</html>