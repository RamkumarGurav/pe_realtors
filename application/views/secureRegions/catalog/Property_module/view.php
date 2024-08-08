<?
$name = "";
$admin_user_id = 0;
$status = 1;
$record_action = "Add New Record";




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
<!-- /.navbar -->

<!-- Main Sidebar Container -->


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">
                        <?= $page_module_name ?> <small>Details</small>
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
                        <li class="breadcrumb-item active">Details</li>
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

                <div class="card ">

                    <div class="card-header">
                        <h3 class="card-title">
                            <?= $property_data->name ?>
                        </h3>
                        <div class="float-right">
                            <?php
                            if ($user_access->add_module == 1 && false) {
                                ?>
                                <a href="<?= MAINSITE_Admin . $user_access->class_name ?>/edit">
                                    <button type="button" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Add
                                        New</button></a>
                            <? } ?>
                            <?php
                            if ($user_access->update_module == 1) {
                                ?>
                                <a href="<?= MAINSITE_Admin . $user_access->class_name ?>/edit/<?= $property_data->id ?>">
                                    <button type="button" class="btn btn-success btn-sm"><i class="fas fa-edit"></i>
                                        Update</button>
                                </a>
                            <? } ?>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <?php
                    if ($user_access->view_module == 1) {
                        ?>
                        <div class="card-body card-primary card-outline">
                            <?php echo form_open(MAINSITE_Admin . "$user_access->class_name/do_update_status", array('method' => 'post', 'id' => 'ptype_list_form', "name" => "ptype_list_form", 'style' => '', 'class' => 'form-horizontal', 'role' => 'form', 'enctype' => 'multipart/form-data')); ?>

                            <table id="" class="table table-bordered table-hover myviewtable responsiveTableNewDesign">
                                <tbody>
                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Data Base Id</strong>
                                            <?= $property_data->id ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Property ID</strong>
                                            <?php if (!empty($property_data->property_custom_id)): ?>
                                                <?= $property_data->property_custom_id ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Property Name</strong>
                                            <?php if (!empty($property_data->name)): ?>
                                                <?= $property_data->name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Property Type</strong>
                                            <?php if (!empty($property_data->property_type_name)): ?>
                                                <?= $property_data->property_type_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>



                                    </tr>
                                    <tr>
                                        <td style="width:25%;">
                                            <strong class="full">Property Sub Type</strong>

                                            <?php if (!empty($property_data->property_sub_type_name)): ?>
                                                <?= $property_data->property_sub_type_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>

                                        <td style="width:25%;">
                                            <strong class="full">State</strong>
                                            <?php if (!empty($property_data->state_name)): ?>
                                                <?= $property_data->state_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">City</strong>
                                            <?php if (!empty($property_data->city_name)): ?>
                                                <?= $property_data->city_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Location</strong>
                                            <?php if (!empty($property_data->location_name)): ?>
                                                <?= $property_data->location_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Pincode</strong>
                                            <?php if (!empty($property_data->pincode)): ?>
                                                <?= $property_data->pincode ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Property Age</strong>

                                            <?php if (!empty($property_data->property_age_name)): ?>
                                                <?= $property_data->property_age_name ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Reference No.</strong>
                                            <?php if (!empty($property_data->reference_no)): ?>
                                                <?= $property_data->reference_no ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Youtube Link</strong>
                                            <?php if (!empty($property_data->youtube_link)): ?>
                                                <?= $property_data->youtube_link ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">BHK Type</strong>
                                            <?php if (!empty($property_data->bhk_type_name)): ?>
                                                <?= $property_data->bhk_type_name ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Plot Facing Type</strong>
                                            <?php if (!empty($property_data->plot_facing_type_name)): ?>
                                                <?= $property_data->plot_facing_type_name ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Door Facing Type</strong>
                                            <?php if (!empty($property_data->door_facing_type_name)): ?>
                                                <?= $property_data->door_facing_type_name ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Plot Dimension in SqFt</strong>

                                            <?php if (!empty($property_data->plot_dimension_sqft)): ?>
                                                <?= $property_data->plot_dimension_sqft ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>


                                    </tr>

                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Built Up Area</strong>
                                            <?php if (!empty($property_data->built_up_area)): ?>
                                                <?= $property_data->built_up_area ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Area in Acres</strong>
                                            <?php if (!empty($property_data->in_acres)): ?>
                                                <?= $property_data->in_acres ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Area in Guntas</strong>
                                            <?php if (!empty($property_data->in_guntas)): ?>
                                                <?= $property_data->in_guntas ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Gated Community Type </strong>

                                            <?php if (!empty($property_data->gated_community_type_name)): ?>
                                                <?= $property_data->gated_community_type_name ?>
                                            <?php else: ?>
                                                N/A
                                            <?php endif; ?>
                                        </td>


                                    </tr>
                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Sale Type</strong>
                                            <?php if (!empty($property_data->sale_type)): ?>
                                                <?php foreach ($sale_type_data as $item): ?>
                                                    <?php if ($item->value == $property_data->sale_type): ?>
                                                        <?= $item->name ?>

                                                    <?php endif; ?>

                                                <?php endforeach; ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>


                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Sale Duration Type</strong>
                                            <?php if (!empty($property_data->sale_duration_type)): ?>
                                                <?php foreach ($sale_duration_type_data as $item): ?>
                                                    <?php if ($item->value == $property_data->sale_duration_type): ?>
                                                        <?= $item->name ?>

                                                    <?php endif; ?>

                                                <?php endforeach; ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>


                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Sale Amount</strong>
                                            <?php if (!empty($property_data->sale_amount)): ?>
                                                <span class="text-bold " style="color: green;">
                                                    ₹<?= convert_to_indian_currency($property_data->sale_amount) ?></span>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>


                                        <td style="width:25%;">

                                            <strong class="full">Is Negotiable ?</strong>
                                            <? if ($property_data->is_negotiable == 1) { ?> Yes <i
                                                    class="fas fa-check btn-success btn-sm "></i>
                                            <? } else { ?>No <i class="fas fa-ban btn-danger btn-sm "></i>
                                            <? } ?>
                                        </td>



                                    </tr>

                                    <tr>


                                    </tr>
                                    <tr>

                                        <td colspan="5">
                                            <strong class="full">Description</strong>
                                            <div>
                                                <?php if (!empty($property_data->description)) { ?>
                                                    <?= $property_data->description ?>
                                                <?php } else { ?>
                                                    <p>-</p>
                                                <?php } ?>
                                            </div>
                                        </td>



                                    </tr>
                                    <tr>

                                        <td colspan="5">
                                            <strong class="full">Other Details</strong>
                                            <div>
                                                <?php if (!empty($property_data->other_details)) { ?>
                                                    <?= $property_data->other_details ?>
                                                <?php } else { ?>
                                                    <p>-</p>
                                                <?php } ?>
                                            </div>
                                        </td>



                                    </tr>

                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Cover Image</strong>
                                            <? if (!empty($property_data->cover_image)) { ?>
                                                <span class="pip">
                                                    <a target="_blank"
                                                        href="<?= _uploaded_files_ . 'property_cover_image/' . $property_data->cover_image ?>">
                                                        <img class="imageThumb"
                                                            src="<?= _uploaded_files_ . 'property_cover_image/' . $property_data->cover_image ?>" />
                                                    </a>
                                                </span>
                                            <? } else { ?>
                                                <span class="pip">
                                                    <img class="imageThumb" src="<?= IMAGE_ADMIN ?>no_img.png" />
                                                </span>
                                            <? } ?>
                                        </td>

                                        <td style="width:25%;">
                                            <strong class="full">Cover Image Title</strong>
                                            <?php if (!empty($property_data->cover_image_title)): ?>
                                                <?= $property_data->cover_image_title ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Cover Image Alt Title</strong>
                                            <?php if (!empty($property_data->cover_image_alt_title)): ?>
                                                <?= $property_data->cover_image_alt_title ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Slug URL</strong>
                                            <?php if (!empty($property_data->slug_url)): ?>
                                                <?= $property_data->slug_url ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                    </tr>













                                    <tr>
                                        <td style="width:25%;">
                                            <strong class="full">Meta Keyword</strong>
                                            <?php if (!empty($property_data->meta_keyword)): ?>
                                                <?= $property_data->meta_keyword ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Meta Description</strong>
                                            <?php if (!empty($property_data->meta_description)): ?>
                                                <?= $property_data->meta_description ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>


                                        <td style="width:25%;">

                                            <strong class="full">Display Status</strong>
                                            <?php if (!empty($property_data->is_display)): ?>
                                                <?php foreach ($display_status_data as $item): ?>
                                                    <?php if ($item->value == $property_data->is_display): ?>
                                                        <?= $item->name ?>

                                                    <?php endif; ?>

                                                <?php endforeach; ?>
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>

                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Added On</strong>
                                            <?= date("d-m-Y h:i:s A", strtotime($property_data->added_on)) ?>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td style="width:25%;">
                                            <strong class="full">Added By</strong>
                                            <?= $property_data->added_by_name ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Updated On</strong>
                                            <? if (!empty($property_data->updated_on)) {
                                                echo date("d-m-Y h:i:s A", strtotime($property_data->updated_on));
                                            } else {
                                                echo "-";
                                            } ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Updated By</strong>
                                            <? if (!empty($property_data->updated_by_name)) {
                                                echo $property_data->updated_by_name;
                                            } else {
                                                echo "-";
                                            } ?>
                                        </td>
                                        <td style="width:25%;">
                                            <strong class="full">Status</strong>
                                            <? if ($property_data->status == 1) { ?> Active <i
                                                    class="fas fa-check btn-success btn-sm "></i>
                                            <? } else { ?> Block <i class="fas fa-ban btn-danger btn-sm "></i>
                                            <? } ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <div class="row" style="width:100%;">

                                                <?php if (!empty($property_data->property_gallery_image)): ?>
                                                    <div class="card card-primary" style="width:100%;">

                                                        <div class=" d-flex justify-content-between p-2 " style="width:100%;">
                                                            <strong class="full">Gallery Images</strong>
                                                            <h6 class="">Total Images:


                                                                <?= count($property_data->property_gallery_image) ?>
                                                            </h6>
                                                        </div>
                                                        <div class="card-body">
                                                            <div class="filter-container p-0 row">
                                                                <?php foreach ($property_data->property_gallery_image as $gallery_image): ?>


                                                                    <div class="filtr-item col-sm-3 mb-1"
                                                                        data-category="<?= "1 ,4" ?>" data-sort="white sample"
                                                                        style="width:100%;height:180px;">
                                                                        <a href="<?= _uploaded_files_ . 'property_gallery_image/' . $gallery_image->file_name ?>"
                                                                            data-toggle="lightbox" data-title=""
                                                                            style="height:100%;width:100%;">
                                                                            <img src="<?= _uploaded_files_ . 'property_gallery_image/' . $gallery_image->file_name ?>"
                                                                                class="img-fluid mb-2"
                                                                                title="<?= $gallery_image->file_title ?>"
                                                                                alt="<?= $gallery_image->file_alt_title ?>"
                                                                                aria-label=""
                                                                                style="height:100%;width:100%;object-fit:cover;" />
                                                                        </a>


                                                                    </div>
                                                                <?php endforeach; ?>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            <?php else: ?>
                                                <div class=" d-flex justify-content-between p-2 " style="width:100%;">
                                                    <strong class="full">Gallery Images</strong>

                                                </div>
                                                <p class="text-center pl-2">-</p>
                                            <?php endif; ?>

                        </div>
                        </td>
                        </tr>
                        </tbody>
                        </table>



                    </div>

                    <?php echo form_close() ?>
                </div>
            <? } else {
                        $this->data['no_access_flash_message'] = "You Dont Have Access To View " . $page_module_name;
                        $this->load->view('admin/template/access_denied', $this->data);
                    } ?>
            <!-- /.card-body -->
        </div>
</div>
</div>


</section>
<? ?>
</div>

<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>