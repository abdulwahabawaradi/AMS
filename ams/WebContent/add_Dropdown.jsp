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
<style type="text/css">
#success_message {
	display: none;
}
</style>
<script>
	$(document).ready(function() {
		$('#add_generic_form').bootstrapValidator({

		})

		.on('add_generic_form', function(e) {
			$('#success_message').slideDown({
				opacity : "show"
			}, "slow")
			e.preventDefault();
			var $form = $(e.target);
			var bv = $form.data('add_generic_form');
			$.post($form.attr('action'), $form.serialize(), function(result) {
				console.log(result)
			}, 'json');
			$('add_generic_form').each(function() {
				this.reset();
			});
			$('#add_generic_form').click(function() {
				location.reload(true);

			});
		});
	});
</script>


</head>
<header class="main-header">
	<%@include file="header.jsp"%>
</header>

<aside class="main-sidebar">
	<%@include file="sidebar.jsp"%>>
</aside>



<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<div class="content-wrapper">
			<!-- /Flat Form Strat -->
			<section class="content-header">
				<div class="container">
					<div class="row">
						<!-- left column -->
						<div class="col-md-11">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">Add No Of Flat</h3>
								</div>
								<!-- /.box-header -->
								<!-- form start -->
								<form role="form" action="/ams/generic/add/" method="POST"
									id="add_generic_form">
									<div class="box-body">

										<div class="form-group">
											<label for="mainCategory"><span class="errorStar">*</span>Flat
												Wing :</label> <input type="text" class="form-control"
												id="flat_wing" name="flat_wing">
										</div>

										<div class="form-group">
											<label for="subCategory"><span class="errorStar">*</span>Flat
												Floor :</label> <input type="text" class="form-control"
												id="flat_Floor" name="flat_Floor">
										</div>
										
										<div class="form-group">
											<label for="mainCategory"><span class="errorStar">*</span>Flat
												No :</label> <input type="text" class="form-control"
												id="Flat_no" name="Flat_no">
										</div>
										

										<div class="box-footer">
											<button type="submit" class="btn btn-primary">Save</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
