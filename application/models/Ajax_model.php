<?php
class Ajax_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
    date_default_timezone_set("Asia/Kolkata");
  }

  function get_state($params = array())
  {
    $this->db
      ->select('ft.*')
      ->from('state as ft')
      ->where('ft.status', 1)
      ->order_by('ft.state_name ASC');
    if (!empty($params['country_id']))
      $this->db->where('ft.country_id', $params['country_id']);
    $result = $this->db->get();
    if ($result->num_rows() > 0) {
      $result = $result->result();
      return $result;
    } else {
      return false;
    }
  }

  function get_city($params = array())
  {
    $this->db
      ->select('ft.*')
      ->from('city as ft')
      ->where('ft.status', 1)
      ->order_by('ft.city_name ASC');
    if (!empty($params['state_id']))
      $this->db->where('ft.state_id', $params['state_id']);
    $result = $this->db->get();
    if ($result->num_rows() > 0) {
      $result = $result->result();
      return $result;
    } else {
      return false;
    }
  }



  function get_property_sub_type_data($params = array())
  {
    $this->db
      ->select('ft.*')
      ->from('property_sub_type as ft')
      ->where('ft.status', 1)
      ->order_by('ft.name ASC');
    if (!empty($params['property_type_id']))
      $this->db->where('ft.property_type_id', $params['property_type_id']);
    $result = $this->db->get();
    if ($result->num_rows() > 0) {
      $result = $result->result();
      return $result;
    } else {
      return false;
    }
  }


  function get_dropdown_data($params = array())
  {
    // Extract parameters with default values
    $table_name = isset($params['table_name']) ? $params['table_name'] : '';
    $foreign_column_name = isset($params['foreign_column_name']) ? $params['foreign_column_name'] : '';
    $foreign_column_value = isset($params['foreign_column_value']) ? $params['foreign_column_value'] : '';
    $showable_column_name = isset($params['showable_column_name']) ? $params['showable_column_name'] : "name";

    // Check if table name is provided
    if (empty($table_name)) {
      return false;
    }

    // Start building the query
    $this->db->select('ft.*');
    $this->db->from($table_name . ' as ft');
    $this->db->where('ft.status', 1);
    $this->db->order_by('ft.' . $showable_column_name . ' ASC');

    // Add foreign column value condition if provided
    if (!empty($foreign_column_name) && !empty($foreign_column_value)) {
      $this->db->where('ft.' . $foreign_column_name, $foreign_column_value);
    }

    // Execute the query and return the result
    $result = $this->db->get();
    if ($result->num_rows() > 0) {
      return $result->result();
    } else {
      return false;
    }
  }


}

?>