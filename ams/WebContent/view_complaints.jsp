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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
<%@include file="pagination_data.jsp"%>

<style type="text/css">
#success_message {
	display: none;
}
</style>

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
											var form = (event.target.form), url = "/ams/complain/updateComplain/"

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

									var complainId = $('#complain_id_delete')
											.val();
									$('#delete').modal('hide');
									console.log("delete-yes-customerId :"
											+ complainId);

									$.ajax({
										url : '/ams/complain/deleteComplain/',
										data : {
											complain_id : complainId
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

	/* view function */

	/* edit function */

	'${list.complainId}','${list.flatNo}','${list.userName}', '${list.complainDate}', '${list.complainTitle}',
			'${list.complainDescription}'
	function editFunction(complainId,flatNo,userName, complainDate, complainTitle,
			complainDescription) {
		$('#complaint_date').val(complainDate);
		$('#complaint_FlatNo').val(flatNo);
		$('#complaint_User').val(userName);
		$('#complaint_subject').val(complainTitle);
		$('#complaint_description').val(complainDescription);
		$('#complain_id').val(complainId);
	}

	/* view function */
	function viewFunction(complainId,flatNo,userName,complainDate, complainTitle,
			complainDescription) {

		document.getElementById("view_complaint_date").innerHTML = complainDate;
		document.getElementById("view_complaint_flatno").innerHTML = flatNo;
		document.getElementById("view_complaint_user").innerHTML = userName;
		document.getElementById("view_complaint_subject").innerHTML = complainTitle;
		document.getElementById("view_complaint_description").innerHTML = complainDescription;
		console.log("complainDescription :" + complainDescription);
	}

	/* delete function */

	function deletefunctionTest(complainId) {
		$('#complain_id_delete').val(complainId);
		console.log("Complain Id :" + $('#complain_id_delete').val());
	}

		  $(document).ready(function() {
			    $('#edit_customer_form').bootstrapValidator({
			        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			        })
			        .on('success.form.bv', function(e) {
			            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
			               
			           
			            // Prevent form submission
			            e.preventDefault();

			            // Get the form instance
			            var $form = $(e.target);

			            // Get the BootstrapValidator instance
			            var bv = $form.data('bootstrapValidator');

			            // Use Ajax to submit form data
			            $.post($form.attr('action'), $form.serialize(), function(result) {
			                console.log(result);
			            }, 'json');
			            
			            $( '#edit_customer_form' ).each(function(){
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
							<a href="/ams/add_complain" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i>Complaint List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Flat NO</th>
												<th>User Name</th>
												<th>Date</th>
												<th>Title</th>
												<th>Description</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${complainBeans}" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.flatNo}</td>
													<td>${list.userName}</td>
													<td>${list.complainDate}</td>
													<td>${list.complainTitle}</td>
													<td>${list.complainDescription}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="View">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.complainId}', '${list.complainDate}','${list.flatNo}','${list.userName}',
																							'${list.complainTitle}', '${list.complainDescription}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.complainId}', '${list.complainDate}','${list.flatNo}','${list.userName}',
																							'${list.complainTitle}', '${list.complainDescription}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.complainId}')"></span>
															</button>
													</a>
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
										<form role="form" action="/ams/maintenance/update/"
											method="POST" id="edit_customer_form">
											<div class="form-group">
												<label>Complaint date :</label> <input class="form-control "
													id="complaint_date" name="complaint_date" type="date">
											</div>
											
											<div class="form-group">
												<label>Flat No :</label> <input class="form-control "
													id="complaint_FlatNo" name="complaint_FlatNo" type="text">
											</div>
											
											<div class="form-group">
												<label>User Name :</label> <input class="form-control "
													id="complaint_User" name="complaint_User" type="text">
											</div>

											<div class="form-group">
												<label>Subject :</label> <input class="form-control "
													id="complaint_subject" name="complaint_subject" type="text">
											</div>

											<div class="form-group">
												<label>Brief Description :</label> <input
													class="form-control " id="complaint_description"
													name="complaint_description" type="text">
											</div>


											<div class="form-group">
												<input class="form-control " id="complain_id"
													name="complain_id" type="hidden">
											</div>


											<div class="modal-footer ">
												<div class="box-footer">
													<div class="alert alert-success" role="alert"
														id="success_message">
														Saved <i class="glyphicon glyphicon-thumbs-up"></i>successfully!
													</div>
													<button type="button" id="submit"
														class="btn btn-info btn-lg" style="width: 100%;">
														<span class="glyphicon glyphicon-ok-sign"></span>Update
													</button>
												</div>
											</div>
										</form>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
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
											<input class="form-control " id="complain_id_delete"
												name="complain_id" type="hidden">
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
													<label>Complaint date :</label>
													<p id="view_complaint_date"></p>
												</div>
												
												<div class="form-group">
													<label>Flat NO :</label>
													<p id="view_complaint_flatno"></p>
												</div>
												
												<div class="form-group">
													<label>User Name :</label>
													<p id="view_complaint_user"></p>
												</div>

												<div class="form-group">
													<label>Subject :</label>
													<p id="view_complaint_subject"></p>
												</div>

												<div class="form-group">
													<label>Brief Description :</label>
													<p id="view_complaint_description"></p>
												</div>
											</div>
										</div>

										<div class="modal-footer ">
											<button type="button" id="close" class="btn btn-info btn-lg"
												style="width: 100%;" data-dismiss="modal">
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
		<!-- /.content-wrapper -->
		<%@include file="footer.jsp"%>
</body>
</html>
