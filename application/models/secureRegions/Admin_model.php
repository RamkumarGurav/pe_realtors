<?php


class Admin_model extends CI_Model
{

	// public $session_uid = '';
	// public $session_name = '';
	// public $session_email = '';
	// public $session_company_profile_id = '';

	function __construct()
	{

		$this->load->database();

		$this->model_data = array();

		$this->db->query("SET sql_mode = ''");

		$this->session_auid = $this->session->userdata('session_auid');
		$this->session_auname = $this->session->userdata('session_auname');
		$this->session_auemail = $this->session->userdata('session_auemail');
		$this->session_aurid = $this->session->userdata('sess_current_aurid');
		$this->session_company_profile_id = $this->session->userdata('session_company_profile_id');

	}
























































}
