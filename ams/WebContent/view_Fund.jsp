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
	$(document).ready(function() {

		/* edit modal submit */

		$('#submit').click(function(event) {
			$('#edit').modal('hide');
			var form = (event.target.form), url = "/ams/fund/update/"

			$.post(url, $("#edit_Fund_form").serialize(), function(getData) {
				console.log(getData);
			}, 'json');

			$('#delete_message').text("Customer edited successfully")
		});

		$('#edit').on('hidden.bs.modal', function() {
			location.reload(true);
			$('#delete_message').text("Customer edited successfully")
		})

		/* delete modal submit */

		$('#delete-yes').click(function(event) {

			var fundId = $('#fund_id_delete').val();
			$('#delete').modal('hide');
			console.log("delete-yes-customerId :" + fundId);

			$.ajax({
				url : '/ams/fund/delete/',
				data : {
					fund_id : fundId
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
			$('#delete_message').text("Customer deleted successfully")
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

	'${list.fundId}', '${list.flatNo}', '${list.ownerName}', '${list.date}',
			'${list.monthYear}', '${list.paymentMode}', '${list.amount}',
			'${list.description}'
	function editFunction(fundId, flatNo, ownerName, date, monthYear,
			paymentMode, amount, description) {
		$('#flat_no').val(flatNo);
		$('#owner_Name').val(ownerName);
		$('#fund_date').val(date);
		$('#fund_month').val(monthYear);
		$('#fund_year').val(paymentMode);
		$('#fund_Amount').val(amount);
		$('#Description').val(description);
		$('#fund_id').val(fundId);
	}

	/* view function */
	function viewFunction(fundId, flatNo, ownerName, date, monthYear,
			paymentMode, amount, description) {
		document.getElementById("view_flat_no").innerHTML = flatNo;
		document.getElementById("view_owner_name").innerHTML = ownerName;
		document.getElementById("view_date").innerHTML = date;
		document.getElementById("view_month").innerHTML = monthYear;
		document.getElementById("view_Year").innerHTML = paymentMode;
		document.getElementById("view_amount").innerHTML = amount;
		document.getElementById("view_Description").innerHTML = description;
		document.getElementById("view_fund_id").innerHTML = fundId;
		console.log("fundId :" + fundId);
	}

	/* delete function */

	function deletefunctionTest(fundId) {
		$('#fund_id_delete').val(fundId);
		console.log("Fund :" + $('#fund_id_delete').val());
	}

	$(document).ready(function() {
		$('#edit_Fund_form').ready({

		}).on('edit_Fund_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('edit_Fund_form');

			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');

			$('#edit_Fund_form').each(function() {
				this.reset();
			});

			$('#edit_Fund_form').click(function() {
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
							<a href="/ams/add_Fund" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i>Fund List
									</h3>
								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Flat NO</th>
												<th>Owner Name</th>
												<th>Date</th>
												<th>Month and Year</th>
												<th>Payment Mode</th>
												<th>Amount</th>
												<th>Description</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${fundBeans}" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.flatNo}</td>
													<td>${list.ownerName}</td>
													<td>${list.date}</td>
													<td>${list.monthYear}</td>
													<td>${list.paymentMode}</td>
													<td>${list.amount}</td>
													<td>${list.description}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="View">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.fundId}','${list.flatNo}','${list.ownerName}','${list.date}','${list.monthYear}','${list.paymentMode}','${list.amount}','${list.description}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.fundId}','${list.flatNo}','${list.ownerName}','${list.date}','${list.monthYear}','${list.paymentMode}','${list.amount}','${list.description}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.fundId}')"></span>
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
									<form action="/ams/fund/update/" method="post"
										id="edit_Fund_form">
										<div class="form-group">
											<label>Flat No :</label> <input class="form-control "
												id="flat_no" name="flat_no" type="text" readonly>
										</div>
										<div class="form-group">
											<label>Owner Name :</label> <input class="form-control "
												id="owner_Name" name="owner_Name" type="text" readonly>
										</div>
										
										<div class="form-group">
											<label>Date :</label> <input class="form-control"
												id="fund_date" name="fund_date" type="Date">
										</div>

										<div class="form-group">
											<label>Month and Year :</label> <input class="form-control "
												id="fund_month" name="fund_month" type="text">
										</div>

										<div class="form-group">
											<label>Payment Mode :</label> <input class="form-control "
												id="fund_year" name="fund_year" type="text">
										</div>

										<div class="form-group">
											<label>Amount:</label> <input class="form-control "
												id="fund_Amount" name="fund_Amount" type="text">
										</div>

										<div class="form-group">
											<label>Description :</label> <input class="form-control "
												id="Description" name="Description" type="text">
										</div>


										<div class="form-group">
											<input class="form-control " id="fund_id" name="fund_id"
												type="hidden">
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
										<span class="glyphicon glyphicon-warning-sign"></span> Are you
										sure you want to delete this Record?
									</div>
									<div class="form-group">
										<input class="form-control " id="fund_id_delete"
											name="fund_id" type="hidden">
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
									<h4 class="modal-title custom_align" id="Heading">View
										Detail</h4>


								</div>
								<div class="modal-body">

									<div class="form-group">
										<label>Flat No:</label>
										<p id="view_flat_no"></p>
									</div>

									<div class="form-group">
										<label>Owner Name:</label>
										<p id="view_owner_name"></p>
									</div>
									
									<div class="form-group">
										<label>Date :</label>
										<p id="view_date"></p>
									</div>

									<div class="form-group">
										<label>Month and Year:</label>
										<p id="view_month"></p>
									</div>

									<div class="form-group">
										<label>Payment Mode:</label>
										<p id="view_Year"></p>
									</div>

									<div class="form-group">
										<label>Amount :</label>
										<p id="view_amount"></p>

									</div>

									<div class="form-group">
										<label>Description:</label>
										<p id="view_Description"></p>
									</div>


									<div class="form-group">
										<input class="form-control " id="view_fund_id"
											name="view_fund_id" type="hidden">
									</div>
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
				</div>
			</section>


		</div>
		<!-- /.content-wrapper -->
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
