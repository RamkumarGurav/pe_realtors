<?php
// Initialize $id to 1
$id_pgi = 1;
$action = "update";
// Check if $append_id is not empty
if (!empty($append_id_pgi)) {
  // If $append_id is not empty, assign its value to $id
  $id_pgi = $append_id_pgi;
}
?>

<!-- Start of a new table row -->
<tr class="qe_sub_table_tr_pgi">
  <td class="qe_sub_table_count_pgi">1.</td>



  <td>
    <input type="text" name="file_title_pgi[]" id="file_title_pgi_<?= $id_pgi ?>" placeholder="Image Title"
      class="form-control search-code form-control-sm file_title_pgi" />
  </td>

  <td>
    <input type="text" name="file_alt_title_pgi[]" id="file_alt_title_pgi_<?= $id_pgi ?>" placeholder="Image Alt Title"
      class="form-control search-code form-control-sm file_alt_title_pgi" />
  </td>

  <td>
    <div class="input-group">
      <div class="custom-file">
        <!-- Hidden input field to store the file name (initially empty) -->
        <!-- <input type="hidden" name="file_name[]" value="" /> -->
        <!-- File input field for selecting a file -->
        <input type="file" accept="image/*" name="file_name_pgi[]" class="custom-file-input file_name_pgi"
          id="file_name_pgi_<?= $id_pgi ?>" onchange="previewImage(<?= $id_pgi ?>)">
        <!-- Label for the file input, initially empty -->
        <label class="custom-file-label form-control-sm" for="files">Choose file</label>
      </div>
      <!-- Image preview -->
      <img id="image_preview_pgi_<?= $id_pgi ?>" src="" alt="Image Preview" class="imageThumb" style="display:none;">
    </div>
  </td>

  <!-- Table cell for the file input -->


  <!-- Table cell for the remove button (this will be updated dynamically) -->
  <td class="qe_sub_table_remove_td_pgi"></td>
</tr>

<script>
  $("#file_name_pgi_<?= $id_pgi ?>").on('change', function () {
    $("#file_title_pgi_<?= $id_pgi ?>").attr('required', 'required');
    $("#file_alt_title_pgi_<?= $id_pgi ?>").attr('required', 'required');
  });

  function previewImage(id) {
    var input = document.getElementById('file_name_pgi_' + id);
    var preview = document.getElementById('image_preview_pgi_' + id);

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        preview.src = e.target.result;
        preview.style.display = 'block';
      }

      reader.readAsDataURL(input.files[0]);
    } else {
      preview.src = '';
      preview.style.display = 'none';
    }
  }





</script>