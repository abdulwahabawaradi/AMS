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
<!-- AutoFill Function  -->
<script>
	$(document).ready(function() {
		var $select = document.getElementById('flatId');
		$select.addEventListener('change', function() {
			var selectedValue = $('#flatId').val();
			$.getJSON('/ams/fund/getFlat/', {
				name : selectedValue
			}, function(data) {

				if (data.flatNumber) {
					$('#flat_No').val(data.flatNumber);
				}

				if (data.ownerName) {
					$('#owner_name').val(data.ownerName);
				}

			});

		});
	});
</script>


<!-- MONTH YEAR PICKER  -->
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
<script src="/ams/resources/dist/js/jquery.mtz.monthpicker.js"></script>
<script>
	$(document).ready(
			function() {
				$('#demo-1').monthpicker();
				$('#demo-2').monthpicker({
					pattern : 'yyyy-mm',
					selectedYear : 2015,
					startYear : 1900,
					finalYear : 2212,
				});
				var options = {
					selectedYear : 2010,
					startYear : 2010,
					finalYear : 2025,
					openOnFocus : false
				// Let's now use a button to show the widget
				};

				$('#demo-3').monthpicker(options);

				$('#demo-3').monthpicker().bind(
						'monthpicker-change-year',
						function(e, year) {
							$('#demo-3').monthpicker('disableMonths', []); // (re)enables all
							if (year === '2015') {
								$('#demo-3').monthpicker('disableMonths',
										[ 1, 2, 3, 4 ]);
							}
							if (year === '2014') {
								$('#demo-3').monthpicker('disableMonths',
										[ 9, 10, 11, 12 ]);
							}
						});

				$('#demo-3-button').bind('click', function() {
					$('#demo-3').monthpicker('show');
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
		$('#add_fund_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {

				flatId : {
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

				fund_date : {
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

				payment_mode : {
					validators : {
						stringLength : {
							min : 1,
						},
						notEmpty : {
							message : 'Add Flat Number'
						}
					}
				},

				fund_amount : {
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

				Fund_description : {
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

			$('#add_fund_form').each(function() {
				this.reset();
			});

			$('#add_fund_form').click(function() {
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
									<h3 class="box-title">Add Fund Cost</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" name="add_fund_form" id="add_fund_form"
									action="/ams/fund/add/" method="POST">
									<div class="box-body">

										<div class="form-group">
											<label for="flatNo"><span class="errorStar">*</span>Flat
												No :</label> <select id="flatId" name="flatId" class="form-control"
												autofocus>
												<option value="">Select Flat</option>
												<c:forEach var="list" items="${flatBeans}">
													<option value="${list.flatId}">${list.flatNumber}</option>
												</c:forEach>
											</select>
										</div>


										<div class="form-group">
											<label for="FlatNo"><span class="errorStar">*</span>Your
												Flat No:</label> <input type="text" class="form-control"
												id="flat_No" name="flat_No" readonly>
										</div>

										<div class="form-group">
											<label for="FlatNo"><span class="errorStar">*</span>Owner
												Name:</label> <input type="text" class="form-control"
												id="owner_name" name="owner_name" readonly>
										</div>


										<div class="form-group">
											<label for="Date"><span class="errorStar">*</span>Date
												:</label> <input type="date" class="form-control" id="fund_date"
												name="fund_date">
										</div>

										<div class="form-group">
											<label for="M_Y"><span class="errorStar">*</span>Month
												and Year:</label> <input type="text" id="demo-3"
												name="funt_month_year"><input type="button"
												value="..." id="demo-3-button">
										</div>

										<div class="form-group">
											<label for="P-type"><span class="errorStar">*</span>
												Payment Mode :</label> <select id="payment_mode" name="payment_mode"
												class="form-control" autofocus>
												<option value="none">Select Payment Mode</option>
												<option value="Online Payment">Online Payment</option>
												<option value="Payment Gateway">Payment Gateway</option>
												<option value="Hand Cash">Cash</option>
												<option value="Cheque">Cheque</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group">
											<label for="Amount"><span class="errorStar">*</span>Amount
												:</label>
											<div class="input-group">
												<input type="text" class="form-control" id="fund_amount"
													name="fund_amount">
												<div class="input-group-addon">$</div>
											</div>
										</div>

										<div class="form-group">
											<label for="description"><span class="errorStar">*</span>Description
												:</label>
											<textarea class="form-control" rows="3" id="Fund_description"
												name="Fund_description"></textarea>
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
