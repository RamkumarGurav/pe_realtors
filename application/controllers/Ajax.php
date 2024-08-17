<?php
defined('BASEPATH') or exit('No direct script access allowed');
include('Main.php');
class Ajax extends main
{

	public function __construct()
	{
		parent::__construct();

		//db
		$this->load->database();

		//libraries
		$this->load->library('form_validation');

		//helpers
		$this->load->helper('url');
		$this->load->helper('form');

		//models
		$this->load->model('Ajax_model');
		$this->load->model('Common_model');

		//page data
		$this->data['action'] = '';
		$this->data['message'] = '';
	}


	function index()
	{
		echo "<pre> <br>";
		print_r("THIS IS AJAX");
		exit;
	}

	function get_state()
	{
		$country_id = $_POST['country_id'];
		$state_id = '';
		if (!empty($_POST['state_id'])) {
			$state_id = $_POST['state_id'];
		}
		$state = $this->Ajax_model->get_state(array("country_id" => $country_id));
		$show = "<option value=''>Select State</option>";
		if (!empty($country_id)) {
			if (!empty($state)) {
				foreach ($state as $s) {
					$selected = '';
					if ($s->state_id == $state_id)
						$selected = 'selected';
					$show .= "<option $selected value='$s->state_id'>$s->state_name</option>";
				}
			}
		}
		echo $show;
	}




	function get_city()
	{
		$state_id = $city_id = '0';
		if (!empty($_POST['city_id'])) {
			$city_id = $_POST['city_id'];
		}
		if (!empty($_POST['state_id'])) {
			$state_id = $_POST['state_id'];
		}

		$city_data = $this->Common_model->get_data(array('select' => '*', 'from' => 'city', 'where' => "state_id = $state_id and status = 1", "order_by" => "city_name ASC"));
		$result = '<option value="">Select City</option>';
		if (!empty($city_data)) {
			foreach ($city_data as $r) {
				$if_block = $selected = '';
				if ($r->city_id == $city_id) {
					$selected = "selected";
				}

				$result .= '<option value="' . $r->city_id . '" ' . $selected . '>' . $r->city_name . '</option>';
			}
		}
		echo json_encode(array("city_html" => $result, "city_json" => $city_data));
	}


	function get_location()
	{
		$location_id = $city_id = '0';
		if (!empty($_POST['city_id'])) {
			$city_id = $_POST['city_id'];
		}
		if (!empty($_POST['location_id'])) {
			$location_id = $_POST['location_id'];
		}

		$location_data = $this->Common_model->get_data(array('select' => '*', 'from' => 'location', 'where' => "city_id = $city_id and status=1", "order_by" => "location_name ASC"));
		$result = '<option value="">Select Location</option>';
		if (!empty($location_data)) {
			foreach ($location_data as $r) {
				$if_block = $selected = '';
				if ($r->location_id == $location_id) {
					$selected = "selected";
				}

				$result .= '<option value="' . $r->location_id . '" ' . $selected . '>' . $r->location_name . '</option>';
			}
		}
		echo json_encode(array("location_html" => $result, "location_json" => $location_data));
	}

	function get_property_sub_type()
	{


		$property_sub_type_id = $property_type_id = '0';
		if (!empty($_POST['property_type_id'])) {
			$property_type_id = $_POST['property_type_id'];
		}
		if (!empty($_POST['property_sub_type_id'])) {
			$property_sub_type_id = $_POST['property_sub_type_id'];
		}

		$property_sub_type_data = $this->Common_model->get_data(array(
			'select' => '*',
			'from' => 'property_sub_type',
			'where' => "property_type_id = $property_type_id and status = 1",
			"order_by" => "name ASC"
		));
		$result = '<option value="">Property Sub Type</option>';
		if (!empty($property_sub_type_data)) {
			foreach ($property_sub_type_data as $r) {
				$if_block = $selected = '';
				if ($r->id == $property_sub_type_id) {
					$selected = "selected";
				}

				$result .= '<option value="' . $r->id . '" ' . $selected . '>' . $r->name . '</option>';
			}
		}
		echo json_encode(array("property_sub_type_html" => $result, "property_sub_type_json" => $property_sub_type_data));
	}


	function get_dropdown()
	{
		$primary_column_name = $_POST['primary_column_name'];
		$primary_column_value = $_POST['primary_column_value'];
		$foreign_column_name = $_POST['foreign_column_name'];
		$foreign_column_value = $_POST['foreign_column_value'];
		$showable_column_name = $_POST['showable_column_name'];
		$table_name = $_POST['table_name'];
		$select_title = $_POST['select_title'];

		$dropdown_data = $this->Ajax_model->get_dropdown_data(
			array(
				"table_name" => $table_name,
				"foreign_column_name" => $foreign_column_name,
				"foreign_column_value" => $foreign_column_value,
				"showable_column_name" => $showable_column_name
			)
		);
		$show = "<option value=''>" . $select_title . "</option>";
		if (!empty($foreign_column_value)) {
			if (!empty($dropdown_data)) {
				foreach ($dropdown_data as $item) {
					$selected = '';
					if ($item->$primary_column_name == $primary_column_value)
						$selected = 'selected';
					$show .= "<option $selected value='$item->id'>$item->$showable_column_name</option>";
				}
			}
		}
		echo $show;
	}


	function get_dropdown2()
	{
		// Retrieve and sanitize POST data
		$primary_column_name = $this->input->post('primary_column_name', true);
		$primary_column_value = $this->input->post('primary_column_value', true);
		$foreign_column_name = $this->input->post('foreign_column_name', true);
		$foreign_column_value = $this->input->post('foreign_column_value', true);
		$showable_column_name = $this->input->post('showable_column_name', true);
		$table_name = $this->input->post('table_name', true);
		$select_title = $this->input->post('select_title', true);

		// Check if required fields are provided
		if (empty($table_name) || empty($foreign_column_name) || empty($showable_column_name) || empty($select_title)) {
			echo "<option value=''>Invalid parameters provided</option>";
			return;
		}

		// Fetch dropdown data
		$dropdown_data = $this->Ajax_model->get_dropdown_data(
			array(
				"table_name" => $table_name,
				"foreign_column_name" => $foreign_column_name,
				"foreign_column_value" => $foreign_column_value,
				"showable_column_name" => $showable_column_name
			)
		);

		// Start building the dropdown options
		$options = ["<option value=''>" . htmlspecialchars($select_title, ENT_QUOTES, 'UTF-8') . "</option>"];

		// Add options if dropdown data is available
		if (!empty($dropdown_data)) {
			foreach ($dropdown_data as $item) {
				$selected = ($item->$primary_column_name == $primary_column_value) ? 'selected' : '';
				$options[] = "<option $selected value='" . htmlspecialchars($item->id, ENT_QUOTES, 'UTF-8') . "'>" . htmlspecialchars($item->$showable_column_name, ENT_QUOTES, 'UTF-8') . "</option>";
			}
		}

		// Output the dropdown options
		echo implode('', $options);
	}

}
