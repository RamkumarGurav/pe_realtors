<?php
class Property_model extends CI_Model
{
	public $session_auid = '';
	public $session_auname = '';
	public $session_auemail = '';
	public $session_aurid = '';

	function __construct()
	{
		$this->load->database();

		$this->db->query("SET sql_mode = ''");

		$this->session_auid = $this->session->userdata('session_auid');
		$this->session_auname = $this->session->userdata('session_auname');
		$this->session_auemail = $this->session->userdata('session_auemail');
		$this->session_aurid = $this->session->userdata('session_aurid');
	}


	/**
	 * getting cities with search ,pagination  and sorting using params ,if your using this method to find single property data with its property_id then it will be present int the 0th index of the resultant array
	 */
	function get_property_data($params = array())
	{
		$result = '';

		// Check if the 'search_for' parameter is present in the $params array
		if (!empty($params['search_for'])) {
			// If 'search_for' is set, only select the count of cities
			$this->db->select("count(ft.id) as counts");
		} else {
			// Otherwise, select detailed information about the property including state and country details
			$this->db->select("ft.*,pt.name as property_type_name,pst.name as property_sub_type_name,pa.name as property_age_name,
			bt.name as bhk_type_name,pft.name as plot_facing_type_name,dft.name as door_facing_type_name,gct.name as gated_community_type_name,
			s.state_name,ci.city_name,l.location_name,l.pincode ");
			// Select the name of the user who added the property
			$this->db->select("(select au.admin_user_name from admin_user as  au where au.admin_user_id = ft.added_by) as added_by_name "); // Select added_by user's name
			$this->db->select("(select au.admin_user_name from admin_user as  au where au.admin_user_id = ft.updated_by) as updated_by_name "); // Select updated_by user's name
		}

		// From the property table (aliased as ft)
		$this->db->from("property as ft");

		// $this->db->join("country as c", "c.country_id = ft.country_id");
		$this->db->join("property_type as pt", "pt.id = ft.property_type_id");
		$this->db->join("property_sub_type as pst", "pst.id = ft.property_sub_type_id");
		$this->db->join("property_age as pa", "pa.id = ft.property_age_id");

		$this->db->join("bhk_type as bt", "bt.id = ft.bhk_type_id");
		$this->db->join("facing_type as pft", "pft.id = ft.plot_facing_type_id");
		$this->db->join("facing_type as  dft", "dft.id = ft.door_facing_type_id");
		$this->db->join("gated_community_type as gct", "gct.id = ft.gated_community_type_id");

		$this->db->join("state as s", "s.state_id = ft.state_id");
		$this->db->join("city as ci", "ci.city_id = ft.city_id");
		$this->db->join("location as l", "l.location_id = ft.location_id");


		// Conditional logic for ordering results
		if (!empty($params['order_by'])) {
			$this->db->order_by($params['order_by']);
		} else {
			$this->db->order_by("ft.id desc"); // Default order by admin_user_id descending
		}

		// If 'property_id' is set in the $params array, filter results by property_id
		if (!empty($params['id'])) {
			$this->db->where("ft.id", $params['id']);
		}

		// // If 'country_id' is set in the $params array, filter results by country_id
		// if (!empty($params['country_id'])) {
		// 	$this->db->where("ft.country_id", $params['country_id']);
		// }
		// If 'state_id' is set in the $params array, filter results by state_id
		if (!empty($params['state_id'])) {
			$this->db->where("ft.state_id", $params['state_id']);
		}

		// If 'start_date' is set in the $params array, filter results to include only cities added on or after the start date
		if (!empty($params['start_date'])) {
			$temp_date = date('Y-m-d', strtotime($params['start_date']));
			$this->db->where("DATE_FORMAT(ft.added_on, '%Y%m%d') >= DATE_FORMAT('$temp_date', '%Y%m%d')");
		}

		// If 'end_date' is set in the $params array, filter results to include only cities added on or before the end date
		if (!empty($params['end_date'])) {
			$temp_date = date('Y-m-d', strtotime($params['end_date']));
			$this->db->where("DATE_FORMAT(ft.added_on, '%Y%m%d') <= DATE_FORMAT('$temp_date', '%Y%m%d')");
		}

		// If 'record_status' is set in the $params array, filter results by status
		if (!empty($params['record_status'])) {
			if ($params['record_status'] == 'zero') {
				// If record_status is 'zero', filter by status = 0
				$this->db->where("ft.status = 0");
			} else {
				// Otherwise, filter by property_id equal to record_status
				$this->db->where("ft.status", $params['record_status']);
			}
		}


		if (!empty($params['is_display'])) {
			if ($params['is_display'] == 'zero') {
				// If is_display is 'zero', filter by status = 0
				$this->db->where("ft.is_display = 0");
			} else {
				// Otherwise, filter by property_id equal to is_display
				$this->db->where("ft.is_display", $params['is_display']);
			}
		}

		// If both 'field_value' and 'field_name' are set in the $params array, filter results where the field contains the value
		if (!empty($params['field_value']) && !empty($params['field_name'])) {
			$this->db->where("$params[field_name] like ('%$params[field_value]%')");
		}

		// If 'limit' and 'offset' are set in the $params array, limit the number of results and set the offset
		if (!empty($params['limit']) && !empty($params['offset'])) {
			$this->db->limit($params['limit'], $params['offset']);
		}
		// If only 'limit' is set, just limit the number of results
		else if (!empty($params['limit'])) {
			$this->db->limit($params['limit']);
		}

		// Execute query and get results
		$query_get_list = $this->db->get();
		$result = $query_get_list->result();//RESULT CONTAINS ARRAY OF ADMIN_USERS


		// If details parameter is provided, fetch additional details
		if (!empty($result) && !empty($params['details'])) {
			foreach ($result as $item) {


				$this->db->select("ft.*");
				$this->db->from("property_gallery_image as ft");
				$this->db->where("ft.property_id", $item->id);
				$this->db->order_by("ft.position asc");
				$item->property_gallery_image = $this->db->get()->result();




			}
		}

		return $result; // Return the final result
	}



	function get_property_gallery_image_data($params = array())
	{
		$result = '';

		// Check if search_for parameter is provided to decide the count query
		if (!empty($params['search_for'])) {

			$this->db->select("count(ft.id) as counts"); // Select count of records
		} else {

			// Select all required fields and additional information
			$this->db->select("ft.* ");
			$this->db->select("(select au.admin_user_name from admin_user as  au where au.admin_user_id = ft.added_by) as added_by_name "); // Select added_by user's name
			$this->db->select("(select au.admin_user_name from admin_user as  au where au.admin_user_id = ft.updated_by) as updated_by_name "); // Select updated_by user's name
			$this->db->select("(select au.admin_user_name from admin_user as  au where au.admin_user_id = ft.is_deleted_by) as is_deleted_by_name "); // Select updated_by user's name
		}

		// From admin_user table "ft" refers to "from table"
		$this->db->from("property_gallery_image as ft");

		// Joins with other tables
		// $this->db->join("property_plans as  tp", "tp.property_id = ft.property_id");
		// $this->db->join("things_to_carry as  ttc", "ttc.property_id = ft.property_id");
		// $this->db->join("gallery as  g", "g.property_id = ft.property_id");

		// Conditional logic for ordering results
		if (!empty($params['sortByPosition'])) {
			$this->db->order_by("ft.position ASC");
		} else if (!empty($params['order_by'])) {
			$this->db->order_by($params['order_by']);
		} else {
			$this->db->order_by("ft.id desc");
		}



		// Conditions based on provided parameters
		if (!empty($params['id'])) {
			$this->db->where("ft.id", $params['id']);
		}

		if (!empty($params['property_id'])) {
			$this->db->where("ft.property_id", $params['property_id']);
		}



		if (!empty($params['start_date'])) {
			$temp_date = date('Y-m-d', strtotime($params['start_date']));
			$this->db->where("DATE_FORMAT(ft.added_on, '%Y%m%d') >= DATE_FORMAT('$temp_date', '%Y%m%d')"); // Start date condition
		}

		if (!empty($params['end_date'])) {
			$temp_date = date('Y-m-d', strtotime($params['end_date']));
			$this->db->where("DATE_FORMAT(ft.added_on, '%Y%m%d') <= DATE_FORMAT('$temp_date', '%Y%m%d')"); // End date condition
		}

		if (!empty($params['record_status'])) {
			if ($params['record_status'] == 'zero') {
				$this->db->where("ft.status = 0"); // Status zero condition
			} else {
				$this->db->where("ft.status", $params['record_status']); // Specific status condition
			}
		}

		if (!empty($params['field_value']) && !empty($params['field_name'])) {
			$this->db->where("$params[field_name] like ('%$params[field_value]%')"); // Field name and value condition
		}

		if (!empty($params['limit']) && !empty($params['offset'])) {
			$this->db->limit($params['limit'], $params['offset']); // Limit and offset for pagination
		} else if (!empty($params['limit'])) {
			$this->db->limit($params['limit']); // Limit for number of records
		}


		// Execute query and get results
		$query_get_list = $this->db->get();
		$result = $query_get_list->result();//RESULT CONTAINS ARRAY OF ADMIN_USERS




		return $result; // Return the final result
	}

}

?>