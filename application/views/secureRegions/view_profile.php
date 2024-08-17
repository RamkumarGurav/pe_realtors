<?php

$page_module_name = "Employee";

?>
<?
$name = "";
$admin_user_id = 0;
$status = 1;
$record_action = "Add New Record";
if (!empty($admin_user_data)) {
	// $record_action = "Update";
	// $admin_user_id = $admin_user_data->admin_user_id;
	// $name = $admin_user_data->name;
	// $status = $admin_user_data->status;

}
?>
<!-- /.navbar -->

<!-- Main Sidebar Container -->


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark"><?= $page_module_name ?> <small>Details</small></h1>
				</div><!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="<?= MAINSITE_Admin . "wam" ?>">Home</a></li>
						<li class="breadcrumb-item active">Profile</li>
					</ol>
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<? ?>
	<section class="content">
		<div class="row">

			<div class="col-12">
				<?
				if (empty($admin_user_data->username)) {
					echo '<div class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-exclamation-triangle"></i> You Have Not Set The User Name  </div>';
				}

				echo $this->session->flashdata('alert_message');
				if (!empty($profile_alert_massage)) {
					echo $profile_alert_massage;
				}
				?>
				<div class="card">
					<div class="card-header d-flex p-0">
						<h3 class="card-title p-3">Tabs</h3>
						<ul class="nav nav-pills ml-auto p-2">
							<li class="nav-item"><a class="nav-link <? if ($tab_type == 'profile') {
								echo "active";
							} ?> " href="#tab_profile" data-toggle="tab">Profile</a></li>
							<li class="nav-item"><a class="nav-link <? if ($tab_type == 'password') {
								echo "active";
							} ?> " href="#tab_password" data-toggle="tab">Change Password</a></li>
							<li class="nav-item"><a class="nav-link <? if ($tab_type == 'user_name') {
								echo "active";
							} ?>" href="#tab_user_name" data-toggle="tab">User Name</a></li>
							<? /* ?><li class="nav-item dropdown">
																																			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">
																																				Dropdown <span class="caret"></span>
																																			</a>
																																			<div class="dropdown-menu">
																																				<a class="dropdown-item" tabindex="-1" href="#">Action</a>
																																				<a class="dropdown-item" tabindex="-1" href="#">Another action</a>
																																				<a class="dropdown-item" tabindex="-1" href="#">Something else here</a>
																																				<div class="dropdown-divider"></div>
																																				<a class="dropdown-item" tabindex="-1" href="#">Separated link</a>
																																			</div>
																																		</li><? */ ?>
						</ul>
					</div><!-- /.card-header -->
					<div class="card-body">
						<div class="tab-content">
							<div class="tab-pane <? if ($tab_type == 'profile') {
								echo "active";
							} ?>" id="tab_profile">
								<table id="" class="table table-bordered table-hover myviewtable responsiveTableNewDesign">
									<tbody>
										<tr>
											<td>
												<strong class="full">Data Base Id</strong>
												<?php echo $admin_user_data->admin_user_id ?>
											</td>
											<td>
												<strong class="full">Role</strong>
												<?php if (count($admin_user_data->roles) > 1) { ?>
													<table class="table table-hover text-nowrap" style="width:90%">
														<thead>
															<tr>
																<th style="width: 10px">#</th>
																<th>Company</th>
																<th>Role </th>
															</tr>
														</thead>
														<tbody>
															<?php $c_count = 0;
															foreach ($admin_user_data->roles as $role) {
																$c_count++; ?>
																<tr>
																	<td><?php echo $c_count ?>.</td>
																	<td><?php echo $role->company_unique_name ?></td>
																	<td><?php echo $role->admin_user_role_name ?></td>
																</tr>
															<?php } ?>
														</tbody>
													</table>
												<?php } else {
													$role = $admin_user_data->roles[0]; ?>
													<?php echo $role->admin_user_role_name ?>
												<?php } ?>
											</td>
											<td>
												<strong class="full">Designation</strong>
												<?php echo $admin_user_data->designation_name ?>
											</td>
											<td>
												<strong class="full">Joining Date1</strong>
												<?php if (!empty($admin_user_data->joining_date)) {
													echo date("d-m-Y", strtotime($admin_user_data->joining_date));
												} else {
													echo "-";
												} ?>
											</td>
											<td>
												<strong class="full">Termination By</strong>
												<?php if (!empty($admin_user_data->termination_date) && $admin_user_data->termination_date != '0000-00-00' && $admin_user_data->termination_date != '01-01-1970' && $admin_user_data->termination_date != '1970-01-01') {
													echo date("d-m-Y", strtotime($admin_user_data->termination_date));
												} else {
													echo "-";
												} ?>
											</td>


										</tr>

										<tr>
											<td>
												<strong class="full">Employee Name</strong>
												<?php echo $admin_user_data->admin_user_name ?>
											</td>
											<td>
												<strong class="full">Password</strong>
												<?php echo $admin_user_data->show_password ?>
											</td>
											<td>
												<strong class="full">Email Id</strong>
												<?php echo $admin_user_data->email ?>
											</td>
											<td colspan="4">
												<strong class="full">Address</strong>
												<?php echo $admin_user_data->address1;
												if (!empty($admin_user_data->address1)) {
													echo ", " . $admin_user_data->address2;
												}
												if (!empty($admin_user_data->address3)) {
													echo ", " . $admin_user_data->address3;
												}
												echo ", " . $admin_user_data->city_name . " ($admin_user_data->pincode) ";
												echo ", " . $admin_user_data->state_name;
												echo ", " . $admin_user_data->country_name . " ($admin_user_data->dial_code) ";
												?>
											</td>


										</tr>
										<tr>
											<td>
												<strong class="full">Country</strong>
												<?php echo $admin_user_data->country_name ?>
											</td>
											<td>
												<strong class="full">Mobile No</strong>
												<?php echo $admin_user_data->mobile_no ?>
											</td>
											<td>
												<strong class="full">Alt Mobile No</strong>
												<?php echo $admin_user_data->alt_mobile_no ?>
											</td>
											<td>
												<strong class="full">Fax No</strong>
												<?php echo $admin_user_data->fax_no ?>
											</td>



											<td>
												<strong class="full">Files</strong>
												<?php if (!empty($admin_user_data->files)) { ?>
													<ol>
														<?php foreach ($admin_user_data->files as $f) { ?>
															<li><?php echo $f->file_title ?> &nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank"
																	href="<?php echo _uploaded_files_ . 'admin_user_file/' . $f->file_name ?>">View</a></li>
														<?php } ?>
													</ol>

												<?php } else { ?>-<?php } ?>
											</td>
										</tr>
										<tr>

											<td>
												<strong class="full">Last Login IP</strong>
												<?php echo $admin_user_data->last_loginip ?>
											</td>
											<td>
												<strong class="full">Last Login On</strong>
												<?php if (!empty($admin_user_data->last_login)) {
													echo date("d-m-Y h:i:s A", strtotime($admin_user_data->last_login));
												} else {
													echo "-";
												} ?>
											</td>
											<td>
												<strong class="full">Added On</strong>
												<?php echo date("d-m-Y h:i:s A", strtotime($admin_user_data->added_on)) ?>
											</td>
											<td>
												<strong class="full">Added By</strong>
												<?php echo $admin_user_data->added_by_name ?>
											</td>

										</tr>



										<tr>
											<td>
												<strong class="full">Updated On</strong>
												<?php if (!empty($admin_user_data->updated_on)) {
													echo date("d-m-Y h:i:s A", strtotime($admin_user_data->updated_on));
												} else {
													echo "-";
												} ?>
											</td>
											<td>
												<strong class="full">Updated By</strong>
												<?php if (!empty($admin_user_data->updated_by_name)) {
													echo $admin_user_data->updated_by_name;
												} else {
													echo "-";
												} ?>
											</td>
											<td colspan="3">
												<strong class="full">Status</strong>
												<?php if ($admin_user_data->status == 1) { ?> Active <i
														class="fas fa-check btn-success btn-sm "></i>
												<?php } else { ?> Block <i class="fas fa-ban btn-danger btn-sm "></i>
												<?php } ?>
											</td>
										</tr>

									</tbody>

								</table>

							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane <? if ($tab_type == 'password') {
								echo "active";
							} ?>" id="tab_password">

								<?php echo form_open(MAINSITE_Admin . "wam/view-profile", array('method' => 'post', 'id' => 'ptype_list_form', "name" => "ptype_list_form", 'style' => '', 'class' => 'form-horizontal', 'role' => 'form', 'enctype' => 'multipart/form-data')); ?>

								<input type="hidden" name="tab_type" id="tab_type" value="password" />

								<div class="form-group row">
									<div class="col-md-4 col-sm-6">
										<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Old Password <span
												class="text-danger sup">*</span></label>
										<div class="col-sm-12">
											<input type="password" class="form-control form-control-sm" required id="old_password"
												name="old_password" placeholder="Old Password">
										</div>
									</div>

									<div class="col-md-4 col-sm-6">
										<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">New Password <span
												class="text-danger sup">*</span></label>
										<div class="col-sm-12">
											<input type="password" class="form-control form-control-sm" required id="new_password"
												name="new_password" placeholder="New Password">
										</div>
									</div>

									<div class="col-md-4 col-sm-6">
										<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Re Enter Password <span
												class="text-danger sup">*</span></label>
										<div class="col-sm-12">
											<input type="password" class="form-control form-control-sm" required id="re_new_password"
												name="re_new_password" placeholder="Re Enter Password">

										</div>
									</div>

								</div>
								<!-- /.card-body -->
								<div class="card-footer">
									<center>
										<button type="submit" name="update_password_button" value="1" class="btn btn-info">Update</button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</center>
								</div>
								<!-- /.card-footer -->


								<?php echo form_close() ?>
							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane <? if ($tab_type == 'user_name') {
								echo "active";
							} ?>" id="tab_user_name">
								<?php echo form_open(MAINSITE_Admin . "wam/view-profile", array('method' => 'post', 'id' => 'ptype_list_form', "name" => "ptype_list_form", 'style' => '', 'class' => 'form-horizontal', 'role' => 'form', 'enctype' => 'multipart/form-data')); ?>
								<input type="hidden" name="tab_type" id="tab_type" value="user_name" />

								<div class="form-group row">
									<div class="col-sm-4 offset-2 row">
										<label for="inputEmail3" class="col-sm-5 label_content text-right mt-2">User Name <span
												class="text-danger sup">*</span></label>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-sm" required id="user_name" name="user_name"
												placeholder="User Name">
										</div>
									</div>

									<div class="col-sm-4 row">
										<label for="inputEmail3" class="col-sm-4 label_content text-right mt-2">Password
											<span class="text-danger sup">*</span></label>
										<div class="col-sm-6">
											<input type="password" class="form-control form-control-sm" required id="password" name="password"
												placeholder="Password">
										</div>
									</div>

								</div>
								<!-- /.card-body -->
								<div class="card-footer">
									<center>
										<button type="submit" name="update_username_button" value="1" class="btn btn-info">Update</button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</center>
								</div>
								<!-- /.card-footer -->


								<?php echo form_close() ?>
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div><!-- /.card-body -->
				</div>
			</div>
		</div>


	</section>
	<? ?>
</div>

<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>