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
		$('#add_maintenance_form').bootstrapValidator({
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {

				maintenance_date : {
					validators : {
						notEmpty : {
							message : 'The date is required'
						},
						date : {
							format : 'DD/MM/YYYY',
							message : 'The date is not a valid'
						}
					}
				},

				mentainence_month_year : {
					validators : {
						notEmpty : {
							message : 'Select Month And Year'
						},
						stringLength : {
							max : 10,

							message : 'Select'
						}
					}
				},


				maintenance_type : {
					validators : {
						notEmpty : {
							message : 'Select Type'
						},
						stringLength : {
							max : 20,

							message : 'Select'
						}
					}
				},

				maintenance_amount : {
					validators : {
						notEmpty : {
							message : 'Add Amount No'
						},
						stringLength : {
							max : 10,

							message : 'Add'
						}
					}
				},

				Due_date : {
					validators : {
						notEmpty : {
							message : 'The date is required'
						},
						date : {
							format : 'DD/MM/YYYY',
							message : 'The date is not a valid'
						}
					}
				},

				maintenance_details : {
					validators : {
						notEmpty : {
							message : 'Add Details'
						},
						stringLength : {
							max : 50,
							message : 'Add'
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

			$('#add_maintenance_form').each(function() {
				this.reset();
			});

			$('#add_maintenance_form').click(function() {
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
									<h3 class="box-title">Add Maintenance Cost</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" name="add_maintenance_form"
									id="add_maintenance_form" action="/ams/maintenance/add/"
									method="POST">
									<div class="box-body">

										<div class="form-group">
											<label for="Date">Date :</label> <input type="date"
												class="form-control" id="maintenance_date"
												name="maintenance_date">
										</div>
										
										<div class="form-group">
											<label for="Date">Month and Year:</label> <input type="text"
												id="demo-3" name="mentainence_month_year"><input type="button" value="..."
												id="demo-3-button">
										</div>

										<div class="form-group">
											<label for="flatwing"><span class="errorStar">*</span>
												Maintenance Type :</label> <select id="maintenance_type"
												name="maintenance_type" class="form-control" autofocus>
												<option value="">---Select Year---</option>
												<option value="Fixed">Fixed</option>
												<option value="Per Sqr feet">Per Square feet</option>
											</select>
										</div>

										<div class="form-group">
											<label for="Amount">Amount :</label>
											<div class="input-group">
												<input type="text" class="form-control"
													id="maintenance_amount" name="maintenance_amount">
												<div class="input-group-addon">$</div>
											</div>
										</div>

										<div class="form-group">
											<label for="Date">Due Date :</label> <input type="date"
												class="form-control" id="Due_date" name="Due_date">
										</div>

										<div class="form-group">
											<label for="Details">Details</label> <input type="text"
												class="form-control" id="maintenance_details"
												name="maintenance_details">
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
