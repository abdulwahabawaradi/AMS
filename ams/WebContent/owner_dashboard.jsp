<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <%@include file="links.jsp" %>
  </head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">

   <header class="main-header">
   <%@include file="header2.jsp" %>
   </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
  <%@include file="sidebar2.jsp" %>    
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <section class="content">
  <!-- /.row start -->
  <div class="row home_dash_box">
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>${totalFlat}</h3>
          <p>Total Floor</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/floor.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>1</h3>
          <p>${totalUser}</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/owner.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>1</h3>
          <p>Total Rented</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/rented.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>1</h3>
          <p>Total Employee</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/employee.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
	<!-- ./col end -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>${totalAdmin}</h3>
          <p>Total Committee</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/comittee.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
                    <h3>$22000.00</h3>
                    <p>Total Fare</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/fair.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
                  <h3>$15000.00</h3>
                     <p>Total Maintenance</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/maintenance.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
	<!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
                   <h3>$10000.00</h3>
                     <p>Total Society Fund</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/fund.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
                  <h3>$3000.00</h3>
                     <p>Total Owner Utility</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/utility.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>${totalComplian}</h3>
          <p>Complain</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/report.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>${totalVisitor}</h3>
          <p>Total Unit</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/room.png"> </div>
        <a href="/ams/dashboard/getOwner/" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
    <!-- col start -->
    <div class="col-lg-3 col-xs-6">
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>Settings</h3>
          <p>&nbsp;</p>
        </div>
        <div class="icon"> <img height="80" width="80" src="/ams/resources/photos/setting.png"> </div>
        <a href="#" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a> </div>
    </div>
    <!-- ./col end -->
  </div>
  <!-- /.row end -->
</section>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@include file="footer.jsp" %>
  </body>
</html>
