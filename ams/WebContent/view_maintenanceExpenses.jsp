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

<%@include file="links.jsp"%>
<%@include file="pagination_data.jsp"%>
<script type="text/javascript">
	$.ajaxSetup({
		cache : false
	});
	$(document)
			.ready(
					function() {

						/* edit modal submit */

						$('#submit')
								.click(
										function(event) {
											$('#edit').modal('hide');
											var form = (event.target.form), url = "/ams/maintenanceExpenses/update/"

											$.post(url,
													$("#edit_customer_form")
															.serialize(),
													function(getData) {
														console.log(getData);
													}, 'json');

											$('#delete_message')
													.text(
															"Customer edited successfully")
										});

						$('#edit').on(
								'hidden.bs.modal',
								function() {
									location.reload(true);
									$('#delete_message').text(
											"Customer edited successfully")
								})

						/* delete modal submit */

						$('#delete-yes')
								.click(
										function(event) {

											var maintenanceId = $(
													'#maintenance_id_delete')
													.val();
											$('#delete').modal('hide');
											console
													.log("delete-yes-customerId :"
															+ maintenanceId);

											$
													.ajax({
														url : '/ams/maintenanceExpenses/delete/',
														data : {
															maintenance_id : maintenanceId
														},
														type : 'post',
														cache : false,
														success : function(data) {
															console.log(data);
														},
														error : function() {
															//alert('error');
														}
													});
											$('#delete_message')
													.text(
															"Customer deleted successfully")
											location.reload(true);
										});

					});

	$('#delete').on('hidden.bs.modal', function() {
		$('#delete_message').text("Customer deleted successfully")
		location.reload(true);
		$('#delete_message').text("Customer deleted successfully")
		alert("Customer deleted successfully");
	})

	/* edit function */

	'${list.maintenanceId}', '${list.date}',
			'${list.monthYear}', '${list.name}',
			'${list.title}','${list.amount}','${list.description}'
	function editFunction(maintenanceId, date, monthYear,
			name, title,amount,description) {
		$('#date_of_maintenance').val(date);
		$('#month_year').val(monthYear);
		$('#admin_name').val(name);
		$('#maintenace_title').val(title);
		$('#maintenance_amount').val(amount);
		$('#maintenance_details').val(description);
		$('#maintenance_id').val(maintenanceId);
	}

	/* view function */

	function viewFunction(maintenanceId, date, monthYear,
			name, title,amount,description) {
		document.getElementById("view_date_of_maintenance").innerHTML = date;
		document.getElementById("view_month_year").innerHTML = monthYear;
		document.getElementById("view_admin_name").innerHTML = name;
		document.getElementById("view_maintenace_title").innerHTML = title;
		document.getElementById("view_maintenance_amount").innerHTML = amount;
		document.getElementById("view_maintenance_details").innerHTML = description;
		document.getElementById("view_maintenance_id").innerHTML = maintenanceId;

	}

	/* delete function */

	function deletefunctionTest(maintenanceId) {
		$('#maintenance_id_delete').val(maintenanceId);
		console.log("Maintenance :" + $('#maintenance_id_delete').val());
	}

	$(document).ready(function() {
		$('#edit_customer_form').ready({

		}).on('edit_customer_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('edit_customer_form');

			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');

			$('#edit_customer_form').each(function() {
				this.reset();
			});

			$('#edit_customer_form').click(function() {
				location.reload(true);
			});
		});
	});
