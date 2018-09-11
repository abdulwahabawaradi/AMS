<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
	<!-- Sidebar user panel -->
	<div class="user-panel">
		<div class="pull-left image">
			<img src="/ams/resources/photos/user2-160x160.jpg" class="img"
				alt="User Image">
		</div>
		<div class="pull-left info">
			<p>SANDEEPRAJ</p>
			<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
		</div>
	</div>
	<!-- search form -->
	<form action="#" method="get" class="sidebar-form">
		<div class="input-group">
			<input type="text" name="q" class="form-control"
				placeholder="Search..."> <span class="input-group-btn">
				<button type="submit" name="search" id="search-btn"
					class="btn btn-flat">
					<i class="fa fa-search"></i>
				</button>
			</span>
		</div>
	</form>
	<!-- /.search form -->
	<!-- sidebar menu: : style can be found in sidebar.less -->
	<ul class="sidebar-menu" data-widget="tree">
		<li class="header">MAIN NAVIGATION</li>
		<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
				<span>Index</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/dashboard/getOwner/"><i
						class="fa fa-circle-o"></i> Dashboard</a></li>
				<li><a href="/ams/owner_login"><i class="fa fa-circle-o"></i>
						Login</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-home"></i> <span>Society</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/society/getowner/"><i
						class="fa fa-circle-o"></i> View Society Details</a></li>
			</ul></li>


		<li class="treeview"><a href="#"> <i class="fa fa-th"></i> <span>Document</span>
				<span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/owner_add_document"><i
						class="fa fa-circle-o"></i> Add Document</a></li>

				<li><a href="/ams/document/getowner/"><i
						class="fa fa-circle-o"></i> Document's List</a></li>
			</ul></li>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-calendar"></i> <span>Maintenance</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
<!-- 				<li class="active"><a href="/ams/maintenance/getOwner/"><i -->
<!-- 						class="fa fa-circle-o"></i>Maintenance List</a></li> -->
				<li class="active"><a href="/ams/maintenancelist/getList2/"><i
						class="fa fa-circle-o"></i>Maintenance List</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-calendar"></i> <span>Society
					Expenses</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a
					href="/ams/maintenanceExpenses/getownerexpenses/"><i
						class="fa fa-circle-o"></i>Expenses List</a></li>
			</ul></li>


		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-save"></i> <span>Complain</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/complain/getownerflat/"><i
						class="fa fa-circle-o"></i>Add Complain </a></li>
				<li class="active"><a href="/ams/complain/getowner/"><i
						class="fa fa-circle-o"></i>Complain List</a></li>

			</ul></li>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-briefcase"></i> <span>Visitor</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/visitor/getownerflat/"><i
						class="fa fa-circle-o"></i>Add Visitor </a></li>
				<li class="active"><a href="/ams/visitor/getowner/"><i
						class="fa fa-circle-o"></i>Visitor List</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-road"></i> <span>Parking</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/parking/getnew2/"><i
						class="fa fa-circle-o"></i>Add Parking</a></li>
				<li class="active"><a href="/ams/parking/getowner/"><i
						class="fa fa-circle-o"></i>View Parking</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-credit-card"></i> <span>Payment</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/owner_payment"><i
						class="fa fa-circle-o"></i>Payment form</a></li>
			</ul></li>

	</ul>
</section>
<!-- /.sidebar -->