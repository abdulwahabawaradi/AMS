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
		$('#add_complain_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				complain_flatno : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Select flat Number'
						}
					}
				},
				
				Complain_User : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Enter User Name'
						}
					}
				},
				
				Complain_title : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Add Compalain Type'
						}
					}
				},

				Complain_description : {
					validators : {
						notEmpty : {
							message : 'Add Description'
						},
						stringLength : {
							max : 200,

							message : 'Select'
						}
					}
				},

				Compalin_date : {
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

			$('#add_complain_form').each(function() {
				this.reset();
			});

			$('#add_complain_form').click(function() {
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
			<!-- /Flat Form Strat -->
			<section class="content-header">
				<div class="container">
					<div class="row">
						<!-- left column -->
						<div class="col-md-11">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">Add New Complain</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" action="/ams/complain/add/" method="POST"
									id="add_complain_form">
									<div class="box-body">

										<div class="form-group">
											<label for="flatNo"><span class="errorStar">*</span>Flat
												No :</label> <select id="complain_flatno" name="complain_flatno"
												class="form-control" autofocus>
												<option value="a">---Select Visit Flat No---</option>
												<c:forEach var="list" items="${flatBeans}">
													<option value="${list.flatNumber}">${list.flatNumber}</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
											<label for="txtRname"><span class="errorStar">*</span>User
												Name :</label> <input type="text" class="form-control"
												id="Complain_User" name="Complain_User" required="required">
										</div>

										<div class="form-group">
											<label for="date"><span class="errorStar">*</span>Date:</label>
											<input type="date" class="form-control" id="Compalin_date"
												name="Compalin_date">
										</div>

										<div class="form-group">
											<label for="txtRname"><span class="errorStar">*</span>Complain
												Title :</label> <input type="text" class="form-control"
												id="Complain_title" name="Complain_title"
												required="required">
										</div>

										<div class="form-group">
											<label for="description"><span class="errorStar">*</span>Complain
												:</label>
											<textarea class="form-control" rows="5"
												id="Complain_description" name="Complain_description"
												placeholder="Enter Your Complain"></textarea>
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
	</div>


	<!-- /Flat Form End -->

	<!-- /.content-wrapper -->
	<%@include file="footer.jsp"%>
</body>
</html>
