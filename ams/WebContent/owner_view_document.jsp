<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Apartment</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <%@include file="links.jsp"%>
  <%@include file="pagination_data.jsp"%>
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
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div id="page-wrapper">

            <div class="row">
                <div class="col-lg-12">
				<a href="document.html" class="btn btn-primary" role="button">Add New</a>
				<br>
				<br>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Document List</h3>
							
                        </div>
                        <div class="box-body table-responsive no-padding">
						<table id="content_table" class="table table-dark table-hover">
								<thead>
								  <tr>
									<th>Document</th>
									<th>Other Document</th>								
									<th></th>
									<th></th>
									<th></th>
									
								  </tr>
								</thead>
								<tbody>
								  <tr>
									<td>Sample</td>
									<td>Sample</td>																	
									<td><a href="documentview.html" class="btn btn-primary btn-xs" role="button"><span class="glyphicon glyphicon-list-alt"></span>View</a></td>
									<td><a href="document.html" class="btn btn-primary btn-xs"  role="button"><span class="glyphicon glyphicon-pencil"></span>Update</a></td>
									<td><a href="#" class="btn btn-primary btn-xs"  role="button"><span class="glyphicon glyphicon-remove"></span>Delete</a></td>
									</tr>
								</tbody>
							  </table>
							  <div class="col-md-12 text-center">
     								 <ul class="pagination pagination-lg pager" id="myPager"></ul>
      						  </div>
							</div>

                            <div id="shieldui-grid1"></div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    
  </div>
  
  <%@include file="footer.jsp"%>
  </body>
</html>
