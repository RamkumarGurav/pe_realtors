<section class="recently breadcrumb bg-white home18">
  <div class="container">
    <div class="sec-title" style="padding-bottom: 1.5em !important">
      <h2><span>Search </span>Landing Page</h2>
      <!-- <p>Verified &amp; Validated properties for customer consideration</p> -->
    </div>
  </div>
</section>
<section class="mb-5">
  <div class="container">
    <div>

      <form name="search_results_form" id="search_results_form" action="<?= MAINSITE ?>search-results"
        accept-charset="utf-8" autocomplete="off" enctype="multipart/form-data" method="POST">
        <input type="hidden" name="search_results_form_type" value="search_results_form">
        <div class="row align-items-center justify-content-center">
          <div class="col-lg col-6 mbb-5">
            <!-- <select style="width: 100%"> -->
            <select type="text" class="form-control" id="state_id" name="state_id" onchange="get_city(this.value ,0)"
              style="width: 100%;">
              <option value="">Select State</option>
              <?php foreach ($state_data as $cd) {
                $selected = "";
                if ($cd->state_id == $state_id) {
                  $selected = "selected";
                }
                ?>
                <option value="<?php echo $cd->state_id ?>" <?php echo $selected ?>>
                  <?php echo $cd->state_name ?>

                </option>
              <?php } ?>
            </select>

          </div>
          <div class="col-lg col-6 mbb-5">
            <select type="text" class="form-control" id="city_id" name="city_id" onchange="get_location(this.value ,0)"
              style="width: 100%;">
              <option value="">Select City</option>
            </select>
          </div>
          <div class="col-lg col-6 mbb-5">
            <select type="text" class="form-control" id="location_id" name="location_id" style="width: 100%;">
              <option value="">Select Location</option>
            </select>
          </div>

          <div class="col-lg col-6 mbb-5">
            <select type="text" class="form-control" id="property_type_id" name="property_type_id"
              onchange="get_property_sub_type(this.value ,0)" style="width: 100%;">
              <option value="0">Select Property Type</option>
              <?php foreach ($property_type_data as $pt) {
                $selected = "";
                if ($pt->id == $property_type_id) {
                  $selected = "selected";
                }
                ?>
                <option value="<?php echo $pt->id ?>" <?php echo $selected ?>>
                  <?php echo $pt->name ?>

                </option>
              <?php } ?>
            </select>
          </div>
          <div class="col-lg col-6 mbb-5">
            <select type="text" class="form-control" id="property_sub_type_id" name="property_sub_type_id"
              style="width: 100%;">
              <option value="0">Property Sub Type</option>
            </select>
          </div>
          <!--  <div class="col-lg-2">
                                             <a class="primarybtn">Search</a>
                                          </div> -->
        </div>

        <div id="add_input_fields" class="row align-items-center justify-content-center">
        </div>

        <div class="row mt-4 align-items-center justify-content-center">


          <div class="col-lg col-6 mbb-5">
            <select class="form-control" style="width: 100%">
              <option>Appro Build up Area </option>
            </select>
          </div>
          <div class="col-lg col-6 mbb-5">
            <select class="form-control" style="width: 100%">
              <option>Price Range </option>
            </select>
          </div>

        </div>

        <div class="row mt-4 align-items-center justify-content-center">
          <div>
            <button type="submit" class="searchbtn" style="width: 100%">Search</button>
          </div>
        </div>
      </form>






      <?php if (!empty($property_data)): ?>
        <table style="width: 100%;margin-top: 30px" class="table table-striped">
          <tbody>
            <tr>
              <th>Property ID</th>
              <th>Property Type</th>
              <th>Property Description</th>
            </tr>
            <?php foreach ($property_data as $property_item): ?>

              <tr>


                <td><?= $property_item->property_custom_id ?></td>
                <td><?= $property_item->property_type_name ?></td>
                <td><?= truncate_text($property_item->description, 50) ?> <span class="moreinfo"><a
                      href="<?= MAINSITE ?>property-details/<?= $property_item->slug_url ?>">MORE INFO <i
                        class="fa fa-angle-double-right"></i></a></span></td>
              </tr>

            <?php endforeach; ?>
          </tbody>
        </table>
        <center> <a href="index.html#form-sec mt-5 " class="primarybtn load-more" value="Submit Now"
            style="    background: #36c837 !important;"> Load More</a></center>
      <?php else: ?>

        <h3 class="text-center my-4">Sorry, No Records Found!</h3>

      <?php endif; ?>



    </div>

  </div>
