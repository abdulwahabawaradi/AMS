<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		$('#Society_registration_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				society_name : {
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

				society_Address : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Add Flat Number'
						}
					}
				},

				Owner_name : {
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

				contact_no : {
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

				email : {
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

				Wings : {
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

			$('#Society_registration_form').each(function() {
				this.reset();
			});

			$('#Society_registration_form').click(function() {
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
									<h3 class="box-title">Add Details Of Society</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" name="Society_registration_form"
									id="Society_registration_form" action="/ams/society/add/"
									method="post">
									<div class="box-body">
										<div class="row">
											<div class="col-md-6">

												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>Society
														Name :</label> <input type="text" class="form-control"
														id="society_name" name="society_name"
														placeholder="Enter Name">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRAddress"><span class="errorStar">*</span>Society
														Address :</label> <input type="text" id="society_Address"
														name="society_Address" class="form-control"
														placeholder="Enter Address">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>Builder
														Name :</label> <input type="text" class="form-control"
														id="Owner_name" name="Owner_name" placeholder="Enter Name">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="contact"><span class="errorStar">*</span>Contact
														Number :</label> <input type="text" class="form-control"
														id="contact_no" name="contact_no"
														placeholder="Enter 10 Digit Number">
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><span
														class="errorStar">*</span>Email address :</label> <input
														type="text" class="form-control" id="email" name="email"
														placeholder="name@email.com">
													<div class="help-block with-errors"></div>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>NO
														Of Flat Wings :</label> <input type="text" class="form-control"
														id="Wings" name="Wings"
														placeholder="Enter No Of Wings In Society">
												</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="image">Preview :</label> <input type="file"
													name="file" id="profile-img"> <img
													src="/ams/resources/photos/download.png"
													class="img-thumbnail" id="profile-img-tag" width="100px" />
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

		<!-- /Flat Form End -->

		<!-- /.content-wrapper -->
		<%@include file="footer.jsp"%>
</body>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#profile-img-tag').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#profile-img").change(function() {
		readURL(this);
	});
</script>
</html>