</script>
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
							<a href="/ams/add_maintenanceExpenses" class="btn btn-primary"
								role="button">Add New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Maintenance Expenses List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Expenses Title</th>
												<th>Entered Name</th>
												<th>Date</th>
												<th>Month and Year</th>
												<th>Amount</th>
												<th class="text-center">Action</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${maintenanceExpensesBeans}"
												varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.title}</td>
													<td>${list.name}</td>
													<td>${list.date}</td>
													<td>${list.monthYear}</td>
													<td>${list.amount}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="view">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.maintenanceId}','${list.title}','${list.date}','${list.name}','${list.monthYear}','${list.amount}','${list.description}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.maintenanceId}','${list.title}','${list.date}','${list.name}','${list.monthYear}','${list.amount}','${list.description}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.maintenanceId}')"></span>
															</button>
													</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="col-md-12 text-center">
										<ul class="pagination pagination-lg pager" id="myPager"></ul>
									</div>
								</div>

								<div id="shieldui-grid1"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="modal fade" id="edit" tabindex="-1" role="dialog"
							aria-labelledby="#edit" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
										<h4 class="modal-title custom_align" id="Heading">Edit
											Your Detail</h4>


									</div>
									<div class="modal-body">
										<form action="ams/maintenanceExpenses/update/" method="post"
											id="edit_customer_form">
											
											<div class="form-group">
												<label>Expenses Title :</label> <input class="form-control "
													id="maintenace_title" name="maintenace_title" type="text"
													readonly>
											</div>

											<div class="form-group">
												<label>Date :</label> <input class="form-control "
													id="date_of_maintenance" name="date_of_maintenance"
													type="date">
											</div>
											
											
											<div class="form-group">
												<label>Month and Year :</label> <input class="form-control "
													id="month_year" name="month_year" type="text">
											</div>

											<div class="form-group">
												<label>Name :</label> <input class="form-control "
													id="admin_name" name="admin_name" type="text">
											</div>


											<div class="form-group">
												<label>Maintenance Amount :</label> <input
													class="form-control " id="maintenance_amount"
													name="maintenance_amount" type="text">
											</div>

											<div class="form-group">
												<label>Maintenance Details :</label> <input
													class="form-control " id="maintenance_details"
													name="maintenance_details" type="text">
											</div>


											<div class="form-group">
												<input class="form-control " id="maintenance_id"
													name="maintenance_id" type="hidden">
											</div>
										</form>
									</div>
									<div class="modal-footer ">
										<button type="button" id="submit" class="btn btn-info btn-lg"
											style="width: 100%;">
											<span class="glyphicon glyphicon-ok-sign"></span>Update
										</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<div class="modal fade" id="delete" tabindex="-1" role="dialog"
							aria-labelledby="edit" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
										<h4 class="modal-title custom_align" id="Heading">Delete
											this entry</h4>
									</div>
									<div class="modal-body">
										<span class="color:red">${deleteMessage}</span>
										<div class="alert alert-danger">
											<span class="glyphicon glyphicon-warning-sign"></span> Are
											you sure you want to delete this Record?
										</div>
										<div class="form-group">
											<input class="form-control " id="maintenance_id_delete"
												name="maintenance_id" type="hidden">
										</div>
									</div>
									<div class="modal-footer ">
										<button id="delete-yes" type="button" class="btn btn-success">
											<span class="glyphicon glyphicon-ok-sign"></span>Yes
										</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">
											<span class="glyphicon glyphicon-remove"></span>No
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="view" tabindex="-1" role="dialog"
							aria-labelledby="#view" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
										<h4 class="modal-title custom_align" id="Heading">Edit
											Your Detail</h4>


									</div>
									<div class="modal-body">
										<div class="form-group">
											<label>Maintenance Title :</label>
											<p id="view_maintenace_title"></p>
										</div>
										
										<div class="form-group">
											<label>Date :</label>
											<p id="view_date_of_maintenance"></p>
										</div>
										
										<div class="form-group">
											<label>Month and Year :</label>
											<p id="view_month_year"></p>
										</div>

										<div class="form-group">
											<label>Name :</label>
											<p id="view_admin_name"></p>
										</div>

										<div class="form-group">
											<label>Maintenance Details :</label>
											<p id="view_maintenance_details"></p>
										</div>

										<div class="form-group">
											<label>Maintenance Amount :</label>
											<p id="view_maintenance_amount"></p>
										</div>
									</div>
									<div class="modal-footer ">
										<button type="button" id="submit" class="btn btn-info btn-lg" data-dismiss="modal"
											style="width: 100%;">
											<span class="glyphicon glyphicon-ok-sign"></span>Close
										</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
					</div>
			</section>


		</div>
		<%@include file="footer.jsp"%>
</body>
</html>