</section>



<script>
  function get_city(state_id, city_id = 0) {
    $("#city_id").html('');
    if (state_id > 0) {
      $.ajax({
        url: "<?php echo MAINSITE . 'Ajax/get_city' ?>",
        type: 'post',
        dataType: "json",
        data: { 'state_id': state_id, 'city_id': city_id, "<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>" },
        success: function (response) {
          $("#city_id").html(response.city_html);
        },
        error: function (request, error) {
          toastrDefaultErrorFunc("Unknown Error. Please Try Again");
          $("#quick_view_model").html('Unknown Error. Please Try Again');
        }
      });
    }

  }


  function get_location(city_id, location_id = 0) {
    $("#location_id").html('');
    if (city_id > 0) {
      $.ajax({
        url: "<?php echo MAINSITE . 'Ajax/get_location' ?>",
        type: 'post',
        dataType: "json",
        data: { 'city_id': city_id, 'location_id': location_id, "<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>" },
        success: function (response) {
          $("#location_id").html(response.location_html);
        },
        error: function (request, error) {
          toastrDefaultErrorFunc("Unknown Error. Please Try Again");
          $("#quick_view_model").html('Unknown Error. Please Try Again');
        }
      });
    }

  }



  function get_property_sub_type(property_type_id, property_sub_type_id = 0) {
    $("#property_sub_type_id").html('');
    if (property_type_id > 0) {
      $.ajax({
        url: "<?php echo MAINSITE . 'Ajax/get_property_sub_type' ?>",
        type: 'post',
        dataType: "json",
        data: { 'property_type_id': property_type_id, 'property_sub_type_id': property_sub_type_id, "<?php echo $csrf['name'] ?>": "<?php echo $csrf['hash'] ?>" },
        success: function (response) {
          $("#property_sub_type_id").html(response.property_sub_type_html);
        },
        error: function (request, error) {
          toastrDefaultErrorFunc("Unknown Error. Please Try Again");
          $("#quick_view_model").html('Unknown Error. Please Try Again');
        }
      });
    }


    $("#add_input_fields").html('');
    if (property_type_id > 0) {
      console.log("add_input_fields")
      $.ajax({
        url: "<?php echo MAINSITE . 'add_input_fields' ?>",
        type: 'post',
        dataType: "json",
        data: { 'selected_property_type_id': property_type_id, "<?= $csrf['name'] ?>": "<?= $csrf['hash'] ?>" },
        success: function (response) {
          $("#add_input_fields").html(response.html_data);
        },
        error: function (request, error) {
          toastrDefaultErrorFunc("Unknown Error. Please Try Again");
        }
      });
    }

  }



  window.addEventListener('load', function () {

    <?php if (!empty($state_id) && !empty($city_id)) { ?>
      // If state_id and city_id are not empty, call get_city function with these values.
      get_city(<?php echo $state_id ?>, <?php echo $city_id ?>);
    <?php } ?>

    <?php if (!empty($city_id) && !empty($location_id)) { ?>
      // If city_id and locatio$location_id are not empty, call get_city function with these values.
      get_location(<?php echo $city_id ?>, <?php echo $location_id ?>);
    <?php } ?>

    <?php if (!empty($property_type_id) && !empty($property_sub_type_id)) { ?>
      // If property_type_id and locatio$property_sub_type_id are not empty, call get_city function with these values.
      get_property_sub_type(<?php echo $property_type_id ?>, <?php echo $property_sub_type_id ?>);
    <?php } ?>

  });
</script>