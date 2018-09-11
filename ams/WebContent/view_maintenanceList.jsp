<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Apartment</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<link type="text/css"
	th:href="@{/webjars/bootstrap/3.3.6/css/bootstrap.min.css}"
	rel="stylesheet" media="screen" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Pagination script starts -->
<%@include file="links.jsp"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<%@include file="pagination_data.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<%@include file="header.jsp"%>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<%@include file="sidebar.jsp"%>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div id="page-wrapper">

					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Maintenance List
									</h3>
									<a href="/ams/maintenancelist/getList/" class="btn btn-primary"
										role="button">Add</a>
								</div>
								<div class="box-body table-responsive no-padding">
									<span id="delete_message" class="color:green"></span>
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Owner name</th>
												<th>Flat NO</th>
												<th>Month and Year</th>
												<th>Flat Area</th>
												<th>Maintenance Amount</th>
												<th>Total Amount</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${maintenanceListBeans}" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.owner_name}</td>
													<td>${list.flat_number}</td>
													<td>${list.maintenance_month_year}</td>
													<td>${list.flat_area}</td>
													<td>${list.maintenancea_amount}</td>
													<td>${list.total_maintenance}</td>
													<td><a href="/ams/add_Fund" class="btn btn-primary btn-xs" role="button">Payment</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="col-md-12 text-center">
										<ul class="pagination pagination-lg pager" id="myPager"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
			</section>

		</div>

		<!-- /.content-wrapper -->
		<%@include file="footer.jsp"%>
</body>
</html>
