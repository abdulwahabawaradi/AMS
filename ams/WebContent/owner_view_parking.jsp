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
			var form = (event.target.form), url = "/ams/parking/update/"

			$.post(url, $("#edit_parking_form").serialize(), function(getData) {
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

			var parkingId = $('#parking_id_delete').val();
			$('#delete').modal('hide');
			console.log("delete-yes-customerId :" + parkingId);

			$.ajax({
				url : '/ams/parking/deleteVisitor/',
				data : {
					parking_id : parkingId
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

	'${list.parkingId}', '${list.slotNumber}','${list.ownerName}', '${list.flatWing}',
			'${list.flatNo}'
	function editFunction(parkingId, slotNumber,ownerName, flatWing, flatNo ) {
		$('#slot_No').val(slotNumber);
		$('#owner_name').val(ownerName);
		$('#flat_wing').val(flatWing);
		$('#flat_no').val(flatNo);
		$('#parking_id').val(parkingId);
	}

	/*View Funtion*/
	function viewFunction(parkingId, slotNumber,ownerName, flatWing, flatNo) {
		document.getElementById("view_slot_No").innerHTML = slotNumber;
		document.getElementById("view_owner_name").innerHTML = ownerName;
		document.getElementById("view_flat_wing").innerHTML = flatWing;
		document.getElementById("view_flat_no").innerHTML = flatNo;
		document.getElementById("view_parking_id").innerHTML = parkingId;
	}

	/* delete function */

	function deletefunctionTest(maintenanceId) {
		$('#parking_id_delete').val(maintenanceId);
		console.log("Maintenance :" + $('#parking_id_delete').val());
	}

	$(document).ready(function() {
		$('#edit_parking_form').ready({

		}).on('edit_parking_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('edit_parking_form');

			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result);
			}, 'json');

			$('#edit_parking_form').each(function() {
				this.reset();
			});

			$('#edit_parking_form').click(function() {
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
			<%@include file="sidebar2.jsp"%>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div id="page-wrapper">

					<div class="row">
						<div class="col-lg-12">
							<a href="/ams/add_parking" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Parking List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th>Slot No</th>
												<th>Owner Name</th>
												<th>Flat Wing</th>
												<th>FlatNo</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${ParkingBeans}"
												varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.slotNumber}</td>
													<td>${list.ownerName}</td>
													<td>${list.flatWing}</td>
													<td>${list.flatNo}</td>
													<td class="text-center"><a data-placement="top"
														data-toggle="tooltip" title="view">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.parkingId}', '${list.slotNumber}',
																							'${list.ownerName}', '${list.flatWing}',
																							'${list.flatNo}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.parkingId}', '${list.slotNumber}',
																							'${list.ownerName}', '${list.flatWing}',
																							'${list.flatNo}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.parkingId}')"></span>
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
									<form action="ams/parking/update/" method="post"
										id="edit_parking_form">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Slot NO :</label> <input class="form-control"
														id="slot_No" name="slot_No" type="text" readonly>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Owner Name :</label> <input class="form-control"
														id="owner_name" name="owner_name" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Flat Wing :</label> <input class="form-control"
														id="flat_wing" name="flat_wing" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label>Flat No :</label> <input class="form-control"
														id="flat_no" name="flat_no" type="text">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<input class="form-control " id="parking_id"
														name="parking_id" type="hidden">
												</div>
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
										<input class="form-control " id="parking_id_delete"
											name="parking_id" type="hidden">
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
												<label>Slot No :</label>
												<p id="view_slot_No"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Owner Name :</label>
												<p id="view_owner_name"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>flat Wing :</label>
												<p id="view_flat_wing"></p>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>flat No :</label>
												<p id="view_flat_no"></p>
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
