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
<script type="text/javascript" src="/ams/resources/dist/js/countries.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
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
		$('#add_admin_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				first_name : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Enter Name'
						}
					}
				},
				Last_name : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Enter Name'
						}
					}
				},

				address : {
					validators : {
						notEmpty : {
							message : 'Enter Address'
						},
						stringLength : {
							max : 200,

							message : 'Select'
						}
					}
				},

				user_DOB : {
					validators : {
						notEmpty : {
							message : 'The date is required'
						},
						date : {
							format : 'YYYY/MM/DD',
							message : 'The date is not a valid'
						}
					}
				},

				user_email : {
					validators : {
						notEmpty : {
							message : 'Enter Email'
						},
						stringLength : {
							max : 50,

							message : 'Enter correct Email'
						}
					}
				},

				contact_no : {
					validators : {
						notEmpty : {
							message : 'Enter Contact number'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},
				secondary_contact_no : {
					validators : {
						notEmpty : {
							message : 'Enter Contact number'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},

				aadhar_no : {
					validators : {
						notEmpty : {
							message : 'Enter Adhaar No'
						},
						stringLength : {
							max : 13,

							message : 'Select'
						}
					}
				},

				pancard_no : {
					validators : {
						notEmpty : {
							message : 'Enter Pan No'
						},
						stringLength : {
							max : 15,

							message : 'Select'
						}
					}
				},

				Apassword : {
					validators : {
						notEmpty : {
							message : 'Select Status'
						},
						stringLength : {
							max : 16,

							message : 'Select'
						}
					}
				},
				
				country : {
					validators : {
						notEmpty : {
							message : 'Select Status'
						},
						stringLength : {
							max : 20,

							message : 'Select'
						}
					}
				},
				
				state : {
					validators : {
						notEmpty : {
							message : 'Select Status'
						},
						stringLength : {
							max : 20,

							message : 'Select'
						}
					}
				},
				
				city : {
					validators : {
						notEmpty : {
							message : 'Select Status'
						},
						stringLength : {
							max : 20,

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

			$('#add_admin_form').each(function() {
				this.reset();
			});

			$('#add_admin_form').click(function() {
				location.reload(true);
			});
		});
	});
</script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="#" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b>MS</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>AMS</span>
			</a>

			<nav class="navbar navbar-static-top">

				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="/ams/resources/photos/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs">AMS</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="/ams/resources/photos\images.png" class="img-circle"
									alt="User Image">

									<p>Apartment Management System</p></li>


								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-right">
										<a href="/ams/login" class="btn btn-default btn-flat">Sign
											In</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->

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
									<h3 class="box-title">Admin Registration</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" name="add_admin_form" id="add_admin_form"
									action="admin/add/" method="post">
									<div class="box-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>First
														Name :</label> <input type="text" class="form-control"
														id="first_name" name="first_name"
														placeholder="Enter First Name">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>Last
														Name :</label> <input type="text" class="form-control"
														id="Last_name" name="Last_name"
														placeholder="Enter Last Name">
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><span
														class="errorStar">*</span>Email address :</label> <input
														type="text" class="form-control" id="user_email"
														name="user_email" placeholder="name@email.com">
													<div class="help-block with-errors"></div>
												</div>
											</div>
											
											<div class="col-md-6">
												<div class="form-group">
													<label for="pass"><span
														class="errorStar">*</span>Password:</label> <input
														type="text" class="form-control" id="Apassword"
														name="Apassword" placeholder="Enter Password">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="Country"><span class="errorStar">*</span>Country
														:</label> <select id="country" name="country" class="form-control"
														autofocus>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="State"><span class="errorStar">*</span>State
														:</label> <select name="state" id="state" class="form-control"
														autofocus>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="City"><span class="errorStar">*</span>City
														:</label> <input type="text" class="form-control" id="city"
														name="city" placeholder="Enter City Name">
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRAddress"><span class="errorStar">*</span>Address
														:</label> <input type="text" id="address" name="address"
														class="form-control" placeholder="Enter Address">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="dob"><span class="errorStar">*</span>Date
														Of Birth :</label> <input type="date" class="form-control"
														id="user_DOB" name="user_DOB">
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
													<label for="contact"><span class="errorStar"></span>Secondary
														Contact Number :</label> <input type="text" class="form-control"
														id="secondary_contact_no" name="secondary_contact_no"
														placeholder="Enter 10 Digit Number">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="aadhaarnumber"><span class="errorStar">*</span>Aadhar
														Number :</label> <input type="text" class="form-control"
														id="aadhar_no" name="aadhar_no"
														placeholder="Enter Aadhaar Number">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="pannumber"><span class="errorStar">*</span>Pan
														Card Number :</label> <input type="text" class="form-control"
														id="pancard_no" name="pancard_no"
														placeholder="Enter Pan Number">
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


	</div>
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
