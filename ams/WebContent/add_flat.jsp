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

<%@ include file="links.jsp"%>
<!-- AutoFill Function  -->
<script>
	$(document).ready(function() {
		var $select = document.getElementById('genericId');
		$select.addEventListener('change', function() {
			var selectedValue = $('#genericId').val();
			$.getJSON('/ams/flat/getgenericId/', {
				name : selectedValue
			}, function(data) {

				if (data.flatNo) {
					$('#flat_No').val(data.flatNo);
				}

				if (data.flatWing) {
					$('#flat_wing').val(data.flatWing);
				}

				if (data.flatFloor) {
					$('#flat_floor').val(data.flatFloor);
				}

			});

		});
	});
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js">
	
</script>
<style type="text/css">
#success_message {
	display: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#add_flat_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				owner : {
					validators : {
						notEmpty : {
							message : 'Select Owner Name'
						},
						stringLength : {
							max : 50,
							message : 'Select'
						}
					}
				},

				genericId : {
					validators : {
						stringLength : {
							min : 1,
						},
						notEmpty : {
							message : 'Add Flat Number'
						}
					}
				},

				flat_wing : {
					validators : {
						notEmpty : {
							message : 'Select Flat Wing'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},

				flat_floor : {
					validators : {
						notEmpty : {
							message : 'Select Flat Wing'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},

				electricity_meter_no : {
					validators : {
						notEmpty : {
							message : 'Enter Meter No'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},

				flat_area : {
					validators : {
						notEmpty : {
							message : 'Enter Flat Area'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},

				parking_detail : {
					validators : {
						notEmpty : {
							message : 'Enter parking detail'
						},
						stringLength : {
							max : 50,
							message : 'Enter'
						}
					}
				},

				gas_meter_no : {
					validators : {
						notEmpty : {
							message : 'Enter Gas detail'
						},
						stringLength : {
							max : 50,
							message : 'Enter'
						}
					}
				},

				furnished_type : {
					validators : {
						notEmpty : {
							message : 'Select Furnish Type'
						},
						stringLength : {
							max : 20,

							message : 'Select'
						}
					}
				},
			}
		})

		.on('success.form.bv', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow") // Do something ...

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

			$('#add_flat_form').each(function() {
				this.reset();
			});

			$('#add_flat_form').click(function() {
				location.reload(true);
			});
		});
	});
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<%@ include file="header.jsp"%>
		</header>
		<aside class="main-sidebar">
			<%@ include file="sidebar.jsp"%>
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- /Flat Form Strat -->
			<section class="content-header">
				<div class="container">
					<div class="row">
						<!-- left column -->
						<div class="col-md-11">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">Flat Registration</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" id="add_flat_form" name="add_flat_form"
									action="/ams/flat/add/" method="post">
									<div class="box-body">

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="Owner"><span class="errorStar">*</span>Owner
														name </label> <select id="owner" name="owner" class="form-control"
														autofocus>
														<option value="none">Select Owner Name</option>
														<c:forEach var="list" items="${userBeans}">
															<option value="${list.userName}">${list.userName}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="flatNo"><span class="errorStar">*</span>Select
														Flat No</label> <select id="genericId" name="genericId"
														class="form-control" autofocus>
														<option value="a">---Select Flat No---</option>
														<c:forEach var="list" items="${genericDropdownBeans}">
															<option value="${list.genericId}">${list.flatNo}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="FlatWing"><span class="errorStar">*</span>Your
														Flat No:</label> <input type="text" class="form-control"
														id="flat_No" name="flat_No" readonly>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="FlatWing"><span class="errorStar">*</span>Flat
														Wing:</label> <input type="text" class="form-control"
														id="flat_wing" name="flat_wing" readonly>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="FlatFloor"><span class="errorStar">*</span>Flat
														Floor:</label> <input type="text" class="form-control"
														id="flat_floor" name="flat_floor" readonly>
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label for="electricitymeterno"><span
														class="errorStar">*</span>Electricity Meter No</label> <input
														type="text" class="form-control" id="electricity_meter_no"
														name="electricity_meter_no" required="required"
														placeholder="Ex :MSCB-123456">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="flatarea"><span class="errorStar">*</span>Flat
														Area</label> <input type="text" class="form-control"
														id="flat_area" name="flat_area" required="required"
														placeholder="Ex :2000sq/ft">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="parkingdetail"><span class="errorStar">*</span>Parking
														Details</label> <input type="text" class="form-control"
														id="parking_detail" name="parking_detail"
														required="required" placeholder="Ex :A-101,150sq/ft">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="gasmeterno"><span class="errorStar">*</span>Gas
														Meter No</label> <input type="text" class="form-control"
														id="gas_meter_no" name="gas_meter_no" required="required"
														placeholder="Ex :GS-123456">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="furnishtype"><span class="errorStar">*</span>Furnish
														Type</label> <select id="furnished_type" name="furnished_type"
														class="form-control" autofocus>
														<option value="">---Select Furnish---</option>
														<option value="Non-Furnish">Non-Furnish</option>
														<option value="Semi Furnish">Semi Furnish</option>
														<option value="Full Furnish">Full Furnish</option>
													</select>
												</div>
											</div>

										</div>
									</div>
									<div class="alert alert-success" role="alert"
										id="success_message">
										Saved <i class="glyphicon glyphicon-ok"></i>successfully!
									</div>
									<div class="box-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>


								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- jQuery 3 -->

		<!-- /Flat Form End -->
		<%@include file="footer.jsp"%>
</body>
</html>
