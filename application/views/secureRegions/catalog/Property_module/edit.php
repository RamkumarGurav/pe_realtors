<!-- <style>
	.custom-file-label.form-control-sm::after {
		height: 1.8rem;
		padding: .2rem 0.75rem;
		height: 30px !important;
		line-height: 1.8em !important;
	}

	.custom-file-label {
		margin-bottom: 0;
		margin-top: 0 !important;
		height: 31px !important;
	}

	input[type="file"] {
		display: block;
		height: calc(1.8125rem + 2px);
		height: 50px;
	}
</style> -->
<?





$property_gallery_image_id = $property_id = 0;


$record_action = "Add New Record";
$record_action_type = "insert";
$id = 0;
$sl_no = "";
$name = "";
$property_type_id = 0;
$property_sub_type_id = 0;
$property_custom_id = 0;
$reference_no = "";
$state_id = 0;
$city_id = 0;
$location_id = 0;
$property_age_id = 0;
$bhk_type_id = 0;
$plot_facing_type_id = 0;
$door_facing_type_id = 0;
$plot_dimension_sqft = "";
$built_up_area = "";
$in_acres = "";
$in_guntas = "";
$gated_community_type_id = 0;
$sale_type = "";
$sale_duration_type = "";
$sale_amount = "";
$is_negotiable = 1;
$is_display = "";
$youtube_link = "";
$description = "";
$other_details = "";
$cover_image = "";
$cover_image_title = "";
$cover_image_alt_title = "";
$slug_url = "";
$meta_keyword = "";
$meta_description = "";
$status = 1;


if (!empty($property_data)) {

	$record_action = "Update";
	$record_action_type = "update";
	$id = $property_data->id;
	$sl_no = $property_data->sl_no;
	$name = $property_data->name;
	$property_type_id = $property_data->property_type_id;
	$property_sub_type_id = $property_data->property_sub_type_id;
	$property_custom_id = $property_data->property_custom_id;
	$reference_no = $property_data->reference_no;
	$state_id = $property_data->state_id;
	$city_id = $property_data->city_id;
	$location_id = $property_data->location_id;
	$property_age_id = $property_data->property_age_id;
	$bhk_type_id = $property_data->bhk_type_id;
	$plot_facing_type_id = $property_data->plot_facing_type_id;
	$door_facing_type_id = $property_data->door_facing_type_id;
	$plot_dimension_sqft = $property_data->plot_dimension_sqft;
	$built_up_area = $property_data->built_up_area;
	$in_acres = $property_data->in_acres;
	$in_guntas = $property_data->in_guntas;
	$gated_community_type_id = $property_data->gated_community_type_id;
	$sale_type = $property_data->sale_type;
	$sale_duration_type = $property_data->sale_duration_type;
	$sale_amount = $property_data->sale_amount;
	$is_negotiable = $property_data->is_negotiable;
	$is_display = $property_data->is_display;
	$youtube_link = $property_data->youtube_link;
	$description = $property_data->description;
	$other_details = $property_data->other_details;
	$cover_image = $property_data->cover_image;
	$cover_image_title = $property_data->cover_image_title;
	$cover_image_alt_title = $property_data->cover_image_alt_title;
	$slug_url = $property_data->slug_url;
	$meta_keyword = $property_data->meta_keyword;
	$meta_description = $property_data->meta_description;
	$status = $property_data->status;




}



$display_status_data = [
	(object) ["name" => "No", "value" => 0],
	(object) ["name" => "Yes", "value" => 1],
];
$sale_type_data = [
	(object) ["name" => "Rent", "value" => 1],
	(object) ["name" => "Lease", "value" => 2],
	(object) ["name" => "Sale", "value" => 3],
];
$sale_duration_type_data = [
	(object) ["name" => "Monthly", "value" => 1],
	(object) ["name" => "Yearly", "value" => 2],
	(object) ["name" => "Permanent Sale", "value" => 3],
];


?>



<script>
	$(document).ready(function () {
		$.ajax({
			type: "POST",

			url: '<? echo MAINSITE_Admin ?>catalog/Property-module/get_property_gallery_image_list',
			//dataType : "json",
			data: { "property_gallery_image_id": '<? echo $property_gallery_image_id; ?>', "property_id": '<? echo $property_id; ?>', "withPosition": 1, 'sortByPosition': 1, "<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?>" },
			success: function (result) {
				//   alert(result);
				$('#property_gallery_image_list').html(result);
				//ArrangeTable();
				dragEvent();
			}
		});
	});
