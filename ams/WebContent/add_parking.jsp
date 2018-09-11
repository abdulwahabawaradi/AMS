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
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js">
</script>
<style type="text/css">
#success_message {
	display: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#add_parking_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				Slot_no: {
	                validators: {
	                        stringLength: {
	                        min: 2,
	                    },
	                        notEmpty: {
	                        message: 'Add Parking Area'
	                    }
	                }
	            },

				parking_flat_wing : {
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

				parking_flat_no : {
					validators : {
						notEmpty : {
							message : 'Select Flat No'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},

				parking_owner : {
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
			}
		}).on('success.form.bv', function(e) {
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

			$('#add_parking_form').each(function() {
				this.reset();
			});

			$('#add_parking_form').click(function() {
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
			<!-- /Flat Form Strat -->
			<section class="content-header">
				<div class="container">
					<div class="row">
						<!-- left column -->
						<div class="col-md-11">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">Add Parking</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" action="/ams/parking/add/" method="POST"
									id="add_parking_form">
									<div class="box-body">

										<div class="form-group">
											<label for="Parking_Area">Parking Area :</label> <input
												type="text" class="form-control" id="Slot_no" name="Slot_no">
										</div>

										<div class="form-group">
											<label for="flat_wing"><span class="errorStar">*</span>Flat
												Wing :</label> <select id="parking_flat_wing"
												name="parking_flat_wing" class="form-control" autofocus>
												<option value="a">---Select Flat Wing---</option>
												<c:forEach var="list" items="${flatBeans}">
													<option value="${list.wing}">${list.wing}</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
											<label for="flat_No"><span class="errorStar">*</span>Flat
												No :</label> <select id="parking_flat_no" name="parking_flat_no"
												class="form-control" autofocus>
												<option value="">---Select Flat---</option>
												<c:forEach var="list" items="${flatBeans}">
													<option value="${list.flatNumber}">${list.flatNumber}</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
											<label for="owner_parking"><span class="errorStar">*</span>Owner
												Name :</label> <select id="parking_owner" name="parking_owner"
												class="form-control" autofocus>
												<option value="">---Select Owner---</option>
												<c:forEach var="list" items="${flatBeans}">
													<option value="${list.ownerName}">${list.ownerName}</option>
												</c:forEach>
											</select>
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


		<%@include file="footer.jsp"%>


		<!-- /Flat Form End -->

		<!-- /.content-wrapper -->
	</div>
</body>
</html>
