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
<%@include file="pagination_data.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(document).on('click', '#purchaseItems .add', function() {
			var row = $(this).parents('tr');
			var clone = row.clone();

			// clear the values
			var tr = clone.closest('tr');
			tr.find('input[type=text]').val('');

			$(this).closest('tr').after(clone);
			var total = 0;
			$(".last").each(function() {
				if (!$(this).val() == '') {
					total = total + parseFloat($(this).val());
				}
			})
			$("#totalPrice").html("$" + total);
		});
		$(document).on("blur", ".last", function() {
			var total = 0;
			$(".last").each(function() {
				if (!$(this).val() == '') {
					total = total + parseFloat($(this).val());
				}
			})
			$("#totalPrice").html("$" + total);
		});
		$(document).on('focus', ".last", function() {
			var $qty = $(this).parents("tr").find("input[name^='quantity']");
			var $pr = $(this).parents("tr").find("input[name^='price']");
			var $amnt = $(this).parents("tr").find("input[name^='amount']");
			var a = 0;
			if ($qty.val() == '' || $pr.val() == '') {
				console.log("No values found.");
				return false;
			} else {
				console.log("Converting: ", $qty.val(), $pr.val());
				var q = parseInt($qty.val());
				var p = parseFloat($pr.val());
				console.log("Values found: ", q, p);
			}
			a = q * p;
			$amnt.val(Math.round(a * 100) / 100);
		});
		$(document).on('click', '#purchaseItems .removeRow', function() {
			if ($('#purchaseItems .add').length > 1) {
				$(this).closest('tr').remove();
			}
		});
	});
</script>
</head>
<body class="hold-transition skin-black sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<%@include file="header2.jsp"%>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<%@include file="sidebar2.jsp"%>
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
										role="button" id="Add">Add</a>
								</div>
								<div class="box-body table-responsive no-padding">
									<span id="delete_message" class="color:green"></span>
									<table id="purchaseItems" name="purchaseItems"
										class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Flat NO</th>
												<th>Owner name</th>
												<th>Flat Area</th>
												<th>Maintenance Amount</th>
												<th>Total Amount</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${maintenanceListBeans}">
												<tr>
													<td>${list.flat_number}</td>
													<td>${list.owner_name}</td>
													<td><input type="text" class="next"
														value="${list.flat_area}" name="quantity[]"></td>
													<td><input type="text" class="next"
														value="${list.maintenancea_amount}" name="price[]"></td>
													<td><input type="text" class="next last"
														name="amount[]" value="" placeholder="Click Here To View Total"></td>
													<td></td>

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