</script>
<!-- /.navbar -->

<!-- Main Sidebar Container -->


<!--{{{{{{ Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<!--{{{{{{ Page Module Header with breadcrumb -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">

				<div class="col-sm-6">
					<h1 class="m-0 text-dark">
						<?= $page_module_name ?> </small>
					</h1>
				</div><!-- /.col -->

				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="<?= MAINSITE_Admin . "wam" ?>">Home</a></li>
						<li class="breadcrumb-item"><a
								href="<?= MAINSITE_Admin . $user_access->class_name . "/" . $user_access->function_name ?>">
								<?= $user_access->module_name ?>
								List
							</a></li>
						<? if (!empty($property_data)) { ?>
							<li class="breadcrumb-item"><a
									href="<?= MAINSITE_Admin . $user_access->class_name . "/view/" . $id ?>">View</a>
							</li>
						<? } ?>
						<li class="breadcrumb-item">
							<?= $record_action ?>
						</li>
					</ol>
				</div><!-- /.col -->

			</div><!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- }}}}}} Page Module Header with breadcrumb -->

	<!--{{{{{{ Main content -->
	<section class="content">
		<div class="row">
			<div class="col-12">

				<!-- {{{{{{ Main Card form with Header -->
				<div class="card">

					<!-- {{{{{form-header -->
					<div class="card-header">
						<h3 class="card-title">
							<?= $name ?> <small>
								<?= $record_action ?>
							</small>
						</h3>
					</div>
					<!-- }}}}}.form-header -->


					<!-- {{{{{ Main Form -->
					<?php
					if ($user_access->view_module == 1 || true) {
						?>

						<!-- {{{{{ always echo the "alert_message" before the main "card-body"-->
						<? echo $this->session->flashdata('alert_message'); ?>
						<!-- }}}}} "alert_message" -->


						<div class="card-body">
							<?php echo form_open(
								MAINSITE_Admin . "$user_access->class_name/do_edit",
								array(
									'method' => 'post',
									'id' => 'property_form',
									"name" => "property_form",
									'style' => '',
									'class' => 'form-horizontal',
									'role' => 'form',
									'enctype' => 'multipart/form-data'
								)
							); ?>
							<input type="hidden" name="id" id="id" value="<?= $id ?>" />
							<input type="hidden" name="sl_no" id="sl_no" value="<?= $sl_no ?>" />
							<input type="hidden" name="property_custom_id" id="property_custom_id" value="<?= $property_custom_id ?>" />
							<input type="hidden" name="redirect_type" id="redirect_type" value="" />





							<div class="form-group row">
								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0"> Property Name <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="name" name="name"
											value="<?= $name ?>" placeholder="Property Name">
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Property Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="property_type_id"
											onchange="get_property_sub_type(this.value ,0)" name="property_type_id">
											<option value="">Select Property Type</option>
											<?php foreach ($property_type_data as $item) {
												$selected = "";
												if ($item->id == $property_type_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Property Sub Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<select type="text" class="form-control form-control-sm custom-select" required
											id="property_sub_type_id" name="property_sub_type_id">
											<option value="">Select Property Sub Type</option>
										</select>
									</div>
								</div>

							</div>


							<div class="form-group row">


								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">State <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="state_id"
											onchange="get_city(this.value ,0)" name="state_id">
											<option value="">Select State</option>
											<?php foreach ($state_data as $item) {
												$selected = "";
												if ($item->state_id == $state_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->state_id ?>" <?php echo $selected ?>>
													<?php echo $item->state_name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">City <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<select type="text" class="form-control form-control-sm custom-select" required id="city_id"
											name="city_id" onchange="get_location(this.value,0)">
											<option value="">Select City</option>
										</select>
									</div>
								</div>


								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Location <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<select type="text" class="form-control form-control-sm custom-select" required id="location_id"
											name="location_id">
											<option value="">Select Location</option>
										</select>
									</div>
								</div>


							</div>


							<div class="form-group row">

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Property Age <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="property_age_id"
											name="property_age_id">
											<option value="">Select Property Age</option>
											<?php foreach ($property_age_data as $item) {
												$selected = "";
												if ($item->id == $property_age_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Reference No. <span
											style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" id="reference_no" name="reference_no"
											value="<?= $reference_no ?>" placeholder="Reference No.">
									</div>
								</div>



								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Youtube Link <span
											style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" id="youtube_link" name="youtube_link"
											value="<?= $youtube_link ?>" placeholder="Youtube Link">
									</div>
								</div>
							</div>


							<div class="form-group row" id="add_input_fields">

								<!-- <div class="col-md-4 col-sm-6 mb-3">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">BHK Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="bhk_type_id" name="bhk_type_id">
											<option value="">Select BHK Type</option>
											<?php foreach ($bhk_type_data as $item) {
												$selected = "";
												if ($item->id == $bhk_type_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>
								<div class="col-md-4 col-sm-6 mb-3">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Plot Facing Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="plot_facing_type_id"
											name="plot_facing_type_id">
											<option value="">Select Plot Facing Type</option>
											<?php foreach ($facing_type_data as $item) {
												$selected = "";
												if ($item->id == $plot_facing_type_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>
								<div class="col-md-4 col-sm-6 mb-3">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Door Facing Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="door_facing_type_id"
											name="door_facing_type_id">
											<option value="">Select Door Facing Type</option>
											<?php foreach ($facing_type_data as $item) {
												$selected = "";
												if ($item->id == $door_facing_type_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6 mb-3">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Gated Community Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="gated_community_type_id"
											name="gated_community_type_id">
											<option value="">Select Gated Community Type</option>
											<?php foreach ($gated_community_type_data as $item) {
												$selected = "";
												if ($item->id == $gated_community_type_id) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->id ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>
													<?php if ($item->status != 1) {
														echo " [Block]";
													} ?>
												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6 mb-3">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Plot Dimension in Sqft <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="plot_dimension_sqft"
											name="plot_dimension_sqft" value="<?= $plot_dimension_sqft ?>" placeholder="Plot Dimension in Sqft">
									</div>
								</div>

								<div class="col-md-4 col-sm-6 ">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Built Up Area <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="built_up_area"
											name="built_up_area" value="<?= $built_up_area ?>" placeholder="Built Up Area">
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Area in Acres <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="in_acres" name="in_acres"
											value="<?= $in_acres ?>" placeholder="Area in Acres">
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Area in Guntas <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="in_guntas" name="in_guntas"
											value="<?= $in_guntas ?>" placeholder="Area in Guntas">
									</div>
								</div> -->


							</div>



							<div class="form-group row">

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Sale Type <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="sale_type" name="sale_type"
											onchange="update_sale_duration()">
											<option value="">Select Sale Type</option>


											<?php foreach ($sale_type_data as $item) {
												$selected = "";
												if ($item->value == $sale_type) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->value ?>"  <?php echo $selected ?>>
													<?php echo $item->name ?>

												</option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Sale Duration Type<span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="sale_duration_type"
											name="sale_duration_type">
											<option value="">Select Sale Duration Type</option>
											<?php foreach ($sale_duration_type_data as $item) {
												$selected = "";
												if ($item->value == $sale_duration_type) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->value ?>"
												class="<?= $item->value == 3 ? "d-none" : "" ?>"
												<?php echo $selected ?>>
													<?php echo $item->name ?>

												</option>
											<?php } ?>
											<!-- <option style="display:none;" value="3">Permanent Sale -->
											</option>
										</select>
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Sale Amount <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places"
											class="form-control form-control-sm" required id="sale_amount" name="sale_amount"
											value="<?= $sale_amount ?>" placeholder="Rent/Lease/Sale Amount">
									</div>
								</div>

							</div>


							<div class="form-group">

								<div class="col-md-12">
									<label for="description" class="col-sm-12 label_content px-2 py-0">Property Description <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>

									<textarea required name="description" id="description" required class="form-control"
										rows="5"><? echo $description; ?></textarea>


								</div>

							</div>


							<div class="form-group">

								<div class="col-md-12">
									<label for="other_details" class="col-sm-12 label_content px-2 py-0">Property Other Details <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>

									<textarea required name="other_details" id="other_details" required class="form-control"
										rows="5"><? echo $other_details; ?></textarea>


								</div>

							</div>

							<div class="form-group row">
								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Cover Image <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12 d-flex">
										<div class="input-group" style="width:90%">
											<div class="custom-file">
												<input type="file" name="cover_image" class="custom-file-input" 
												
												<?= $record_action_type=="insert"?"required":"" ?>
												
												id="cover_image"
													accept="image/*">
												<label class="custom-file-label form-control-sm" for="files"></label>
											</div>
										</div>
										<div class="custom-file-display custom-file-display1">
											<?php if (!empty($cover_image)) { ?>
												<span class="pip pip1">
													<a target="_blank" href="<?php echo _uploaded_files_ . 'property_cover_image/' . $cover_image ?>">
														<img class="imageThumb imageThumb1"
															src="<?php echo _uploaded_files_ . 'property_cover_image/' . $cover_image ?>" />
													</a>
												</span>
											<?php } else { ?>
												<span class="pip pip1">
													<img class="imageThumb imageThumb1" src="<?php echo IMAGE_ADMIN ?>no_img.png" />
												</span>
											<?php } ?>
										</div>
									</div>
								</div>


								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Cover Image Title <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="cover_image_title"
											name="cover_image_title" value="<?= $cover_image_title ?>" placeholder="Cover Image Title">
									</div>
								</div>

								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Cover Image Alt Title <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="cover_image_alt_title"
											name="cover_image_alt_title" value="<?= $cover_image_alt_title ?>"
											placeholder="Cover Image Alt Title">
									</div>
								</div>

							</div>

							<div class="form-group row">
								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Slug URL <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="slug_url" name="slug_url"
											pattern="^[a-z0-9]+(?:-[a-z0-9]+)*$"
											title="Slug URL can only contain lowercase letters, numbers, and hyphens." value="<?= $slug_url ?>"
											placeholder="Slug URL">
									</div>
								</div>


								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Meta Keyword <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="meta_keyword" name="meta_keyword"
											value="<?= $meta_keyword ?>" placeholder="Meta Keyword">
									</div>
								</div>


								<div class="col-md-4 col-sm-6">
									<label for="name" class="col-sm-12 label_content px-2 py-0">Meta Description <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-12">
										<input type="text" class="form-control form-control-sm" required id="meta_description"
											name="meta_description" value="<?= $meta_description ?>" placeholder="Meta Description">
									</div>
								</div>


							</div>

							<div class="form-group row">

								<div class="col-md-4 col-sm-6">
									<label for="radioSuccess1" class="col-sm-12 label_content px-2 py-0">Is Negotiable?<span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>

									<div class="col-sm-12">
										<div class="form-check" style="">
											<div class="form-group clearfix">
												<div class="icheck-success d-inline">
													<input type="radio" name="is_negotiable" <?php if ($is_negotiable == 1) {
														echo "checked";
													} ?>
														value="1" id="radioSuccess1">
													<label for="radioSuccess1"> Yes
													</label>
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="icheck-danger d-inline">
													<input type="radio" name="is_negotiable" <?php if ($is_negotiable != 1) {
														echo "checked";
													} ?>
														value="0" id="radioSuccess2">
													<label for="radioSuccess2"> No
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>




							<div class="form-group row">


								<div class="col-md-12 ">
									<label for="asdf" class="col-sm-12 label_content px-2 py-0">Gallery Images </label>


									<div class="card-body py-0 px-2">
										<table class="table table-sm">
											<thead>
												<tr>
													<th>#</th>
													<th width="25%">Image Title</th>
													<th width="25%">Image Alt Title</th>
													<th>Image</th>
													<th></th>
												</tr>
											</thead>
											<tbody class="RFQDetailBody_pgi">
												<? $this->load->view('secureRegions/catalog/Property_module/template/file_line_add_more_pgi', $this->data); ?>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="9"><button type="button" onclick="addNewRFQDeatilLine_pgi(0)"
															class="btn btn-block btn-default">Add New Line</button>
													<td>
												</tr>
											</tfoot>
										</table>
									
									</div>

								</div>

							</div>


							<?php if (!empty($property_data->property_gallery_image)) { ?>
								<div class="form-group row">
									<label for="slug_url" class="col-sm-12 label_content px-2 py-0">Uploaded Gallery Images </label>
									<div class="col-sm-12">
										<div class="row card">
											<div class="col-md-12 card-body ">
												<div class="box box-primary">
													<div class="box-header with-border">

													</div>
													<div class="box-body">

														<link rel="stylesheet" href="<?= _admin_files_ ?>css/tablednd.css" type="text/css" />
														<div class="tableDemo">
															<table class="table table-striped" id="table-2">
																<thead>
																	<tr>
																		<th>Slno.</th>
																		<th>Image</th>
																		<th>Image Title</th>
																		<th>Image Alt Title</th>
																		<th>Position</th>
																		<th>Status</th>
																		<th>Delete</th>
																	</tr>
																</thead>
																<tbody id="property_gallery_image_list">


																	<tr>
																		<td colspan="10">
																			<div class="clearfix text-center">
																				<img src="<? echo MAINSITE . "assets/admin/images/load.gif"; ?>" />
																			</div>
																		</td>
																	</tr>


																</tbody>

															</table>
															<div class="result"></div>
														</div>



														<script src="<?= _admin_files_ ?>js/jquery.tablednd.js" type="text/javascript"></script>

														<script>



															function dragEvent() {
																table_2 = $("#table-2");
																table_2.find("tr:even").addClass("alt");

																$("#table-2").tableDnD({
																	onDragClass: "myDragClass",
																	onDrop: function (table, row) {
																		var rows = table.tBodies[0].rows;
																		var podId = '';
																		for (var i = 0; i < rows.length; i++) {
																			podId += rows[i].id + ",";
																		}

																		$('#property_gallery_image_list').html('<tr><td colspan="10"> <div class="clearfix text-center" ><img  src="<? echo MAINSITE . "assets/admin/images/load.gif"; ?>" /></div></td></tr>');
																		$.ajax({
																			type: "POST",
																			url: '<?= MAINSITE_Admin . 'catalog/Property-module/get_property_gallery_image_list_new_pos' ?>',
																			//dataType : "json",
																			data: { "property_gallery_image_id": '<? echo $property_gallery_image_id; ?>',
																				 "property_id": '<? echo $id; ?>', 'podId': podId, "<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?>" },
																			success: function (result) {
																				// alert(result);
																				$('#property_gallery_image_list').html(result);
																				$(table).parent().find('.result').text("Order Changed Successfully");
																				dragEvent();
																			}
																		});

																	},
																	onDragStart: function (table, row) {
																		$(table).parent().find('.result').text("Started dragging row id " + row.id);

																	},

																});

															}


														</script>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>

							<?php } ?>

							<div class="form-group row">



								<div class="col-md-4 col-sm-6">
									<label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Display Status <span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
									<div class="col-sm-10">
										<select type="text" class="form-control form-control-sm" required id="is_display" name="is_display">
											<option value="">Select Display Status</option>

											<?php foreach ($display_status_data as $item) {
												$selected = "";
												if ($item->value == $is_display) {
													$selected = "selected";
												}
												?>
												<option value="<?php echo $item->value ?>" <?php echo $selected ?>>
													<?php echo $item->name ?>

												</option>
											<?php } ?>
										</select>
									</div>
								</div>


								<div class="col-md-4 col-sm-6">
									<label for="radioSuccess3" class="col-sm-12 label_content px-2 py-0">Status<span
											style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>

									<div class="col-sm-12">
										<div class="form-check" style="">
											<div class="form-group clearfix">
												<div class="icheck-success d-inline">
													<input type="radio" name="status" <?php if ($status == 1) {
														echo "checked";
													} ?> value="1"
														id="radioSuccess3">
													<label for="radioSuccess3"> Active
													</label>
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="icheck-danger d-inline">
													<input type="radio" name="status" <?php if ($status != 1) {
														echo "checked";
													} ?> value="0"
														id="radioSuccess4">
													<label for="radioSuccess4"> Blocked</label>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- /.card-body -->
							<div class="card-footer">
								<center>
									<button type="submit" name="save" onclick=" redirect_type_func('');" value="1"
										class="btn btn-info">Save</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="submit" name="save-add-new" onclick=" redirect_type_func('save-add-new');" value="1"
										class="btn btn-default ">Save And Add New</button>
								</center>
							</div>
							<!-- /.card-footer -->

							<?php echo form_close() ?>
							</table>
						</div>
					<? } else {
						$this->data['no_access_flash_message'] = "You Dont Have Access To View " . $page_module_name;
						$this->load->view('admin/template/access_denied', $this->data);
					} ?>

					<!-- }}}}} Main Form -->
				</div>
				<!--   }}}}}} Main Card form with Header -->
			</div>
		</div>


	</section>
	<!-- }}}}} Main content -->
</div>
<!--}}}}}} Content Wrapper. Contains page content -->


<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>




<script src="https://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
<script>
	window.addEventListener('load', function () {
		//add validation for description
		document.getElementById('property_form').addEventListener('submit', function (event) {
			var description = document.getElementById('description').value.trim();

			if (description === "") {
				toastrDefaultErrorFunc("Tour description is required");
				event.preventDefault(); // Prevent form from submitting
			}
		});
	});
</script>
<!-- <script>
	document.getElementById('slug_url').addEventListener('input', function () {
		var slugInput = this;
		var slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

		if (!slugPattern.test(slugInput.value)) {
			toastrDefaultErrorFunc('Invalid Slug URL format. Only lowercase letters, numbers, and hyphens are allowed.');
		}
	});
</script> -->
<script>
	function update_sale_duration() {
		var saleType = document.getElementById('sale_type').value;
		var saleDurationType = document.getElementById('sale_duration_type');

		if (saleType == '3') { // Sale
			saleDurationType.value = '3'; // Permanent Sale
			saleDurationType.classList.add('readonly');
			saleDurationType.onmousedown = function (e) { e.preventDefault(); }; // Prevent user interaction
		} else {
			saleDurationType.value = '';
			saleDurationType.classList.remove('readonly');
			saleDurationType.onmousedown = null; // Restore user interaction
		}
	}
</script>
<script>


	function get_property_sub_type(property_type_id, property_sub_type_id = 0) {
		$("#property_sub_type_id").html('');
		if (property_type_id > 0) {
			Pace.restart();
			$.ajax({
				url: "<?php echo MAINSITE_Admin . 'Ajax/get_dropdown' ?>",
				type: 'post',
				dataType: "json",
				data: {
					'table_name': 'property_sub_type', 'showable_column_name': 'name', 'select_title': 'Select Property Sub Type',
					'primary_column_name': "id", 'primary_column_value': property_sub_type_id,
					'foreign_column_name': "property_type_id", 'foreign_column_value': property_type_id,
					"<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>"
				},
				success: function (response) {
					$("#property_sub_type_id").html(response.dropdown_html);
				},
				error: function (request, error) {
					toastrDefaultErrorFunc("Unknown Error. Please Try Again");
				}
			});
		}

		$("#add_input_fields").html('');
		if (property_type_id > 0) {
			Pace.restart();
			$.ajax({
				url: "<?php echo MAINSITE_Admin . 'catalog/Property_module/add_input_fields' ?>",
				type: 'post',
				dataType: "json",
				data: { 'selected_property_type_id': property_type_id, "id": <?= $id ?>, "<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?>" },
				success: function (response) {
					$("#add_input_fields").html(response.html_data);
				},
				error: function (request, error) {
					toastrDefaultErrorFunc("Unknown Error. Please Try Again");
				}
			});
		}



	}




	function get_city(state_id, city_id = 0) {
		$("#city_id").html('');;
		$("#location_id").html('');;

		if (state_id > 0) {
			Pace.restart();
			$.ajax({
				url: "<?php echo MAINSITE_Admin . 'Ajax/get_dropdown' ?>",
				type: 'post',
				dataType: "json",
				data: {
					'table_name': 'city', 'showable_column_name': 'city_name', 'select_title': 'Select City',
					'primary_column_name': "city_id", 'primary_column_value': city_id,
					'foreign_column_name': "state_id", 'foreign_column_value': state_id,
					"<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>"
				},
				success: function (response) {
					$("#city_id").html(response.dropdown_html);
				},
				error: function (request, error) {
					toastrDefaultErrorFunc("Unknown Error. Please Try Again");
				}
			});
		}
	}


	function get_location(city_id, location_id = 0) {
		$("#location_id").html('');
		if (city_id > 0) {
			Pace.restart();
			$.ajax({
				url: "<?php echo MAINSITE_Admin . 'Ajax/get_dropdown' ?>",
				type: 'post',
				dataType: "json",
				data: {
					'table_name': 'location', 'showable_column_name': 'location_name', 'select_title': 'Select Location',
					'primary_column_name': "location_id", 'primary_column_value': location_id,
					'foreign_column_name': "city_id", 'foreign_column_value': city_id,
					"<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>"
				},
				success: function (response) {
					$("#location_id").html(response.dropdown_html);
				},
				error: function (request, error) {
					toastrDefaultErrorFunc("Unknown Error. Please Try Again");
				}
			});
		}
	}








	window.addEventListener('load', function () {
		<?php if (!empty($property_type_id) && !empty($property_sub_type_id)) { ?>
			get_property_sub_type(<?php echo $property_type_id ?>, <?php echo $property_sub_type_id ?>);
		<?php } ?>

		// <?php if (!empty($country_id) && !empty($state_id)) { ?>
			// 	get_state(<?php echo $country_id ?>, <?php echo $state_id ?>);
			// <?php } ?>

		<?php if (!empty($city_id) && !empty($state_id)) { ?>
			get_city(<?php echo $state_id ?>, <?php echo $city_id ?>);
		<?php } ?>
		<?php if (!empty($location_id) && !empty($city_id)) { ?>
			get_location(<?php echo $city_id ?>, <?php echo $location_id ?>);
		<?php } ?>

	});

</script>
<script>
	function validateForm() {
		event.preventDefault();
		//user_role user_role_id

		$(".error_span").html("");
		var user_role_id_arr = document.getElementsByName("user_role_id[]");
		var i = 0;
		var user_role_check = true;
		for (i = 0; i < user_role_id_arr.length; i++) {
			if (user_role_id_arr[i].value != '') {
				user_role_check = false;
			}
		}
		if (user_role_check) {
			toastrDefaultErrorFunc("You Did Not Assign The Role To The User.");
			$("#user_role_error").html("You Did Not Assign The Role To The User.");
		}
		else {
			$('#employee_form').attr('onsubmit', '');
			$("#employee_form").submit();
		}
	}

	function redirect_type_func(data) {
		document.getElementById("redirect_type").value = data;
		return true;
	}

	window.addEventListener('load', function () {
		if (window.File && window.FileList && window.FileReader) {
			$("#banner_image").on("change", function (e) {
				var files = e.target.files,
					filesLength = files.length;
				for (var i = 0; i < filesLength; i++) {
					var f = files[i]
					var fileReader = new FileReader();
					fileReader.onload = (function (e) {
						var file = e.target;
						//customized code 
						$(".pip0").remove();
						$(".custom-file-display0").html("<span class=\"pip pip0\">" +
							"<img class=\"imageThumb imageThumb0\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" + "</span>");
					});
					fileReader.readAsDataURL(f);
				}
			});
		} else {
			alert("Your browser doesn't support to File API")
		}

	});


	window.addEventListener('load', function () {
		if (window.File && window.FileList && window.FileReader) {
			$("#cover_image").on("change", function (e) {
				var files = e.target.files,
					filesLength = files.length;
				for (var i = 0; i < filesLength; i++) {
					var f = files[i]
					var fileReader = new FileReader();
					fileReader.onload = (function (e) {
						var file = e.target;
						//customized code 
						$(".pip1").remove();
						$(".custom-file-display1").html("<span class=\"pip pip1\">" +
							"<img  class=\"imageThumb imageThumb1\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" + "</span>");
					});
					fileReader.readAsDataURL(f);
				}
			});
		} else {
			alert("Your browser doesn't support to File API")
		}

	});















</script>

<script>
	/*  >>> ADDING MORE GALLERY FILES*/

	var append_id_pgi = 1;

	function addNewRFQDeatilLine_pgi(id_pgi = 0) {
		append_id_pgi++;
		Pace.restart();
		$.ajax({
			url: "<?= MAINSITE_Admin . $user_access->class_name . '/addNewLine_pgi' ?>",
			type: 'post',
			dataType: "json",
			data: { 'id_pgi': id_pgi, 'append_id_pgi': append_id_pgi, "<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?> " },
			success: function (response) {
				$(".RFQDetailBody_pgi").append(response.template);
				set_qe_sub_table_count_pgi();
				set_qe_sub_table_remove_btn_pgi();
				calculate_qe_sub_table_price_pgi();
				set_input_element_functions_pgi();
				// Initialize Summernote
				$('.summernote').summernote({
					<?= _summernote_ ?>
				});
			},
			error: function (request, error) {
				toastrDefaultErrorFunc("Unknown Error. Please Try Again");
			}
		});
	}

	// Use event delegation for file input change event
	$(document).on('change', '.custom-file-input', function () {
		let fileName = Array.from(this.files).map(x => x.name).join(', ');
		$(this).siblings('.custom-file-label').addClass("selected").html(fileName);
	});

	function set_qe_sub_table_count_pgi() {
		var count_pgi = 0;
		$('.qe_sub_table_count_pgi').each(function (index, value) {
			count_pgi++;
			$(this).html(count_pgi + '.');
		});
	}

	function set_qe_sub_table_remove_btn_pgi() {
		$('.qe_sub_table_remove_td_pgi').html('');
		var count_pgi = 0;
		$('.qe_sub_table_remove_td_pgi').each(function (index, value) {
			count_pgi++;
		});
		if (count_pgi > 1) {
			$('.qe_sub_table_remove_td_pgi').html('<button class="btn btn-outline-danger btn-xs" onclick="remove_qe_sub_table_row_pgi($(this))" title="remove"><i class="fas fa-trash"></i></button>');
		}
	}

	function remove_qe_sub_table_row_pgi(row) {
		row.closest('tr').remove();
		set_qe_sub_table_remove_btn_pgi();
		set_qe_sub_table_count_pgi();
	}



	function del_pgi($pgi_id) {
		if (parseInt($pgi_id) > 0) {
			var s = confirm('You want to delete this file?');
			if (s) {
				$.ajax({
					url: "<?= MAINSITE_Admin . 'Ajax/del_any_file' ?>",
					type: 'post',
					//dataType: "json",
					data: {
						"table_name": "property_gallery_image",
						"id_column": "id",
						'id': $pgi_id,
						"folder_name": "property_gallery_image",
						"<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?>"
					},
					success: function (response) {
						toastrDefaultSuccessFunc("Record Deleted Successfully");
						window.location.reload();
						//alert(response);
						$("#quotation_enquiry_file_" + $pgi_id).hide();
					},
					error: function (request, error) {
						toastrDefaultErrorFunc("Unknown Error. Please Try Again");
					}
				});
			}
		}

		return false;
	}
	/* <<<< ADDING MORE GALLERY FILES*/
</script>
<script>
	// require(['bootstrap-multiselect'], function (purchase) {
	// 	$('#mySelect').multiselect();
	// });
</script>

<script>
	$(document).ready(function () {
		$("#google_map_address").each(function () {
			var target = this;
			var $collapse = $(this).parents('.form-group').next('.collapse');
			var $map = $collapse.find('.another-map-class');
			var placepicker = $(this).placepicker({

				map: $map.get(0),
				placeChanged: function (place) {
					console.log(place);
					if (place.url != undefined && place.url != '') {
						$('#google_map_url').val(place.url);
					}
					console.log("place changed: ", place.formatted_address, this.getLocation());
				}
			}).data('placepicker');
		});

	});


</script>

<script>
	// Check if the File API is supported by the browser
	if (window.File && window.FileList && window.FileReader) {
		$("#cover_image").on("change", function (e) {
			var files = e.target.files, // Get the selected files
				filesLength = files.length; // Get the number of selected files

			// Loop through each selected file
			for (var i = 0; i < filesLength; i++) {
				var f = files[i]; // Get the current file
				var fileReader = new FileReader(); // Create a new FileReader object
				fileReader.onload = (function (e) {
					var file = e.target; // Get the file from the event

					// Customized code to display the image
					$(".pip1").remove(); // Remove any existing .pip elements
					$(".custom-file-display1").html("<span class=\"pip pip1\">" + // Insert the new image inside .custom-file-display element
						"<img class=\"imageThumb imageThumb1\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" + "</span>");
				});
				fileReader.readAsDataURL(f);//actualy this triggers the above "	fileReader.onload"  // Read the file as a data URL (base64 encoded string)
			}
		});
	} else {
		alert("Your browser doesn't support to File API"); // Alert the user if the File API is not supported
	}
</script>
