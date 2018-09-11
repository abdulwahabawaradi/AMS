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
											var form = (event.target.form), url = "/ams/flat/updateFlat/"

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
														url : '/ams/flat/deleteFlat/',
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

	'${list.flatId}', '${list.flatNumber}', '${list.wing}',
			'${list.floorNumber}', '${list.electricityMeter}',
			'${list.flatArea}', '${list.parkingDetails}', '${list.gasMeter}',
			'${list.furnishedType}','${list.ownerName}'
	function editFunction(flatId, flatNumber, wing, floorNumber,
			electricityMeter, flatArea, parkingDetails, gasMeter, furnishedType,ownerName) {
		$('#flat_no').val(flatNumber);
		$('#wing').val(wing);
		$('#floor_number').val(floorNumber);
		$('#electricity_meter').val(electricityMeter);
		$('#flat_area').val(flatArea);
		$('#parking_details').val(parkingDetails);
		$('#gas_meter').val(gasMeter);
		$('#furnish_type').val(furnishedType);
		$('#owner_name').val(ownerName);
		$('#flat_id').val(flatId);
	}
		
	/* view function */
	
	function viewFunction(flatId, flatNumber, wing, floorNumber,
			electricityMeter, flatArea, parkingDetails, gasMeter, furnishedType,ownerName) {
				
		document.getElementById("view_flat_no").innerHTML=flatNumber;
		document.getElementById("view_wing").innerHTML=wing;
		document.getElementById("view_floor_number").innerHTML=floorNumber;
		document.getElementById("view_electricity_meter").innerHTML=electricityMeter;
		document.getElementById("view_flat_area").innerHTML=flatArea;
		document.getElementById("view_parking_details").innerHTML=parkingDetails;
		document.getElementById("view_gas_meter").innerHTML=gasMeter;
		document.getElementById("view_furnish_type").innerHTML=furnishedType;
		document.getElementById("view_owner_name").innerHTML=ownerName;
		document.getElementById("view_flat_id").innerHTML=flatId;
		
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
			<%@include file="sidebar.jsp"%>>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div id="page-wrapper">

					<div class="row">
						<div class="col-lg-12">
							<a href="/ams/add_flat" class="btn btn-primary" role="button">Add
								New</a> <br> <br>
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o"></i> Flat's List
									</h3>

								</div>
								<div class="box-body table-responsive no-padding">
									<table id="content_table" class="table table-dark table-hover">
										<thead>

											<tr>
												<th>Sr.No</th>
												<th>Owner Name</th>
												<th>Flat No</th>
												<th>Flat Wing</th>
												<th>Flat floor</th>
												<th>Electricity Meter No</th>
												<th>Flat Area</th>
												<th>Parking Details</th>
												<th>Gas Meter No</th>
												<th>Furnish Type</th>
												<th class="text-center"> Action </th>
											</tr>
										</thead>
										<tbody>


											<c:forEach var="list" items="${flatBeans}" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.ownerName}</td>
													<td>${list.flatNumber}</td>
													<td>${list.wing}</td>
													<td>${list.floorNumber}</td>
													<td>${list.electricityMeter}</td>
													<td>${list.flatArea}</td>
													<td>${list.parkingDetails}</td>
													<td>${list.gasMeter}</td>
													<td>${list.furnishedType}</td>
													<td class="text-center"><a data-placement="top" data-toggle="tooltip"
														title="View">
															<button class="btn btn-primary btn-xs" data-title="view"
																data-toggle="modal" data-target="#view"
																onclick="viewFunction('${list.flatId}', '${list.ownerName}','${list.flatNumber}','${list.wing}', '${list.floorNumber}','${list.electricityMeter}','${list.flatArea}','${list.parkingDetails}','${list.gasMeter}','${list.furnishedType}')">
																<span class="glyphicon glyphicon-th-list"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip" title="Edit">
															<button class="btn btn-primary btn-xs" data-title="Edit"
																data-toggle="modal" data-target="#edit"
																onclick="editFunction('${list.flatId}','${list.ownerName}', '${list.flatNumber}','${list.wing}', '${list.floorNumber}','${list.electricityMeter}','${list.flatArea}','${list.parkingDetails}','${list.gasMeter}','${list.furnishedType}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</button>
													</a> <a data-placement="top" data-toggle="tooltip"
														title="Delete">
															<button class="btn btn-danger btn-xs" data-title="Delete"
																data-toggle="modal" data-target="#delete">
																<span class="glyphicon glyphicon-trash"
																	onclick="deletefunctionTest('${list.flatId}')"></span>
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
										<form action="ams/maintenance/update/" method="post"
											id="edit_customer_form">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label>Owner Name :</label> <input class="form-control "
															id="owner_name" name="owner_name" type="text" readonly>
													</div>

													<div class="form-group">
														<label>Flat Number :</label> <input class="form-control "
															id="flat_no" name="flat_no" type="text">
													</div>

													<div class="form-group">
														<label>Flat Wing :</label> <input class="form-control "
															id="wing" name="wing" type="text">
													</div>

													<div class="form-group">
														<label>Flat Floor :</label> <input class="form-control "
															id="floor_number" name="floor_number" type="text">
													</div>

													<div class="form-group">
														<label>Electricity Meter :</label> <input
															class="form-control " id="electricity_meter"
															name="electricity_meter" type="text">
													</div>

												</div>


												<div class="col-md-6">
													<div class="form-group">
														<label>Flat Area :</label> <input class="form-control "
															id="flat_area" name="flat_area" type="text">
													</div>
													<div class="form-group">
														<label>Parking Details :</label> <input
															class="form-control " id="parking_details"
															name="parking_details" type="text">
													</div>
													<div class="form-group">
														<label>Gas Meter :</label> <input class="form-control "
															id="gas_meter" name="gas_meter" type="text">
													</div>

													<div class="form-group">
														<label>Furnish Type :</label> <input class="form-control "
															id="furnish_type" name="furnish_type" type="text">
													</div>

													<div class="form-group">
														<input class="form-control " id="flat_id" name="flat_id"
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
								<h4 class="modal-title custom_align" id="Heading">Edit Your
									Detail</h4>


							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-6">

										<div class="form-group">
											<label>Owner Name :</label>
											<p id="view_owner_name"></p>
										</div>

										<div class="form-group">
											<label>Flat Number :</label>
											<p id="view_flat_no"></p>
										</div>

										<div class="form-group">
											<label>Wing :</label>
											<p id="view_wing"></p>
										</div>

										<div class="form-group">
											<label>Floor Number :</label>
											<p id="view_floor_number"></p>
										</div>

										<div class="form-group">
											<label>Electricity Meter :</label>
											<p id="view_electricity_meter"></p>
										</div>

									</div>


									<div class="col-md-6">
										<div class="form-group">
											<label>Flat Area :</label>
											<p id="view_flat_area"></p>
										</div>
										<div class="form-group">
											<label>Parking Details :</label>
											<p id="view_parking_details"></p>
										</div>
										<div class="form-group">
											<label>Gas Meter :</label>
											<p id="view_gas_meter"></p>
										</div>
										<div class="form-group">
											<label>Furnish Type :</label>
											<p id="view_furnish_type"></p>
										</div>

										<div class="form-group">
											<input class="form-control " id="flat_id" name="flat_id"
												type="hidden">
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
						</div>
					</div>

				</div>

			</section>
		</div>
		<%@include file="footer.jsp"%>
</body>
</html>