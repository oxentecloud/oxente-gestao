<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to Grails</title>

	<r:layoutResources />
</head>
<body>
	<div class="span9" id="content">
		<div class="row-fluid quick-actions">
			<div class="span2">
				<a href="user/list" class="quick-action"> <span
					class="icon users"></span> Usuário
				</a>
			</div>
			<div class="span2">
				<a href="#" class="quick-action"> <span class="icon file"></span>
					Blog Entries
				</a>
			</div>
			<div class="span2">
				<a href="#" class="quick-action"> <span
					class="icon conversation"></span> Comments
				</a>
			</div>
			<div class="span2">
				<a href="#" class="quick-action"> <span class="icon picture"></span>
					Images
				</a>
			</div>
			<div class="span2">
				<a href="#" class="quick-action"> <span class="icon pie_chart"></span>
					Stats
				</a>
			</div>
			<div class="span2">
				<a href="#" class="quick-action"> <span class="icon shield"></span>
					Security
				</a>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span7">
				<div class="box">
					<div class="box-title">Example chart</div>
					<div class="box-content">
						<div id="chart" style="height: 220px;"></div>
					</div>
				</div>
			</div>
			<div class="span5">
				<div class="box alternate">
					<div class="box-title">
						<span class="ico"><i class="icon-repeat"></i></span>Recent
						Activity
					</div>
					<div class="box-content nopadding">
						<ul class="activity-list">
							<li><a href="#"> <i class="icon-user"></i> <strong>Admin</strong>
									added <strong>1 user</strong> <span>2 hours ago</span>
							</a></li>
							<li><a href="#"> <i class="icon-file"></i> <strong>Caroline
										Trin</strong> write a <strong>blog post</strong> <span>Yesterday</span>
							</a></li>
							<li><a href="#"> <i class="icon-envelope"></i> <strong>John
										Doe</strong> sent a <strong>message</strong> <span>2 days ago</span>
							</a></li>
							<li><a href="#"> <i class="icon-picture"></i> <strong>Matt
										Armon</strong> updated <strong>profile photo</strong> <span>2
										days ago</span>
							</a></li>
							<li><a href="#"> <i class="icon-user"></i> <strong>Admin</strong>
									bans <strong>3 users</strong> <span>week ago</span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span6">
				<div class="box">
					<div class="box-title">Table</div>
					<div class="box-content nopadding">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Username</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Caroline</td>
									<td>Trin</td>
									<td>@Carolint</td>
								</tr>
								<tr>
									<td>John</td>
									<td>Doe</td>
									<td>@jdoe</td>
								</tr>
								<tr>
									<td>Matt</td>
									<td>Armon</td>
									<td>@marmon</td>
								</tr>
								<tr>
									<td>Jane</td>
									<td>Kowalsky</td>
									<td>@jane-kow</td>
								</tr>
								<tr>
									<td>Tim</td>
									<td>Pacey</td>
									<td>@t-pac</td>
								</tr>
								<tr>
									<td>Steve</td>
									<td>Rovinsky</td>
									<td>@steve-sky</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="span6">
				<div class="box">
					<div class="box-title">Content</div>
					<div class="box-content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute
							irure dolor in reprehenderit in voluptate velit esse cillum
							dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/imperio.general.js"></script>
	-->
	
	<r:require module="application" />	
	<r:require module="index" />
	<!-- Explorer canvas, for IE6-8 support of canvas elements -->
	<!--[if lt IE 9]>
	    <script src="js/excanvas.min.js"></script>
	<![endif]-->
	<!-- 
	<script type="text/javascript" src="js/jquery.flot.min.js"></script>
	<script type="text/javascript" src="js/jquery.flot.resize.min.js"></script>
	<script type="text/javascript" src="js/imperio.dashboard.js"></script>
      -->

	<r:layoutResources />

</body>
</html>
