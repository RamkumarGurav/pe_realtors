<?php


$selected_property_type_id;


$bhk_type_id = 0;
$property_age_id = 0;
$plot_facing_type_id = 0;
$door_facing_type_id = 0;
$plot_dimension_sqft = "";
$built_up_area = "";
$in_acres = "";
$in_guntas = "";
$gated_community_type_id = 0;



if (!empty($property_data)) {

  $bhk_type_id = $property_data->bhk_type_id;
  $property_age_id = $property_data->property_age_id;
  $plot_facing_type_id = $property_data->plot_facing_type_id;
  $door_facing_type_id = $property_data->door_facing_type_id;
  $plot_dimension_sqft = $property_data->plot_dimension_sqft;
  $built_up_area = $property_data->built_up_area;
  $in_acres = $property_data->in_acres;
  $in_guntas = $property_data->in_guntas;
  $gated_community_type_id = $property_data->gated_community_type_id;



}

// $property_type_id = 2;

$feilds_details_data = [
  (object) [
    "selected_property_type_id" => 0,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 9,
    "property_age_id_prop" => 0,
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
    "selected_property_type_id" => 2,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 1,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 8,
    "property_age_id_prop" => 0,
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
    "selected_property_type_id" => 7,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 6,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 3,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 4,
    "property_age_id_prop" => 2,
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
    "selected_property_type_id" => 5,
    "property_age_id_prop" => 2,
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





<?php foreach ($feilds_details_data as $row): ?>

  <?php if ($row->selected_property_type_id == $selected_property_type_id): ?>



    <!-- <?php if ($row->property_age_id_prop == 2): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0"> Property Age <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control "  id="property_age_id" name="property_age_id">
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
    <?php elseif ($row->property_age_id_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="inputEmail3" class="col-sm-12 label_content px-2 py-0">Property Age<span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-10">
          <select type="text" class="form-control " id="property_age_id" name="property_age_id">
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
    <?php else: ?>

      <input type="hidden" name="property_age_id" id="property_age_id" value="0" />
    <?php endif; ?> -->


    <?php if ($row->bhk_type_id_prop == 2): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="bhk_type_id" name="bhk_type_id">
          <option value="">Select BHK Type</option>
          <?php foreach ($bhk_type_data as $item) {
            $selected = "";
            if ($item->id == $bhk_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>

            </option>
          <?php } ?>
        </select>
      </div>
    <?php elseif ($row->bhk_type_id_prop == 1): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="bhk_type_id" name="bhk_type_id">
          <option value="">Select BHK Type</option>
          <?php foreach ($bhk_type_data as $item) {
            $selected = "";
            if ($item->id == $bhk_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>

            </option>
          <?php } ?>
        </select>
      </div>
    <?php else: ?>

      <input type="hidden" name="bhk_type_id" id="bhk_type_id" value="0" />
    <?php endif; ?>



    <?php if ($row->plot_facing_type_id_prop == 2): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="plot_facing_type_id" name="plot_facing_type_id">
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
    <?php elseif ($row->plot_facing_type_id_prop == 1): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="plot_facing_type_id" name="plot_facing_type_id">
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
    <?php else: ?>
      <input type="hidden" name="plot_facing_type_id" id="plot_facing_type_id" value="0" />
    <?php endif; ?>


    <?php if ($row->door_facing_type_id_prop == 2): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="door_facing_type_id" name="door_facing_type_id">
          <option value="">Select Door Facing Type</option>
          <?php foreach ($facing_type_data as $item) {
            $selected = "";
            if ($item->id == $door_facing_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>

            </option>
          <?php } ?>
        </select>
      </div>
    <?php elseif ($row->door_facing_type_id_prop == 1): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="door_facing_type_id" name="door_facing_type_id">
          <option value="">Select Door Facing Type</option>
          <?php foreach ($facing_type_data as $item) {
            $selected = "";
            if ($item->id == $door_facing_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>
            </option>
          <?php } ?>
        </select>
      </div>
    <?php else: ?>
      <input type="hidden" name="door_facing_type_id" id="door_facing_type_id" value="0" />
    <?php endif; ?>


    <?php if ($row->gated_community_type_id_prop == 2): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="gated_community_type_id" name="gated_community_type_id">
          <option value="">Select Gated Community Type</option>
          <?php foreach ($gated_community_type_data as $item) {
            $selected = "";
            if ($item->id == $gated_community_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>

            </option>
          <?php } ?>
        </select>
      </div>

    <?php elseif ($row->gated_community_type_id_prop == 1): ?>
      <div class="col-lg col-6 mbb-5">

        <select type="text" class="form-control " id="gated_community_type_id" name="gated_community_type_id">
          <option value="">Select Gated Community Type</option>
          <?php foreach ($gated_community_type_data as $item) {
            $selected = "";
            if ($item->id == $gated_community_type_id) {
              $selected = "selected";
            }
            ?>
            <option value="<?php echo $item->id ?>" <?php echo $selected ?>>
              <?php echo $item->name ?>

            </option>
          <?php } ?>
        </select>
      </div>


    <?php else: ?>
      <input type="hidden" name="gated_community_type_id" id="gated_community_type_id" value="0" />
    <?php endif; ?>


    <!--
    <?php if ($row->plot_dimension_sqft_prop == 2): ?>
      <div class="col-lg col-6 mbb-5">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Plot Dimension in Sqft <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control "  id="plot_dimension_sqft" name="plot_dimension_sqft"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places"
            value="<?= $plot_dimension_sqft ?>" placeholder="Plot Dimension in Sqft">
        </div>
      </div>
    <?php elseif ($row->plot_dimension_sqft_prop == 1): ?>
      <div class="col-md-4 col-sm-6 mb-3">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Plot Dimension in Sqft <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control " id="plot_dimension_sqft" name="plot_dimension_sqft"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places"
            value="<?= $plot_dimension_sqft ?>" placeholder="Plot Dimension in Sqft">
        </div>
      </div>

    <?php else: ?>
      <input type="hidden" name="plot_dimension_sqft" id="plot_dimension_sqft" value="" />
    <?php endif; ?>





     <?php if ($row->built_up_area_prop == 2): ?>
      <div class="col-md-4 col-sm-6 ">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Built Up Area <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control "  id="built_up_area" name="built_up_area"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places" value="<?= $built_up_area ?>"
            placeholder="Built Up Area">
        </div>
      </div>
    <?php elseif ($row->built_up_area_prop == 1): ?>
      <div class="col-md-4 col-sm-6 ">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Built Up Area <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control " id="built_up_area" name="built_up_area"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places" value="<?= $built_up_area ?>"
            placeholder="Built Up Area">
        </div>
      </div>

    <?php else: ?>
      <input type="hidden" name="built_up_area" id="built_up_area" value="" />
    <?php endif; ?>





    <?php if ($row->in_acres_prop == 2): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Acres <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control "  id="in_acres" name="in_acres"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places" value="<?= $in_acres ?>"
            placeholder="Area in Acres">
        </div>
      </div>
    <?php elseif ($row->in_acres_prop == 1): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Acres <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control " id="in_acres" name="in_acres" value="<?= $in_acres ?>"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places" placeholder="Area in Acres">
        </div>
      </div>

    <?php else: ?>
      <input type="hidden" name="in_acres" id="in_acres" value="" />
    <?php endif; ?>



    <?php if ($row->in_guntas_prop == 2): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Guntas <span
            style="color:#f00;font-size: 22px;margin-top: 3px;">*</span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control "  id="in_guntas" name="in_guntas"
            pattern="^\d+(\.\d{1,2})?$" title="A positive number with up to two decimal places" value="<?= $in_guntas ?>"
            placeholder="Area in Guntas">
        </div>
      </div>
    <?php elseif ($row->in_guntas_prop == 1): ?>
      <div class="col-md-4 col-sm-6">
        <label for="name" class="col-sm-12 label_content px-2 py-0">Area in Guntas <span
            style="color:#f00;font-size: 22px;margin-top: 3px;"></span></label>
        <div class="col-sm-12">
          <input type="text" class="form-control " id="in_guntas" name="in_guntas" pattern="^\d+(\.\d{1,2})?$"
            title="A positive number with up to two decimal places" value="<?= $in_guntas ?>" placeholder="Area in Guntas">
        </div>
      </div>

    <?php else: ?>
      <input type="hidden" name="in_guntas" id="in_guntas" value="" />
    <?php endif; ?> 
    -->













  <?php endif; ?>


<?php endforeach; ?>