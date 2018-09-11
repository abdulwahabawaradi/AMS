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
<!-- MONTH YEAR PICKER  -->
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
<script src="/ams/resources/dist/js/jquery.mtz.monthpicker.js"></script>
<script>
$(document).ready(function() {
$('#demo-1').monthpicker();
$('#demo-2').monthpicker({pattern: 'yyyy-mm', 
    selectedYear: 2015,
    startYear: 1900,
    finalYear: 2212,});
	var options = {
    selectedYear: 2010,
    startYear: 2010,
    finalYear: 2025,
    openOnFocus: false // Let's now use a button to show the widget
};

$('#demo-3').monthpicker(options);

$('#demo-3').monthpicker().bind('monthpicker-change-year', function (e, year) {
    $('#demo-3').monthpicker('disableMonths', []); // (re)enables all
    if (year === '2015') {
        $('#demo-3').monthpicker('disableMonths', [1, 2, 3, 4]);
    }
    if (year === '2014') {
        $('#demo-3').monthpicker('disableMonths', [9, 10, 11, 12]);
    }
});

$('#demo-3-button').bind('click', function () {
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
		$('#add_expenses_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				maintenance_Expenses_date : {
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
				
				owner : {
					validators : {
						stringLength : {
							min : 2,
						},
						notEmpty : {
							message : 'Add Parking Area'
						}
					}
				},
				

				maintenance_Expenses_Amount : {
					validators : {
						notEmpty : {
							message : 'Enter Amount'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},

				Expenses_Type : {
					validators : {
						notEmpty : {
							message : 'Enter Details'
						},
						stringLength : {
							min : 2,

							message : 'Select'
						}
					}
				},
				
				expenses_description : {
					validators : {
						notEmpty : {
							message : 'Enter Details'
						},
						stringLength : {
							max : 10,

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

			$('#add_expenses_form').each(function() {
				this.reset();
			});

			$('#add_expenses_form').click(function() {
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
				<div class="contai
      ner">
					<div class="row">
						<!-- left column -->
						<div class="col-md-11">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">Add Rent Cost</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" action="/ams/maintenanceExpenses/add/"
									method="post" id="add_expenses_form">
									<div class="box-body">

										<div class="form-group">
											<label for="Date">Date :</label> <input type="date"
												class="form-control" id="maintenance_Expenses_date"
												name="maintenance_Expenses_date">
										</div>
										
										<div class="form-group">
											<label for="Date">Month and Year:</label> <input type="text"
												id="demo-3" name="mentainence_month_year"><input type="button" value="..."
												id="demo-3-button">
										</div>

										<div class="form-group">
											<label for="Admin"><span class="errorStar">*</span>Entered
												By : </label> <select id="owner" name="owner" class="form-control"
												autofocus>
												<option value="none">Select Admin Name</option>
												<c:forEach var="list" items="${adminBeans}">
													<option value="${list.firstName}">${list.firstName}</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
													<label for="ExpensesType"><span class="errorStar">*</span>Expenses
														Type :</label> <select id="Expenses_Type" name="Expenses_Type"
														class="form-control" autofocus>
														<option value="">Select Expenses Type</option>
														<option value="Worker Salary">Worker Salary</option>
														<option value="Cleaning">Cleaning</option>
														<option value="Furniture">Furniture</option>
														<option value="Gardening">Gardening</option>
														<option value="Plumber">Plumber</option>
														<option value="Electrical Repair">Electrical Repair</option>
														<option value="Water">Water</option>
														<option value="Dustbin service">Dustbin service </option>
														<option value="Sweeper service">Sweeper service</option>
														<option value="Cleaner service">Cleaner service</option>
														<option value="Swimming pool">Swimming pool</option>
														<option value="Press Control">Press Control</option>
														<option value="Other">Other</option>
													</select>
												</div>

										<div class="form-group">
											<label for="Amount">Amount :</label>
											<div class="input-group">
												<input type="text" class="form-control"
													id="maintenance_Expenses_Amount"
													name="maintenance_Expenses_Amount">
												<div class="input-group-addon">$</div>
											</div>
										</div>

										<div class="form-group">
											<label for="description"><span class="errorStar">*</span>Description
												:</label>
											<textarea class="form-control" rows="3"
												id="expenses_description" name="expenses_description"></textarea>
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
</html>
