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
		$('#add_visitor_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later 

			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				Visitor_date : {
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

				Visitor_name : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Add Name'
						}
					}
				},

				Visitor_address : {
					validators : {
						notEmpty : {
							message : 'Enter Address'
						},
						stringLength : {
							max : 50,

							message : 'Enter'
						}
					}
				},

				Visitor_contactno : {
					validators : {
						notEmpty : {
							message : 'Enter number'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},

				Visitor_flatwing : {
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

				Visitor_flatno : {
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

				Visitor_intime : {
					validators : {
						notEmpty : {
							message : 'Enter In Time'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},

				Visitor_outtime : {
					validators : {
						notEmpty : {
							message : 'Enter Out Time'
						},
						stringLength : {
							max : 10,

							message : 'Enter'
						}
					}
				},

				Visitor_IdProof : {
					validators : {
						notEmpty : {
							message : 'Enter Id No'
						},
						stringLength : {
							max : 50,

							message : 'Enter'
						}
					}
				},

				Visitor_Description : {
					validators : {
						notEmpty : {
							message : 'Enter Description'
						},
						stringLength : {
							max : 50,
							message : 'Enter'
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

			$('#add_visitor_form').each(function() {
				this.reset();
			});

			$('#add_visitor_form').click(function() {
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
			<!-- sidebar: style can be found in sidebar.less -->
			<%@include file="sidebar.jsp"%>
			<!-- /.sidebar -->
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
									<h3 class="box-title">Add Visitor</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" action="/ams/visitor/add/" method="post"
									id="add_visitor_form">
									<div class="box-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="date"><span class="errorStar">*</span>Date
														:</label> <input type="date" class="form-control"
														id="Visitor_date" name="Visitor_date">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRname"><span class="errorStar">*</span>Visitor
														Name :</label> <input type="text" class="form-control"
														id="Visitor_name" name="Visitor_name">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRAddress"><span class="errorStar">*</span>Visitor Address
														:</label>
													<textarea id="Visitor_address" name="Visitor_address"
														class="form-control" rows="5" id="comment"></textarea>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="contact"><span class="errorStar">*</span>Visitor Contact
														Number :</label> <input type="text" class="form-control"
														id="Visitor_contactno" name="Visitor_contactno">
												</div>
											</div>


											<div class="col-md-6">
												<div class="form-group">
													<label for="flatwing"><span class="errorStar">*</span>Flat
														Wing :</label> <select id="Visitor_flatwing"
														name="Visitor_flatwing" class="form-control" autofocus>
														<option value="a">---Select Visit Flat Wing---</option>
														<c:forEach var="list" items="${flatBeans}">
															<option value="${list.wing}">${list.wing}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="flatNo"><span class="errorStar">*</span>Flat
														No :</label> <select id="Visitor_flatno" name="Visitor_flatno"
														class="form-control" autofocus>
														<option value="a">---Select Visit  Flat No---</option>
														<c:forEach var="list" items="${flatBeans}">
															<option value="${list.flatNumber}">${list.flatNumber}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="intime"><span class="errorStar">*</span>IN
														Time :</label> <input type="text" class="form-control"
														id="Visitor_intime" name="Visitor_intime">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="outtime"><span class="errorStar">*</span>OUT
														Time :</label> <input type="text" class="form-control"
														id="Visitor_outtime" name="Visitor_outtime">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRIdproof"><span class="errorStar">*</span>ID
														Proof :</label> <input type="text" class="form-control"
														id="Visitor_IdProof" name="Visitor_IdProof">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label for="txtRDescription"><span
														class="errorStar">*</span>Visitor Description :</label> <input
														type="text" class="form-control" id="Visitor_Description"
														name="Visitor_Description">
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
		<%@include file="footer.jsp"%>
</body>

</html>
