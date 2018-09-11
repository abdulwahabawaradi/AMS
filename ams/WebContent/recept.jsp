<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<style>
.qp {
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;
	width: 700px;
}
</style>

<script>
	function myFunction() {
		window.print();
	}
</script>
</head>
<body>

	<div class="qp" style="border-style: ridge;">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3>APARTMENT MANAGEMENT SYSTEM</h3>
			</div>
			<div class="col-md-4 text-left">
				<h5>Exam : ${examBean.examType}</h5>
			</div>
			<div class="col-md-4 text-center">
				<h5>Date : ${examBean.examDate}</h5>
			</div>
			<div class="col-md-4 text-right">
				<h5>Duration : ${examBean.duration}</h5>
			</div>

			<div class="col-md-4 text-left">
				<h5>Total Marks : ${examBean.examTotalMarks}</h5>
			</div>
			<div class="col-md-4 text-center">
				<h5>Language : ${examBean.className}</h5>
			</div>
			<div class="col-md-4 text-right">
				<h5>Batch : ${examBean.batch}</h5>
			</div>
			<hr size="100px" color="#020202">
		</div>

		<hr size="2">
		<div class=row>
			<c:forEach items="${questionPaperBeans}" var="list"
				varStatus="counter">

				<div class="col-md-12">
					<h6>${counter.count}.${list.preparedQuestion}Marks:
						${list.marks}</h6>
				</div>
			</c:forEach>
		</div>

		<div class="row text-right">
			<!-- <form action="/TMS/questionPaper/getPdf/" Method = "POST">
			<input type = "hidden" name="currentUrl" value="" id = "currentUrl"> -->
			<button onclick="myFunction()" class="btn btn-primary btn-sm">
				<span class="glyphicon glyphicon-print"></span>
			</button>
			<!-- 	</form> -->
		</div>
	</div>
</body>
</html>
