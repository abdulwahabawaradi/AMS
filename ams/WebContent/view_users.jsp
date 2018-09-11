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
											var form = (event.target.form), url = "/ams/user/updateUser/"
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

						$('#delete-yes').click(
								function(event) {

									var userId = $('#user_id_delete').val();
									$('#delete').modal('hide');
									console.log("delete-yes-customerId :"
											+ userId);

									$.ajax({
										url : '/ams/user/deleteUser/',
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

	'${list.userId}', '${list.userName}', '${list.userAddress}',
			'${list.userDateOfBirth}', '${list.usercontact}',
			'${list.userSecondaryContact}', '${list.userAadharNumber}',
			'${list.userPanCard}', '${list.userRole}',
			'${list.userRegistrationDate}', '${list.endDate}'
	function editFunction(userId, userName, userAddress, userDateOfBirth,
			userEmail, usercontact, userSecondaryContact, userAadharNumber,
			userPanCard, userRole, userRegistrationDate, endDate) {
		$('#user_name').val(userName);
		$('#user_address').val(userAddress);
		$('#date_of_birth').val(userDateOfBirth);
		$('#email').val(userEmail);
		$('#primary_contact').val(usercontact);
		$('#secondary_contact').val(userSecondaryContact);
		$('#aadhar_no').val(userAadharNumber);
		$('#pancard_no').val(userPanCard);
		$('#user_role').val(userRole);
		$('#registration_date').val(userRegistrationDate);
		$('#end_Date').val(endDate);
		$('#user_id').val(userId);
		console.log("userId :" + userId);
	}

	/* view Funtion*/
	function viewFunction(userId, userName, userAddress, userDateOfBirth,
			userEmail, usercontact, userSecondaryContact, userAadharNumber,
			userPanCard, userRole, userRegistrationDate, endDate) {
		document.getElementById("view_user_name").innerHTML = userName;
		document.getElementById("view_user_address").innerHTML = userAddress;
		document.getElementById("view_date_of_birth").innerHTML = userDateOfBirth;
		document.getElementById("view_email").innerHTML = userEmail;
		document.getElementById("view_primary_contact").innerHTML = usercontact;
		document.getElementById("view_secondary_contact").innerHTML = userSecondaryContact;
		document.getElementById("view_aadhar_no").innerHTML = userAadharNumber;
		document.getElementById("view_pancard_no").innerHTML = userPanCard;
		document.getElementById("view_user_role").innerHTML = userRole;
		document.getElementById("view_registration_date").innerHTML = userRegistrationDate;
		document.getElementById("view_end_Date").innerHTML = endDate;
		document.getElementById("view_user_id").innerHTML = userId;
	}

	/* delete function */

	function deletefunctionTest(userId) {
		$('#user_id_delete').val(userId);
		console.log("User :" + $('#user_id_delete').val());
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
			<%@ include file="sidebar.jsp"%>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div id="page-wrapper">

					<div class="row">
						<div class="col-lg-12">
							<a href="/ams/add_user" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> User's List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Name</th>
												<th>Address</th>
												<th>Contact</th>
												<th>Aadhaar No</th>
												<th>User Status</th>
												<th>Register Date</th>
												<th>End Date</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${userBeans}" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.userName}</td>
													<td>${list.userAddress}</td>
													<td>${list.usercontact}</td>
													<td>${list.userAadharNumber}</td>
													<td>${list.userRole}</td>
													<td>${list.userRegistrationDate}</td>
													<td>${list.endDate}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="view">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.userId}', '${list.userName}', '${list.userAddress}',
																						'${list.userDateOfBirth}', '${list.userEmail}', '${list.usercontact}',
																						'${list.userSecondaryContact}', '${list.userAadharNumber}',
																						'${list.userPanCard}', '${list.userRole}',
																						'${list.userRegistrationDate}','${list.endDate}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.userId}', '${list.userName}', '${list.userAddress}',
																						'${list.userDateOfBirth}', '${list.userEmail}', '${list.usercontact}',
																						'${list.userSecondaryContact}', '${list.userAadharNumber}',
																						'${list.userPanCard}', '${list.userRole}',
																						'${list.userRegistrationDate}','${list.endDate}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.userId}')"></span>
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
										<form action="ams/user/updateUser/" method="post"
											id="edit_customer_form">
											<div class="row">
												<div class="col-md-6">

													<div class="form-group">
														<label>Name :</label> <input class="form-control "
															id="user_name" name="user_name" type="text" readonly>
													</div>

													<div class="form-group">
														<label>Address :</label> <input class="form-control "
															id="user_address" name="user_address" type="text">
													</div>

													<div class="form-group">
														<label>Date of Birth :</label> <input
															class="form-control " id="date_of_birth"
															name="date_of_birth" type="date">
													</div>
													<div class="form-group">
														<label>Email :</label> <input class="form-control "
															id="email" name="email" type="text">
													</div>

													<div class="form-group">
														<label>Contact :</label> <input class="form-control "
															id="primary_contact" name="primary_contact" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>Secondary Contact :</label> <input
															class="form-control " id="secondary_contact"
															name="secondary_contact" type="text">
													</div>
													<div class="form-group">
														<label>Aadhar Number :</label> <input
															class="form-control " id="aadhar_no" name="aadhar_no"
															type="text">
													</div>
													<div class="form-group">
														<label>Pan card Number :</label> <input
															class="form-control " id="pancard_no" name="pancard_no"
															type="text">
													</div>
													<div class="form-group">
														<label>Status:</label> <input class="form-control "
															id="user_role" name="user_role" type="text">
													</div>
													<div class="form-group">
														<label>Registration Date :</label> <input
															class="form-control " id="registration_date"
															name="registration_date" type="date">
													</div>

													<div class="form-group">
														<label>End Date :</label> <input class="form-control "
															id="end_Date" name="end_Date" type="date">
													</div>


													<div class="form-group">
														<input class="form-control " id="user_id" name="user_id"
															type="hidden">
													</div>
												</div>
											</div>

										</form>
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
											<span class="glyphicon glyphicon-warning-sign"></span> Are
											you sure you want to delete this Record?
										</div>
										<div class="form-group">
											<input class="form-control " id="user_id_delete"
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
										<h4 class="modal-title custom_align" id="Heading">Edit
											Your Detail</h4>


									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-md-6">

												<div class="form-group">
													<label>Name :</label>
													<p id="view_user_name"></p>
												</div>

												<div class="form-group">
													<label>Address :</label>
													<p id="view_user_address"></p>
												</div>

												<div class="form-group">
													<label>Date of Birth :</label>
													<p id="view_date_of_birth"></p>
												</div>
												<div class="form-group">
													<label>Email :</label>
													<p id="view_email"></p>
												</div>

												<div class="form-group">
													<label>Contact :</label>
													<p id="view_primary_contact"></p>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Secondary Contact :</label>
													<p id="view_secondary_contact"></p>
												</div>

												<div class="form-group">
													<label>Aadhar Number :</label>
													<p id="view_aadhar_no"></p>
												</div>

												<div class="form-group">
													<label>Pan card Number :</label>
													<p id="view_pancard_no"></p>
												</div>

												<div class="form-group">
													<label>Status :</label>
													<p id="view_user_role"></p>
												</div>

												<div class="form-group">
													<label>Registration Date :</label>
													<p id="view_registration_date"></p>
												</div>

												<div class="form-group">
													<label>End Date :</label>
													<p id="view_end_Date"></p>
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
				</div>
			</section>


		</div>
		<%@include file="footer.jsp"%>
</body>
</html>
