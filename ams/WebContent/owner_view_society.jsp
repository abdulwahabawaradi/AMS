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
											var form = (event.target.form), url = "/ams/society/update/"
											$.post(url,
													$("#edit_society_form")
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

						$('#delete-yes').click(
								function(event) {

									var userId = $('#society_id_delete').val();
									$('#delete').modal('hide');
									console.log("delete-yes-customerId :"
											+ userId);

									$.ajax({
										url : '/ams/society/delete/',
										data : {
											user_id : userId
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
									$('#delete_message').text(
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

	'${list.societyId}', '${list.societyName}', '${list.societyAddress}',
			'${list.ownerName}', '${list.ownerContact}',
			'${list.emailId}', '${list.noOfWing}',
	function editFunction(societyId, societyName, societyAddress, ownerName,
			ownerContact, emailId, noOfWing) {
				$('#Society_name').val(societyName);
				$('#Society_address').val(societyAddress);
				$('#Builder_name').val(ownerName);
				$('#Builder_contact').val(ownerContact);
				$('#Builder_email').val(emailId);
				$('#No_Wings').val(noOfWing);
				$('#society_id').val(societyId);
		console.log("Id :" + societyId);
	}

	/* view Funtion*/
	function viewFunction(societyId, societyName, societyAddress, ownerName,
			ownerContact, emailId, noOfWing) {
		document.getElementById("view_Society_name").innerHTML = societyName;
		document.getElementById("view_Society_address").innerHTML = societyAddress;
		document.getElementById("view_Builder_name").innerHTML = ownerName;
		document.getElementById("view_Builder_contact").innerHTML = ownerContact;
		document.getElementById("view_Builder_email").innerHTML = emailId;
		document.getElementById("view_No_Wings").innerHTML = noOfWing;
		document.getElementById("society_id").innerHTML = societyId;
	}

	/* delete function */

	function deletefunctionTest(userId) {
		$('#society_id_delete').val(userId);
		console.log("User :" + $('#society_id_delete').val());
	}

	$(document).ready(function() {
		$('#edit_society_form').ready({

		}).on('edit_society_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('edit_society_form');

			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');

			$('#edit_society_form').each(function() {
				this.reset();
			});

			$('#edit_society_form').click(function() {
				location.reload(true);
			});
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
			<%@ include file="sidebar2.jsp"%>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div id="page-wrapper">

					<div class="row">
						<div class="col-lg-12">
							<a href="/ams/add_society" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Society List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Society Name</th>
												<th>Society Address</th>
												<th>Builder Name</th>
												<th>Builder Contact</th>
												<th>EmailId</th>
												<th>No Of Wing</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${societyBeans}"
												varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.societyName}</td>
													<td>${list.societyAddress}</td>
													<td>${list.ownerName}</td>
													<td>${list.ownerContact}</td>
													<td>${list.emailId}</td>
													<td>${list.noOfWing}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="view">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.societyId}', '${list.societyName}', '${list.societyAddress}',
																						'${list.ownerName}', '${list.ownerContact}', '${list.emailId}',
																						'${list.noOfWing}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.societyId}', '${list.societyName}', '${list.societyAddress}',
																						'${list.ownerName}', '${list.ownerContact}', '${list.emailId}',
																						'${list.noOfWing}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.societyId}')"></span>
															</button>
													</a></td>
												</tr>
											</c:forEach>
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
										<form action="ams/society/update/" method="post"
											id="edit_society_form">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Society Name :</label> <input class="form-control "
															id="Society_name" name="Society_name" type="text"
															readonly>
													</div>

													<div class="form-group">
														<label>Society Address :</label> <input
															class="form-control " id="Society_address"
															name="Society_address" type="text">
													</div>

													<div class="form-group">
														<label>Builder Name :</label> <input class="form-control "
															id="Builder_name" name="Builder_name" type="text">
													</div>
												</div>

												<div class="col-md-6">
													<div class="form-group">
														<label>Builder Contact :</label> <input
															class="form-control " id="Builder_contact"
															name="Builder_contact" type="text">
													</div>

													<div class="form-group">
														<label>Email :</label> <input class="form-control "
															id="Builder_email" name="Builder_email" type="text">
													</div>

													<div class="form-group">
														<label>No Of Wings :</label> <input class="form-control "
															id="No_Wings" name="No_Wings" type="text">
													</div>
												</div>
												<div class="form-group">
													<input class="form-control " id="society_id"
														name="society_id" type="hidden">
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
										<input class="form-control " id="society_id_delete"
											name="user_id" type="hidden">
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
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Society Name :</label> <a id="view_Society_name"></a>
											</div>

											<div class="form-group">
												<label>Society Address :</label> <a
													id="view_Society_address"></a>
											</div>

											<div class="form-group">
												<label>Builder Name :</label> <a id="view_Builder_name"></a>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Builder Contact :</label> <a
													id="view_Builder_contact"></a>
											</div>

											<div class="form-group">
												<label>Email :</label> <a id="view_Builder_email"> </a>
											</div>

											<div class="form-group">
												<label>No Of Wings :</label> <a id="view_No_Wings"></a>
											</div>
										</div>
										<div class="form-group">
											<input class="form-control " id="society_id"
												name="society_id" type="hidden">
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<img src="/ams/resources/photos/Apartment.jpg"
													class="img-rounded" alt="Cinque Terre" width="200"
													height="200">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<iframe
													src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2285.5831539136175!2d73.88883141580358!3d18.474042639004566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2ea8bffffffff%3A0xe5879d4c55b94bdc!2sCafe+Zam+Zam!5e0!3m2!1sen!2sin!4v1522214733202"
													width="200" height="200" frameborder="0" style="border: 0"
													allowfullscreen></iframe>
											</div>
										</div>
									</div>
									<div class="modal-footer ">
										<button type="button" id="submit" class="btn btn-info btn-lg"
											style="width: 100%;">
											<span class="glyphicon glyphicon-ok-sign"></span>Close
										</button>
									</div>

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