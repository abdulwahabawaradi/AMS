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
			var form = (event.target.form), url = "/ams/visitor/update/"

			$.post(url, $("#edit_visitor_form").serialize(), function(getData) {
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

			var visitorId = $('#visitor_id_delete').val();
			$('#delete').modal('hide');
			console.log("delete-yes-customerId :" + visitorId);

			$.ajax({
				url : '/ams/visitor/deleteVisitor/',
				data : {
					visitor_id : visitorId
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

	'${list.visitorId}', '${list.date}', '${list.visitorName}',
			'${list.visitorNumber}', '${list.address}', '${list.flatWing}',
			'${list.flatNo}', '${list.inTime}', '${list.outTime}',
			'${list.idNumber}', '${list.visitorDetails}'
	function editFunction(visitorId, date, visitorName, visitorNumber, address,
			flatWing, flatNo, inTime, outTime, idNumber, visitorDetails) {
		$('#visitor_name').val(visitorName);
		$('#visited_date').val(date);
		$('#visitor_contact').val(visitorNumber);
		$('#visitor_address').val(address);
		$('#visited_wing').val(flatWing);
		$('#visited_flat').val(flatNo);
		$('#in_time').val(inTime);
		$('#out_time').val(outTime);
		$('#id_no').val(idNumber);
		$('#visitor_details').val(visitorDetails);
		$('#visitor_id').val(visitorId);
	}

	/*View Funtion*/
	function viewFunction(visitorId, date, visitorName, visitorNumber, address,
			flatWing, flatNo, inTime, outTime, idNumber, visitorDetails) {
		document.getElementById("view_visitor_name").innerHTML = visitorName;
		document.getElementById("view_visited_date").innerHTML = date;
		document.getElementById("view_visitor_contact").innerHTML = address;
		document.getElementById("view_visitor_address").innerHTML = flatWing;
		document.getElementById("view_visited_wing").innerHTML = flatNo;
		document.getElementById("view_in_time").innerHTML = inTime;
		document.getElementById("view_out_time").innerHTML = outTime;
		document.getElementById("view_id_no").innerHTML = idNumber;
		document.getElementById("view_visitor_details").innerHTML = visitorDetails;
		document.getElementById("view_visitor_id").innerHTML = visitorId;
	}

	/* delete function */

	function deletefunctionTest(maintenanceId) {
		$('#visitor_id_delete').val(maintenanceId);
		console.log("Maintenance :" + $('#visitor_id_delete').val());
	}

	$(document).ready(function() {
		$('#edit_visitor_form').ready({

		}).on('edit_visitor_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('edit_visitor_form');

			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');

			$('#edit_visitor_form').each(function() {
				this.reset();
			});

			$('#edit_visitor_form').click(function() {
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
							<a href="/ams/add_visitor" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Visitor List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Date</th>
												<th>Name</th>
												<th>Mobile</th>
												<th>Address</th>
												<th>Flat Wing</th>
												<th>Flat No</th>
												<th>In Time</th>
												<th>Out Time</th>
												<th>visitor Id proof</th>
												<th>Visitor Details</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${visitorBeans}"
												varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.date}</td>
													<td>${list.visitorName}</td>
													<td>${list.visitorNumber}</td>
													<td>${list.address}</td>
													<td>${list.flatWing}</td>
													<td>${list.flatNo}</td>
													<td>${list.inTime}</td>
													<td>${list.outTime}</td>
													<td>${list.idNumber}</td>
													<td>${list.visitorDetails}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="view">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction(		'${list.visitorId}', '${list.date}',
																							'${list.visitorName}', '${list.visitorNumber}',
																							'${list.address}','${list.flatWing}', '${list.flatNo}',
																						 	'${list.inTime}', '${list.outTime}', 
																						 	'${list.idNumber}', '${list.visitorDetails}'
																						)">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction(		'${list.visitorId}', '${list.date}',
																							'${list.visitorName}', '${list.visitorNumber}',
																							'${list.address}','${list.flatWing}', '${list.flatNo}',
																						 	'${list.inTime}', '${list.outTime}', 
																						 	'${list.idNumber}', '${list.visitorDetails}'
																						)">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.visitorId}')"></span>
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

							</div>
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
									<form action="ams/visitor/update/" method="post"
										id="edit_visitor_form">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Visitor Name :</label> <input class="form-control"
														id="visitor_name" name="visitor_name" type="text" readonly>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Date :</label> <input class="form-control"
														id="visited_date" name="visited_date" type="date">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Visitor Contact :</label> <input
														class="form-control" id="visitor_contact"
														name="visitor_contact" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Visitor Address :</label> <input
														class="form-control" id="visitor_address"
														name="visitor_address" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Visited Wing :</label> <input class="form-control"
														id="visited_wing" name="visited_wing" type="text">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Visited Flat:</label> <input class="form-control"
														id="visited_flat" name="visited_flat" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>In Time :</label> <input class="form-control"
														id="in_time" name="in_time" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Out Time :</label> <input class="form-control"
														id="out_time" name="out_time" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Visitor Id Proof No. :</label> <input
														class="form-control" id="id_no" name="id_no" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Visitor Details:</label> <input class="form-control"
														id="visitor_details" name="visitor_details" type="text">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input class="form-control " id="visitor_id"
													name="visitor_id" type="hidden">
											</div>
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
										<input class="form-control " id="visitor_id_delete"
											name="visitor_id" type="hidden">
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
										Detail's</h4>


								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Visitor Name :</label>
												<p id="view_visitor_name"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Date :</label>
												<p id="view_visited_date"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Visitor Contact :</label>
												<p id="view_visitor_contact"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Visitor Address :</label>
												<p id="view_visitor_address"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Visited Wing :</label>
												<p id="view_visited_wing"></p>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Visited Flat:</label>
												<p id="view_visited_flat"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>In Time :</label>
												<p id="view_in_time"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Out Time :</label>
												<p id="view_out_time"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Visitor Id Proof No. :</label>
												<p id="view_id_no"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Visitor Details:</label>
												<p id="view_visitor_details"></p>
											</div>
										</div>
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
</body>
</html>
