<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once (APPPATH . "controllers/secureRegions/Main.php");
class Property_module extends Main
{

	function __construct()
	{
		parent::__construct();

		$this->load->database();

		$this->load->library('session');
		$this->load->library('User_auth');
		$this->load->helper('url');

		$this->load->model('Common_model');
		$this->load->model('secureRegions/master/Property_model');

		$this->load->library('pagination');


		//session data
		$session_auid = $this->data['session_auid'] = $this->session->userdata('session_auid');
		$this->data['session_auname'] = $this->session->userdata('session_auname');
		$this->data['session_auemail'] = $this->session->userdata('session_auemail');
		$this->data['session_aurid'] = $this->session->userdata('session_aurid');

		$this->data['page_module_name'] = 'Property';
		$this->data['table_name'] = 'property';
		$this->data['page_module_id'] = 14;


		$this->data['User_auth_obj'] = new User_auth();
		$this->data['user_data'] = $this->data['User_auth_obj']->check_user_status();

		$this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");
		$this->output->set_header("Pragma: no-cache");

	}



	/****************************************************************
	 *HELPERS
	 ****************************************************************/

	function unset_only()
	{
		$user_data = $this->session->all_userdata();
		foreach ($user_data as $key => $value) {
			if ($key != 'session_id' && $key != 'ip_address' && $key != 'user_agent' && $key != 'last_activity') {
				$this->session->unset_userdata($key);
			}
		}
	}

	/****************************************************************
	 ****************************************************************/





	function index()
	{
		parent::get_header();
		parent::get_left_nav();
		$this->load->view('secureRegions/master/Property_module/list', $this->data);
		parent::get_footer();
	}

