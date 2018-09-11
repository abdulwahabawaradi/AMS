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
				<li class="active"><a href="/ams/dashboard/get/"><i
						class="fa fa-circle-o"></i> Dashboard</a></li>
				<li><a href="/ams/login"><i class="fa fa-circle-o"></i>
						Login</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-home"></i> <span>Society</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/add_society"><i
						class="fa fa-circle-o"></i> Add Society</a></li>
				<li><a href="/ams/society/get/"><i class="fa fa-circle-o"></i>
						View Society Details</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-user"></i> <span>Owner</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/add_user"><i
						class="fa fa-circle-o"></i> Add Owner</a></li>
				<li><a href="/ams/user/get/"><i class="fa fa-circle-o"></i>
						Owner List</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-home"></i> <span>Flat</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/flat/getnew/"><i
						class="fa fa-circle-o"></i> Add Flat</a></li>
				<li><a href="/ams/flat/get/"><i class="fa fa-circle-o"></i>
						Flat List</a></li>
			</ul></li>


		<li class="treeview"><a href="#"> <i class="fa fa-th"></i> <span>Document</span>
				<span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/add_document"><i
						class="fa fa-circle-o"></i> Add Document</a></li>

				<li><a href="/ams/document/get/"><i class="fa fa-circle-o"></i>
						Document's List</a></li>
			</ul></li>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-calendar"></i> <span>Maintenance</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/add_maintenance"><i
						class="fa fa-circle-o"></i> Add Maintenance</a></li>
				<li class="active"><a href="/ams/maintenance/get/"><i
						class="fa fa-circle-o"></i> Maintenance List</a></li>
			</ul></li>
			
			<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-calendar"></i> <span>View Maintenance</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/maintenancelist/getList/"><i
						class="fa fa-circle-o"></i>Maintenance List</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-calendar"></i> <span>Society
					Expenses</span> <span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/maintenanceExpenses/getOwnername/"><i
						class="fa fa-circle-o"></i>Add Expenses</a></li>
				<li class="active"><a href="/ams/maintenanceExpenses/get/"><i
						class="fa fa-circle-o"></i>Expenses List</a></li>
			</ul></li>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-briefcase"></i> <span>Fund</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/fund/addNew/"><i class="fa fa-circle-o"></i>Add
						Fund </a></li>
				<li class="active"><a href="/ams/fund/get/"><i
						class="fa fa-circle-o"></i>Fund List</a></li>
			</ul>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-save"></i> <span>Complain</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/complain/getflat/"><i class="fa fa-circle-o"></i>Add
						Complain </a></li>
				<li class="active"><a href="/ams/complain/get/"><i
						class="fa fa-circle-o"></i>Complain List</a></li>

			</ul></li>
		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-briefcase"></i> <span>Visitor</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/visitor/getflat/"><i class="fa fa-circle-o"></i>Add
						Visitor </a></li>
				<li class="active"><a href="/ams/visitor/get/"><i
						class="fa fa-circle-o"></i>Visitor List</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-road"></i> <span>Parking</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li><a href="/ams/parking/getnew/"><i
						class="fa fa-circle-o"></i>Add Parking</a></li>
				<li class="active"><a href="/ams/parking/get/"><i
						class="fa fa-circle-o"></i>View Parking</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-download-alt"></i> <span>Add Flat</span> 
				<span class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/add_Dropdown"><i
						class="fa fa-circle-o"></i>Add Flat</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-credit-card"></i> <span>Receipt</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/receipt/get/"><i
						class="fa fa-circle-o"></i>Receipt form</a></li>
			</ul></li>

		<li class="treeview"><a href="#"> <i
				class="glyphicon glyphicon-credit-card"></i> <span>Payment</span> <span
				class="pull-right-container"> <i
					class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
			<ul class="treeview-menu">
				<li class="active"><a href="/ams/payment"><i
						class="fa fa-circle-o"></i>Payment form</a></li>
			</ul></li>

	</ul>
</section>
<!-- /.sidebar -->