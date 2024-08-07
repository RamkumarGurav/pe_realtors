<?php
$record_action = "Add New Record";
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
$is_rent_lease_sale = "";
$sale_duration_type = "";
$rent_lease_sale_amount = "";
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
  $is_rent_lease_sale = $property_data->is_rent_lease_sale;
  $sale_duration_type = $property_data->sale_duration_type;
  $rent_lease_sale_amount = $property_data->rent_lease_sale_amount;
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

// $property_type_id = 2;

$feilds_details_data = [
  (object) [
    "property_type_id" => 9,

    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 0,
    "door_facing_type_id_prop" => 0,
    "plot_dimension_sqft_prop" => 0,
    "built_up_area_prop" => 0,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],
  (object) [
    "property_type_id" => 2,
    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 0,
    "door_facing_type_id_prop" => 2,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],
  (object) [
    "property_type_id" => 1,
    "bhk_type_id_prop" => 2,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 2,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 1,

  ],

  (object) [
    "property_type_id" => 8,
    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 0,
    "door_facing_type_id_prop" => 0,
    "plot_dimension_sqft_prop" => 0,
    "built_up_area_prop" => 0,
    "in_acres_prop" => 2,
    "in_guntas_prop" => 2,
    "gated_community_type_id_prop" => 0,

  ],

  (object) [
    "property_type_id" => 7,
    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 2,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],


  (object) [
    "property_type_id" => 6,
    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 0,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],

  (object) [
    "property_type_id" => 3,
    "bhk_type_id_prop" => 2,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 2,
    "plot_dimension_sqft_prop" => 0,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 2,

  ],

  (object) [
    "property_type_id" => 4,
    "bhk_type_id_prop" => 2,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 2,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 2,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],

  (object) [
    "property_type_id" => 5,
    "bhk_type_id_prop" => 0,
    "plot_facing_type_id_prop" => 2,
    "door_facing_type_id_prop" => 0,
    "plot_dimension_sqft_prop" => 2,
    "built_up_area_prop" => 0,
    "in_acres_prop" => 0,
    "in_guntas_prop" => 0,
    "gated_community_type_id_prop" => 0,

  ],




];








?>


<?php foreach ($feilds_details_data as $item): ?>

  <?php if ($property_type_id == $item->property_type_id): ?>




    <?php if ($item->bhk_type_id_prop == 2): ?>
      <div class="col-md-4 col-sm-6 mb-3">
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
    <?php elseif ($item->bhk_type_id_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">BHK Type <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control form-control-sm" id="bhk_type_id" name="bhk_type_id">
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
    <?php else: ?>

    <?php endif; ?>

    <?php if ($item->plot_facing_type_id_prop == 2): ?>
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
    <?php elseif ($item->door_facing_type_id_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Plot Facing Type <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control form-control-sm" id="plot_facing_type_id" name="plot_facing_type_id">
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
    <?php else: ?>

    <?php endif; ?>


    <?php if ($item->door_facing_type_id_prop == 2): ?>
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
    <?php elseif ($item->door_facing_type_id_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Door Facing Type <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control form-control-sm" id="door_facing_type_id" name="door_facing_type_id">
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
    <?php else: ?>

    <?php endif; ?>


    <?php if ($item->gated_community_type_id_prop == 2): ?>
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

    <?php elseif ($item->gated_community_type_id_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Gated Community Type <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control form-control-sm" id="gated_community_type_id"
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

    <?php else: ?>

    <?php endif; ?>



    <?php if ($item->plot_dimension_sqft_prop == 2): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Plot Dimension in Sqft <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" required id="plot_dimension_sqft" name="plot_dimension_sqft"
            value="<?= $plot_dimension_sqft ?>" placeholder="Plot Dimension in Sqft">
        </div>
      </div>
    <?php elseif ($item->plot_dimension_sqft_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Plot Dimension in Sqft <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" id="plot_dimension_sqft" name="plot_dimension_sqft"
            value="<?= $plot_dimension_sqft ?>" placeholder="Plot Dimension in Sqft">
        </div>
      </div>

    <?php else: ?>

    <?php endif; ?>





    <?php if ($item->built_up_area_prop == 2): ?>
      <div class="col-md-4 col-sm-6 ">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Built Up Area <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" required id="built_up_area" name="built_up_area"
            value="<?= $built_up_area ?>" placeholder="Built Up Area">
        </div>
      </div>
    <?php elseif ($item->built_up_area_prop == 1): ?>
      <div class="col-md-4 col-sm-6 ">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Built Up Area <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" id="built_up_area" name="built_up_area"
            value="<?= $built_up_area ?>" placeholder="Built Up Area">
        </div>
      </div>

    <?php else: ?>

    <?php endif; ?>





    <?php if ($item->in_acres_prop == 2): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Acres <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" required id="in_acres" name="in_acres"
            value="<?= $in_acres ?>" placeholder="Area in Acres">
        </div>
      </div>
    <?php elseif ($item->in_acres_prop == 1): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Acres <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" id="in_acres" name="in_acres" value="<?= $in_acres ?>"
            placeholder="Area in Acres">
        </div>
      </div>

    <?php else: ?>

    <?php endif; ?>



    <?php if ($item->in_guntas_prop == 2): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Guntas <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" required id="in_guntas" name="in_guntas"
            value="<?= $in_guntas ?>" placeholder="Area in Guntas">
        </div>
      </div>
    <?php elseif ($item->in_guntas_prop == 1): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Guntas <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control form-control-sm" id="in_guntas" name="in_guntas" value="<?= $in_guntas ?>"
            placeholder="Area in Guntas">
        </div>
      </div>

    <?php else: ?>

    <?php endif; ?>






  <?php endif; ?>


<?php endforeach; ?>