	//using
	function list()
	{
		$country_id = 1;


		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));


		if (empty($this->data['user_access'])) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}


		$search = array();
		$field_name = '';
		$field_value = '';

		$start_date = '';
		$end_date = '';


		$property_type_id = "";
		$property_sub_type_id = "";
		$property_age_id = "";


		$state_id = "";
		$city_id = "";
		$location_id = "";

		$is_rent_lease_sale = "";
		$start_rent_lease_sale_amount = "";
		$end_rent_lease_sale_amount = "";

		$bhk_type_id = "";
		$plot_facing_type_id = "";
		$door_facing_type_id = "";
		$plot_dimension_sqft = "";
		$built_up_area = "";
		$in_acres = "";
		$in_guntas = "";
		$gated_community_type_id = "";



		$is_display = "";
		$is_negotiable = "";
		$record_status = "";







		if (!empty($_REQUEST['field_name']))
			$field_name = $_POST['field_name'];
		else if (!empty($field_name))
			$field_name = $field_name;
		if (!empty($_REQUEST['field_value']))
			$field_value = $_POST['field_value'];
		else if (!empty($field_value))
			$field_value = $field_value;



		if (!empty($_POST['start_date']))
			$start_date = $_POST['start_date'];
		if (!empty($_POST['end_date']))
			$end_date = $_POST['end_date'];



		if (!empty($_POST['property_type_id']))
			$property_type_id = $_POST['property_type_id'];
		if (!empty($_POST['property_sub_type_id']))
			$property_sub_type_id = $_POST['property_sub_type_id'];
		if (!empty($_POST['property_age_id']))
			$property_age_id = $_POST['property_age_id'];



		if (!empty($_POST['state_id']))
			$state_id = $_POST['state_id'];
		if (!empty($_POST['city_id']))
			$city_id = $_POST['city_id'];
		if (!empty($_POST['location_id']))
			$location_id = $_POST['location_id'];





		if (!empty($_POST['is_rent_lease_sale']))
			$is_rent_lease_sale = $_POST['is_rent_lease_sale'];
		if (!empty($_POST['start_rent_lease_sale_amount']))
			$start_rent_lease_sale_amount = $_POST['start_rent_lease_sale_amount'];
		if (!empty($_POST['end_rent_lease_sale_amount']))
			$end_rent_lease_sale_amount = $_POST['end_rent_lease_sale_amount'];



		if (!empty($_POST['bhk_type_id']))
			$bhk_type_id = $_POST['bhk_type_id'];
		if (!empty($_POST['plot_facing_type_id']))
			$plot_facing_type_id = $_POST['plot_facing_type_id'];
		if (!empty($_POST['door_facing_type_id']))
			$door_facing_type_id = $_POST['door_facing_type_id'];
		if (!empty($_POST['plot_dimension_sqft']))
			$plot_dimension_sqft = $_POST['plot_dimension_sqft'];
		if (!empty($_POST['built_up_area']))
			$built_up_area = $_POST['built_up_area'];
		if (!empty($_POST['in_acres']))
			$in_acres = $_POST['in_acres'];
		if (!empty($_POST['in_guntas']))
			$in_guntas = $_POST['in_guntas'];
		if (!empty($_POST['gated_community_type_id']))
			$gated_community_type_id = $_POST['gated_community_type_id'];






		if (!empty($_POST['is_display']))
			$is_display = $_POST['is_display'];
		if (!empty($_POST['is_negotiable']))
			$is_negotiable = $_POST['is_negotiable'];


		if (!empty($_POST['record_status']))
			$record_status = $_POST['record_status'];


		$this->data['field_name'] = $field_name;
		$this->data['field_value'] = $field_value;

		$this->data['start_date'] = $start_date;
		$this->data['end_date'] = $end_date;


		$this->data['property_type_id'] = $property_type_id;
		$this->data['property_sub_type_id'] = $property_sub_type_id;
		$this->data['property_age_id'] = $property_age_id;

		$this->data['country_id'] = $country_id;
		$this->data['state_id'] = $state_id;
		$this->data['city_id'] = $city_id;
		$this->data['location_id'] = $location_id;


		$this->data['is_rent_lease_sale'] = $is_rent_lease_sale;
		$this->data['start_rent_lease_sale_amount'] = $start_rent_lease_sale_amount;
		$this->data['end_rent_lease_sale_amount'] = $end_rent_lease_sale_amount;

		$this->data['bhk_type_id'] = $bhk_type_id;
		$this->data['plot_facing_type_id'] = $plot_facing_type_id;
		$this->data['door_facing_type_id'] = $door_facing_type_id;
		$this->data['plot_dimension_sqft'] = $plot_dimension_sqft;
		$this->data['built_up_area'] = $built_up_area;
		$this->data['in_acres'] = $in_acres;
		$this->data['in_guntas'] = $in_guntas;
		$this->data['gated_community_type_id'] = $gated_community_type_id;

		$this->data['is_display'] = $is_display;
		$this->data['is_negotiable'] = $is_negotiable;
		$this->data['record_status'] = $record_status;

		$search['field_name'] = $field_name;
		$search['field_value'] = $field_value;

		$search['start_date'] = $start_date;
		$search['end_date'] = $end_date;


		$search['property_type_id'] = $property_type_id;
		$search['property_sub_type_id'] = $property_sub_type_id;
		$search['property_age_id'] = $property_age_id;

		$search['country_id'] = $country_id;
		$search['state_id'] = $state_id;
		$search['city_id'] = $city_id;
		$search['location_id'] = $location_id;


		$search['is_rent_lease_sale'] = $is_rent_lease_sale;
		$search['start_rent_lease_sale_amount'] = $start_rent_lease_sale_amount;
		$search['end_rent_lease_sale_amount'] = $end_rent_lease_sale_amount;

		$search['bhk_type_id'] = $bhk_type_id;
		$search['plot_facing_type_id'] = $plot_facing_type_id;
		$search['door_facing_type_id'] = $door_facing_type_id;
		$search['plot_dimension_sqft'] = $plot_dimension_sqft;
		$search['built_up_area'] = $built_up_area;
		$search['in_acres'] = $in_acres;
		$search['in_guntas'] = $in_guntas;
		$search['gated_community_type_id'] = $gated_community_type_id;

		$search['is_display'] = $is_display;
		$search['is_negotiable'] = $is_negotiable;
		$search['record_status'] = $record_status;

		$search['search_for'] = "count";

		$data_count = $this->Property_model->get_property_data($search);
		$r_count = $this->data['row_count'] = $data_count[0]->counts;

		unset($search['search_for']);

		$offset = (int) $this->uri->segment(5); //echo $offset;
		if ($offset == "") {
			$offset = '0';
		}
		$per_page = _all_pagination_;

		$this->load->library('pagination');
		$config['base_url'] = MAINSITE_Admin . $this->data['user_access']->class_name . '/' . $this->data['user_access']->function_name . '/';
		$config['total_rows'] = $r_count;
		$config['uri_segment'] = '5';
		$config['per_page'] = $per_page;
		$config['num_links'] = 4;
		$config['first_link'] = '&lsaquo; First';
		$config['last_link'] = 'Last &rsaquo;';
		$config['prev_link'] = 'Prev';
		$config['full_tag_open'] = '<p>';
		$config['full_tag_close'] = '</p>';
		$config['attributes'] = array('class' => 'paginationClass');


		$this->pagination->initialize($config);

		// Assigning additional data for the view
		$this->data['page_is_master'] = $this->data['user_access']->is_master;//this is for making left menu active
		$this->data['page_parent_module_id'] = $this->data['user_access']->parent_module_id;

		$search['limit'] = $per_page;
		$search['offset'] = $offset;

		// $this->data['country_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'country', 'where' => "country_id > 0", "order_by" => "country_name ASC"));
		$this->data['state_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'state', 'where' => "state_id > 0", "order_by" => "country_name ASC"));
		$this->data['property_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'property_type', 'where' => "id > 0", "order_by" => "name ASC"));

		$this->data['property_data'] = $this->Property_model->get_property_data($search);

		parent::get_header();
		parent::get_left_nav();
		$this->load->view('secureRegions/master/Property_module/list', $this->data);
		parent::get_footer();
	}

	//using
	function list_export()
	{
		$country_id = 1;
		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));


		if (empty($this->data['user_access'])) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}

		if ($this->data['user_access']->export_data != 1) {
			$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Export " . $user_access->module_name);
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}

		$search = array();
		$field_name = '';
		$field_value = '';

		$start_date = '';
		$end_date = '';


		$property_type_id = "";
		$property_sub_type_id = "";
		$property_age_id = "";


		$state_id = "";
		$city_id = "";
		$location_id = "";

		$is_rent_lease_sale = "";
		$start_rent_lease_sale_amount = "";
		$end_rent_lease_sale_amount = "";

		$bhk_type_id = "";
		$plot_facing_type_id = "";
		$door_facing_type_id = "";
		$plot_dimension_sqft = "";
		$built_up_area = "";
		$in_acres = "";
		$in_guntas = "";
		$gated_community_type_id = "";



		$is_display = "";
		$is_negotiable = "";
		$record_status = "";







		if (!empty($_REQUEST['field_name']))
			$field_name = $_POST['field_name'];
		else if (!empty($field_name))
			$field_name = $field_name;
		if (!empty($_REQUEST['field_value']))
			$field_value = $_POST['field_value'];
		else if (!empty($field_value))
			$field_value = $field_value;



		if (!empty($_POST['start_date']))
			$start_date = $_POST['start_date'];
		if (!empty($_POST['end_date']))
			$end_date = $_POST['end_date'];



		if (!empty($_POST['property_type_id']))
			$property_type_id = $_POST['property_type_id'];
		if (!empty($_POST['property_sub_type_id']))
			$property_sub_type_id = $_POST['property_sub_type_id'];
		if (!empty($_POST['property_age_id']))
			$property_age_id = $_POST['property_age_id'];



		if (!empty($_POST['state_id']))
			$state_id = $_POST['state_id'];
		if (!empty($_POST['city_id']))
			$city_id = $_POST['city_id'];
		if (!empty($_POST['location_id']))
			$location_id = $_POST['location_id'];





		if (!empty($_POST['is_rent_lease_sale']))
			$is_rent_lease_sale = $_POST['is_rent_lease_sale'];
		if (!empty($_POST['start_rent_lease_sale_amount']))
			$start_rent_lease_sale_amount = $_POST['start_rent_lease_sale_amount'];
		if (!empty($_POST['end_rent_lease_sale_amount']))
			$end_rent_lease_sale_amount = $_POST['end_rent_lease_sale_amount'];



		if (!empty($_POST['bhk_type_id']))
			$bhk_type_id = $_POST['bhk_type_id'];
		if (!empty($_POST['plot_facing_type_id']))
			$plot_facing_type_id = $_POST['plot_facing_type_id'];
		if (!empty($_POST['door_facing_type_id']))
			$door_facing_type_id = $_POST['door_facing_type_id'];
		if (!empty($_POST['plot_dimension_sqft']))
			$plot_dimension_sqft = $_POST['plot_dimension_sqft'];
		if (!empty($_POST['built_up_area']))
			$built_up_area = $_POST['built_up_area'];
		if (!empty($_POST['in_acres']))
			$in_acres = $_POST['in_acres'];
		if (!empty($_POST['in_guntas']))
			$in_guntas = $_POST['in_guntas'];
		if (!empty($_POST['gated_community_type_id']))
			$gated_community_type_id = $_POST['gated_community_type_id'];






		if (!empty($_POST['is_display']))
			$is_display = $_POST['is_display'];
		if (!empty($_POST['is_negotiable']))
			$is_negotiable = $_POST['is_negotiable'];


		if (!empty($_POST['record_status']))
			$record_status = $_POST['record_status'];


		$this->data['field_name'] = $field_name;
		$this->data['field_value'] = $field_value;

		$this->data['start_date'] = $start_date;
		$this->data['end_date'] = $end_date;


		$this->data['property_type_id'] = $property_type_id;
		$this->data['property_sub_type_id'] = $property_sub_type_id;
		$this->data['property_age_id'] = $property_age_id;

		$this->data['country_id'] = $country_id;
		$this->data['state_id'] = $state_id;
		$this->data['city_id'] = $city_id;
		$this->data['location_id'] = $location_id;


		$this->data['is_rent_lease_sale'] = $is_rent_lease_sale;
		$this->data['start_rent_lease_sale_amount'] = $start_rent_lease_sale_amount;
		$this->data['end_rent_lease_sale_amount'] = $end_rent_lease_sale_amount;

		$this->data['bhk_type_id'] = $bhk_type_id;
		$this->data['plot_facing_type_id'] = $plot_facing_type_id;
		$this->data['door_facing_type_id'] = $door_facing_type_id;
		$this->data['plot_dimension_sqft'] = $plot_dimension_sqft;
		$this->data['built_up_area'] = $built_up_area;
		$this->data['in_acres'] = $in_acres;
		$this->data['in_guntas'] = $in_guntas;
		$this->data['gated_community_type_id'] = $gated_community_type_id;

		$this->data['is_display'] = $is_display;
		$this->data['is_negotiable'] = $is_negotiable;
		$this->data['record_status'] = $record_status;

		$search['field_name'] = $field_name;
		$search['field_value'] = $field_value;

		$search['start_date'] = $start_date;
		$search['end_date'] = $end_date;


		$search['property_type_id'] = $property_type_id;
		$search['property_sub_type_id'] = $property_sub_type_id;
		$search['property_age_id'] = $property_age_id;

		$search['country_id'] = $country_id;
		$search['state_id'] = $state_id;
		$search['city_id'] = $city_id;
		$search['location_id'] = $location_id;


		$search['is_rent_lease_sale'] = $is_rent_lease_sale;
		$search['start_rent_lease_sale_amount'] = $start_rent_lease_sale_amount;
		$search['end_rent_lease_sale_amount'] = $end_rent_lease_sale_amount;

		$search['bhk_type_id'] = $bhk_type_id;
		$search['plot_facing_type_id'] = $plot_facing_type_id;
		$search['door_facing_type_id'] = $door_facing_type_id;
		$search['plot_dimension_sqft'] = $plot_dimension_sqft;
		$search['built_up_area'] = $built_up_area;
		$search['in_acres'] = $in_acres;
		$search['in_guntas'] = $in_guntas;
		$search['gated_community_type_id'] = $gated_community_type_id;

		$search['is_display'] = $is_display;
		$search['is_negotiable'] = $is_negotiable;
		$search['record_status'] = $record_status;

		$this->data['property_data'] = $this->Property_model->get_property_data($search);


		$this->load->view('secureRegions/master/Property_module/list_export', $this->data);
	}


	function view($id = "")
	{
		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));


		if (empty($id)) {
			$alert_message = '<div class="alert alert-danger alert-dismissible"><button type="button"
			 class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-ban"></i> 
			 Something Went Wrong. Please Try Again.</div>';
			$this->session->set_flashdata('alert_message', $alert_message);
			REDIRECT(MAINSITE_Admin . $user_access->class_name . "/" . $user_access->function_name);
			exit;
		}

		if (empty($this->data['user_access'])) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}

		// Assigning additional data for the view
		$this->data['page_is_master'] = $this->data['user_access']->is_master;//this is for making left menu active
		$this->data['page_parent_module_id'] = $this->data['user_access']->parent_module_id;


		$this->data['property_data'] = $this->Property_model->get_property_data(array("id" => $id));
		if (empty($id)) {
			$alert_message = '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" 
			data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-ban"></i> 
			Something Went Wrong. Please Try Again.</div>';
			$this->session->set_flashdata('alert_message', $alert_message);
			REDIRECT(MAINSITE_Admin . $user_access->class_name . "/" . $user_access->function_name);
			exit;
		}

		$this->data['property_data'] = $this->data['property_data'][0];

		parent::get_header();
		parent::get_left_nav();
		$this->load->view('secureRegions/catalog/Property_module/view', $this->data);
		parent::get_footer();
	}

	function edit($id = "")
	{
		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));


		if (empty($this->data['user_access'])) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}
		if (empty($id)) {
			if ($user_access->add_module != 1) {
				$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Add " . $user_access->module_name);
				REDIRECT(MAINSITE_Admin . "wam/access-denied");
			}
		}
		if (!empty($id)) {
			if ($user_access->update_module != 1) {
				$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Update " . $user_access->module_name);
				REDIRECT(MAINSITE_Admin . "wam/access-denied");
			}
		}

		// Assigning additional data for the view
		$this->data['page_is_master'] = $this->data['user_access']->is_master;//this is for making left menu active
		$this->data['page_parent_module_id'] = $this->data['user_access']->parent_module_id;



		if (!empty($id)) {
			$this->data['property_data'] = $this->Property_model->get_property_data(array("id" => $id));
			if (empty($this->data['property_data'])) {
				$this->session->set_flashdata('alert_message', '<div class="alert alert-danger alert-dismissible">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
					<i class="icon fas fa-ban"></i> Record Not Found. 
				  </div>');
				REDIRECT(MAINSITE_Admin . $user_access->class_name . '/' . $user_access->function_name);
			}
			$this->data['property_data'] = $this->data['property_data'][0];
		}

		parent::get_header();
		parent::get_left_nav();
		$this->load->view('secureRegions/catalog/Property_module/edit', $this->data);
		parent::get_footer();
	}

	//using
	//method that actually adds new property or updates the existing property
	function do_edit()
	{
		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));


		// Validate essential form fields; if empty, set an error message and redirect
		if (
			empty($_POST['title']) && empty($_POST['property_type_id']) && empty($_POST['property_sub_type_id_id'])
			&& empty($_POST['state_id']) && empty($_POST['city_id']) && empty($_POST['location_id'])
		) {
			$alert_message = '<div class="alert alert-danger alert-dismissible"><button type="button" class="close"
							data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-ban"></i> Something Went Wrong. Please Try Again.</div>';
			$this->session->set_flashdata('alert_message', $alert_message);
			REDIRECT(MAINSITE_Admin . $user_access->class_name . "/" . $user_access->function_name);
			exit;
		}

		// Retrieve id from the form submission
		$id = $_POST['id'];


		// Redirect to access denied page if user access is not defined
		if (empty($this->data['user_access'])) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}

		// Check if the user has permission to add a property (if id is empty)
		if (empty($id)) {
			if ($user_access->add_module != 1) {
				$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Add " . $user_access->module_name);
				REDIRECT(MAINSITE_Admin . "wam/access-denied");
			}
		}

		// Check if the user has permission to update a property (if id is not empty)
		if (!empty($id)) {
			if ($user_access->update_module != 1) {
				$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Update " . $user_access->module_name);
				REDIRECT(MAINSITE_Admin . "wam/access-denied");
			}
		}

		$sl_no = trim($_POST['sl_no']);
		$title = getCleanText(trim($_POST['title']));
		$property_type_id = trim($_POST['property_type_id']);
		$property_sub_type_id = trim($_POST['property_sub_type_id']);
		$property_custom_id = trim($_POST['property_custom_id']);
		$reference_no = trim($_POST['reference_no']);
		$reference_no = trim($_POST['reference_no']);
		$state_id = trim($_POST['state_id']);
		$city_id = trim($_POST['city_id']);
		$location_id = trim($_POST['location_id']);
		$property_age_id = trim($_POST['property_age_id']);
		$bhk_type_id = trim($_POST['bhk_type_id']);
		$plot_facing_type_id = trim($_POST['plot_facing_type_id']);
		$door_facing_type_id = trim($_POST['door_facing_type_id']);
		$plot_dimension_sqft = trim($_POST['plot_dimension_sqft']);
		$built_up_area = trim($_POST['built_up_area']);
		$in_acres = trim($_POST['in_acres']);
		$in_guntas = trim($_POST['in_guntas']);
		$gated_community_type_id = trim($_POST['gated_community_type_id']);
		$is_rent_lease_sale = trim($_POST['is_rent_lease_sale']);
		$is_negotiable = trim($_POST['is_negotiable']);
		$is_display = trim($_POST['is_display']);
		$youtube_link = trim($_POST['youtube_link']);
		$description = trim($_POST['description']);
		$other_details = trim($_POST['other_details']);
		$cover_image = trim($_POST['cover_image']);
		$cover_image_title = trim($_POST['cover_image_title']);
		$cover_image_alt_title = trim($_POST['cover_image_alt_title']);
		$slug_url = trim($_POST['slug_url']);
		$meta_keyword = trim($_POST['meta_keyword']);
		$meta_description = trim($_POST['meta_description']);
		$status = trim($_POST['status']);

		// Check if a property with the same name already exists in the same country and state but with a different id
		$is_exist = $this->Common_model->get_data(array('select' => '*', 'from' => 'property', 'where' => "title = \"$title\" and id != $id and country_id = $country_id and state_id = $state_id"));

		// If the property exists, set an error message and redirect to the edit page
		if (!empty($is_exist)) {
			$alert_message = '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-ban"></i> Property already exist in database.</div>';
			$this->session->set_flashdata('alert_message', $alert_message);
			REDIRECT(MAINSITE_Admin . $user_access->class_name . "/edit/" . $id);
			exit;
		}

		// Prepare data for insertion or update
		$enter_data['sl_no'] = trim($_POST['sl_no']);
		$enter_data['title'] = getCleanText(trim($_POST['title']));
		$enter_data['property_type_id'] = trim($_POST['property_type_id']);
		$enter_data['property_sub_type_id'] = trim($_POST['property_sub_type_id']);
		$enter_data['property_custom_id'] = trim($_POST['property_custom_id']);
		$enter_data['reference_no'] = trim($_POST['reference_no']);
		$enter_data['reference_no'] = trim($_POST['reference_no']);
		$enter_data['state_id'] = trim($_POST['state_id']);
		$enter_data['city_id'] = trim($_POST['city_id']);
		$enter_data['location_id'] = trim($_POST['location_id']);
		$enter_data['property_age_id'] = trim($_POST['property_age_id']);
		$enter_data['bhk_type_id'] = trim($_POST['bhk_type_id']);
		$enter_data['plot_facing_type_id'] = trim($_POST['plot_facing_type_id']);
		$enter_data['door_facing_type_id'] = trim($_POST['door_facing_type_id']);
		$enter_data['plot_dimension_sqft'] = trim($_POST['plot_dimension_sqft']);
		$enter_data['built_up_area'] = trim($_POST['built_up_area']);
		$enter_data['in_acres'] = trim($_POST['in_acres']);
		$enter_data['in_guntas'] = trim($_POST['in_guntas']);
		$enter_data['gated_community_type_id'] = trim($_POST['gated_community_type_id']);
		$enter_data['is_rent_lease_sale'] = trim($_POST['is_rent_lease_sale']);
		$enter_data['is_negotiable'] = trim($_POST['is_negotiable']);
		$enter_data['is_display'] = trim($_POST['is_display']);
		$enter_data['youtube_link'] = trim($_POST['youtube_link']);
		$enter_data['description'] = trim($_POST['description']);
		$enter_data['other_details'] = trim($_POST['other_details']);
		$enter_data['cover_image'] = trim($_POST['cover_image']);
		$enter_data['cover_image_title'] = trim($_POST['cover_image_title']);
		$enter_data['cover_image_alt_title'] = trim($_POST['cover_image_alt_title']);
		$enter_data['slug_url'] = trim($_POST['slug_url']);
		$enter_data['meta_keyword'] = trim($_POST['meta_keyword']);
		$enter_data['meta_description'] = trim($_POST['meta_description']);
		$enter_data['status'] = trim($_POST['status']);

		// Default alert message for errors
		$alert_message = '<div class="alert alert-danger alert-dismissible"><button type="button"
		 class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-ban">
		 </i> Something Went Wrong Please Try Again. </div>';

		// Update operation if id is not empty
		if (!empty($id)) {
			$enter_data['updated_on'] = date("Y-m-d H:i:s");
			$enter_data['updated_by'] = $this->data['session_auid'];
			$insertStatus = $this->Common_model->update_operation(array('table' => 'property', 'data' => $enter_data, 'condition' => "id = $id"));

			// Set success message if update is successful
			if (!empty($insertStatus)) {
				$this->upload_cover_image("property", "id", $id, "cover_image", "cover_image", "cover_image_", "property/cover_image");
				$alert_message = '<div class="alert alert-success alert-dismissible"><button type="button" 
				class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-check">
				</i> Record Updated Successfully </div>';
			}

			// Insert operation if id is empty
		} else {
			$enter_data['added_on'] = date("Y-m-d H:i:s");
			$enter_data['added_by'] = $this->data['session_auid'];
			$id = $insertStatus = $this->Common_model->add_operation(array('table' => 'property', 'data' => $enter_data));

			// Set success message if insert is successful
			if (!empty($insertStatus)) {
				$serial_number = str_pad($id, 6, '0', STR_PAD_LEFT);
				$custom_id_data['sl_no'] = $serial_number;
				$custom_id_data['property_custom_id'] = "PER-Prop-" . $serial_number;
				$this->Common_model->update_operation(array('table' => 'property', 'data' => $custom_id_data, 'condition' => "id = $id"));

				$this->upload_cover_image("property", "id", $id, "cover_image", "cover_image", "cover_image_", "property/cover_image");
				$alert_message = '<div class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><i class="icon fas fa-check"></i> New Record Added Successfully </div>';
			}
		}

		// Set the flash message in the session
		$this->session->set_flashdata('alert_message', $alert_message);

		// Check if the redirect_type is set to "save-add-new"
		if (!empty($_POST['redirect_type'])) {
			// Redirect to the edit page for adding a new record
			REDIRECT(MAINSITE_Admin . $user_access->class_name . "/edit");
		}

		// Default redirect to the main function page
		REDIRECT(MAINSITE_Admin . $user_access->class_name . "/" . $user_access->function_name);
	}



	//using
	function do_update_status()
	{
		$this->data['page_type'] = "list";
		$user_access = $this->data['user_access'] = $this->data['User_auth_obj']->check_user_access(array("module_id" => $this->data['page_module_id']));



		// Retrieve the task and selected record IDs from the POST data.
		$task = $_POST['task'];
		$id_arr = $_POST['sel_recds'];

		// If user access is empty, redirect to the access-denied page.
		if (empty($user_access)) {
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}

		// Check if the user has permission to update the module.
		if ($user_access->update_module == 1) {
			// Set alert message for failure (when response is false).
			$this->session->set_flashdata('alert_message', '<div class="alert alert-danger alert-dismissible">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
									<i class="icon fas fa-ban"></i> Something Went Wrong Please Try Again. 
								</div>');

			// Initialize update data array.
			$update_data = array();

			// Process update only if selected record IDs are not empty.
			if (!empty($id_arr)) {
				$action_taken = "";
				$ids = implode(',', $id_arr);

				// Set the status and action based on the task.
				if ($task == "active") {
					$update_data['status'] = 1;
					$action_taken = "Activate";
				}
				if ($task == "block") {
					$update_data['status'] = 0;
					$action_taken = "Blocked";
				}

				// Set the updated_on and updated_by fields.
				$update_data['updated_on'] = date("Y-m-d H:i:s");
				$update_data['updated_by'] = $this->data['session_auid'];

				// Perform the update operation.
				$response = $this->Common_model->update_operation(array('table' => "property", 'data' => $update_data, 'condition' => "id in ($ids)"));
				// If update is successful, set success alert message.
				if ($response) {
					$this->session->set_flashdata('alert_message', '<div class="alert alert-success alert-dismissible">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<i class="icon fas fa-check"></i> Records Successfully ' . $action_taken . ' 
											</div>');
				}


			}
			// Redirect to the module page after processing.
			REDIRECT(MAINSITE_Admin . $user_access->class_name . '/' . $user_access->function_name);
		} else {
			// If user doesn't have permission, set access-denied message and redirect.
			$this->session->set_flashdata('no_access_flash_message', "You Are Not Allowed To Update " . $user_access->module_name);
			REDIRECT(MAINSITE_Admin . "wam/access-denied");
		}
	}



	function upload_cover_image($table_name, $id_column, $id, $input_name, $target_column, $prefix, $target_folder_name)
	{
		$file_name = "";
		if (isset($_FILES[$input_name]['name'])) {
			$timg_name = $_FILES[$input_name]['name'];
			if (!empty($timg_name)) {
				$temp_var = explode(".", strtolower($timg_name));
				$timage_ext = end($temp_var);
				$timage_name_new = $prefix . $id . "." . $timage_ext;
				$image_enter_data[$target_column] = $timage_name_new;
				$image_enter_data['cover_image_title'] = trim($_POST['cover_image_title']);
				$image_enter_data['cover_image_alt_title'] = trim($_POST['cover_image_alt_title']);
				$imginsertStatus = $this->Common_model->update_operation(array('table' => $table_name, 'data' => $image_enter_data, 'condition' => "$id_column = $id"));
				if ($imginsertStatus == 1) {
					if (!is_dir(_uploaded_temp_files_ . $target_folder_name)) {
						mkdir(_uploaded_temp_files_ . './' . $target_folder_name, 0777, TRUE);

					}
					move_uploaded_file($_FILES["$input_name"]['tmp_name'], _uploaded_temp_files_ . $target_folder_name . "/" . $timage_name_new);
					$file_name = $timage_name_new;
				}

			}
		}
	}



	public function addNewLine_pgi()
	{
		if (!empty($_POST['append_id_pgi'])) {
			$this->data['append_id_pgi'] = $_POST['append_id_pgi'];
		}
		$template = $this->load->view('secureRegions/catalog/Property_module/template/file_line_add_more_pgi', $this->data, true);
		echo json_encode(array("template" => $template));
	}




	function upload_multi_files_normal_pgi($idf)
	{

		$table_name = "project_gallery_image";
		$idp_column = "project_gallery_image_id";
		$idf_column = "project_id";
		$input_file_name = "image";
		$target_file_column = "file";
		$prefix = "project_gallery_image_";
		$target_folder_name = "project_gallery_image";
		$logo_file_name = "";
		$count = 0;

		if (!empty($_FILES[$input_file_name]['name'])) {
			if (!is_dir(_uploaded_temp_files_ . $target_folder_name)) {
				mkdir('./' . _uploaded_temp_files_ . $target_folder_name, 0777, TRUE);
			}

			// $file_title2 = $_POST[$input_text_name];
			for ($i = 0; $i < count($_FILES[$input_file_name]['name']); $i++) {
				if (isset($_FILES[$input_file_name]['name'][$i]) && !empty($_FILES[$input_file_name]['name'][$i])) {

					$img_data[$idf_column] = $idf;
					$img_data['added_on'] = date("Y-m-d H:i:s");
					$img_data['added_by'] = $this->data['session_uid'];
					$idp = $this->Common_Model->add_operation(array('table' => $table_name, 'data' => $img_data));

					$count++;

					$timg_name = $_FILES[$input_file_name]['name'][$i];
					$temp_var = explode(".", strtolower($timg_name));
					$timage_ext = end($temp_var);
					$timage_name_new = $prefix . $idf . "_" . $idp . "." . $timage_ext;
					$update_img_data[$target_file_column] = $timage_name_new;
					$idp = $this->Common_Model->update_operation(array('table' => $table_name, 'data' => $update_img_data, 'condition' => "$idp_column = $idp"));
					if ($idp > 0) {
						move_uploaded_file($_FILES[$input_file_name]['tmp_name'][$i], _uploaded_temp_files_ . $target_folder_name . "/" . $timage_name_new);
						$logo_file_name = $timage_name_new;
					}
				}
			}
		}
	}


	//using
	function upload_multi_files_pgi($idf)
	{
		$table_name = "property_gallery_image";
		$idp_column = "id";
		$idf_column = "property_id";
		$input_file_name = "file_name_pgi";
		$input_text_name1 = "file_title_pgi";
		$input_text_name2 = "file_alt_title_pgi";
		$target_file_column = "file_name";
		$target_text_column1 = "file_title";
		$target_text_column2 = "file_alt_title";
		$prefix = "property_gallery_image_";
		$target_folder_name = "property_gallery_image";
		$logo_file_name = "";
		$count = 0;

		if (!empty($_FILES[$input_file_name]['name'])) {
			if (!is_dir(_uploaded_temp_files_ . $target_folder_name)) {
				mkdir('./' . _uploaded_temp_files_ . $target_folder_name, 0777, TRUE);
			}

			$file_title1 = $_POST[$input_text_name1];
			$file_title2 = $_POST[$input_text_name2];
			for ($i = 0; $i < count($_FILES[$input_file_name]['name']); $i++) {
				if (isset($_FILES[$input_file_name]['name'][$i]) && !empty($_FILES[$input_file_name]['name'][$i])) {

					$img_data[$target_text_column1] = $file_title1[$i];
					$img_data[$target_text_column2] = $file_title2[$i];
					$img_data[$idf_column] = $idf;
					$img_data['added_on'] = date("Y-m-d H:i:s");
					$img_data['added_by'] = $this->data['session_uid'];
					$idp = $this->Common_Model->add_operation(array('table' => $table_name, 'data' => $img_data));

					$count++;

					$timg_name = $_FILES[$input_file_name]['name'][$i];
					$temp_var = explode(".", strtolower($timg_name));
					$timage_ext = end($temp_var);
					$timage_name_new = $prefix . $idp . "." . $timage_ext;
					$update_img_data[$target_file_column] = $timage_name_new;
					$idp = $this->Common_Model->update_operation(array('table' => $table_name, 'data' => $update_img_data, 'condition' => "$idp_column = $idp"));
					if ($idp > 0) {
						move_uploaded_file($_FILES[$input_file_name]['tmp_name'][$i], _uploaded_temp_files_ . $target_folder_name . "/" . $timage_name_new);
						$logo_file_name = $timage_name_new;
					}
				}
			}
		}
	}



}
