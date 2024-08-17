<?php
if (!defined('BASEPATH'))
  exit('No direct script access allowed');


include_once('Main.php');
class User extends Main
{

  public function __construct()
  {
    parent::__construct();

    //models
    $this->load->model('Common_model');
    $this->load->model('User_model');


    //headers
    $this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");
    $this->output->set_header("Pragma: no-cache");

  }

  public function index()
  {

    $this->data['meta_title'] = _project_name_;
    $this->data['meta_description'] = _project_name_;
    $this->data['meta_keywords'] = _project_name_;
    $this->data['meta_others'] = "";



    $search['limit'] = 10;
    $search['is_display'] = 1;
    $search['record_status'] = 1;

    // $search['search_for'] = "count";

    $this->data['property_data'] = $this->User_model->get_property_data(
      $search
    );



    // $this->data['direct_css'] = array(
    //   'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css',
    //   'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css',
    //   'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css',

    // );//

    // $this->data['direct_js'] = array(
    //   'https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js',
    //   'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js',
    //   "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js",

    // );//, 'js/all-scripts.js'
    // $this->data['js'] = array("js/home.js", );//, 'js/all-scripts.js'


    parent::get_header('header', $this->data);
    $this->load->view('home', $this->data);
    parent::get_footer('footer', $this->data);
  }



  function search_results()
  {



    // if (isset($_POST['search_results_form_type'])) {
    //   echo "<pre> <br>";
    //   print_r($_POST);
    //   exit;
    // }






    $search = array();
    $search_keyword = '';
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

    $sale_type = "";
    $sale_duration_type = "";
    $start_sale_amount = "";
    $end_sale_amount = "";

    $bhk_type_id = "";
    $plot_facing_type_id = "";
    $door_facing_type_id = "";
    $plot_dimension_sqft = "";
    $built_up_area = "";
    $in_acres = "";
    $in_guntas = "";
    $gated_community_type_id = "";



    $is_negotiable = "";
    $is_display = 1;
    $record_status = 1;




    if (!empty($_REQUEST['search_keyword']))
      $search_keyword = $_POST['search_keyword'];
    else if (!empty($search_keyword))
      $search_keyword = $search_keyword;


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


    if (!empty($_GET['p_type'])) {
      $property_type_id = $_GET['p_type'];
    }
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





    if (!empty($_POST['sale_type']))
      $sale_type = $_POST['sale_type'];
    if (!empty($_POST['sale_duration_type']))
      $sale_duration_type = $_POST['sale_duration_type'];
    if (!empty($_POST['start_sale_amount']))
      $start_sale_amount = $_POST['start_sale_amount'];
    if (!empty($_POST['end_sale_amount']))
      $end_sale_amount = $_POST['end_sale_amount'];



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







    if (!empty($_POST['is_negotiable']))
      $is_negotiable = $_POST['is_negotiable'];








    $this->data['search_keyword'] = $search_keyword;
    $this->data['field_name'] = $field_name;
    $this->data['field_value'] = $field_value;

    $this->data['start_date'] = $start_date;
    $this->data['end_date'] = $end_date;


    $this->data['property_type_id'] = $property_type_id;
    $this->data['property_sub_type_id'] = $property_sub_type_id;
    $this->data['property_age_id'] = $property_age_id;

    $this->data['state_id'] = $state_id;
    $this->data['city_id'] = $city_id;
    $this->data['location_id'] = $location_id;


    $this->data['sale_type'] = $sale_type;
    $this->data['sale_duration_type'] = $sale_duration_type;
    $this->data['start_sale_amount'] = $start_sale_amount;
    $this->data['end_sale_amount'] = $end_sale_amount;

    $this->data['bhk_type_id'] = $bhk_type_id;
    $this->data['plot_facing_type_id'] = $plot_facing_type_id;
    $this->data['door_facing_type_id'] = $door_facing_type_id;
    $this->data['plot_dimension_sqft'] = $plot_dimension_sqft;
    $this->data['built_up_area'] = $built_up_area;
    $this->data['in_acres'] = $in_acres;
    $this->data['in_guntas'] = $in_guntas;
    $this->data['gated_community_type_id'] = $gated_community_type_id;

    $this->data['is_negotiable'] = $is_negotiable;

    $search['search_keyword'] = $search_keyword;
    $search['field_name'] = $field_name;
    $search['field_value'] = $field_value;

    $search['start_date'] = $start_date;
    $search['end_date'] = $end_date;


    $search['property_type_id'] = $property_type_id;
    $search['property_sub_type_id'] = $property_sub_type_id;
    $search['property_age_id'] = $property_age_id;

    $search['state_id'] = $state_id;
    $search['city_id'] = $city_id;
    $search['location_id'] = $location_id;


    $search['sale_type'] = $sale_type;
    $search['sale_duration_type'] = $sale_duration_type;
    $search['start_sale_amount'] = $start_sale_amount;
    $search['end_sale_amount'] = $end_sale_amount;

    $search['bhk_type_id'] = $bhk_type_id;
    $search['plot_facing_type_id'] = $plot_facing_type_id;
    $search['door_facing_type_id'] = $door_facing_type_id;
    $search['plot_dimension_sqft'] = $plot_dimension_sqft;
    $search['built_up_area'] = $built_up_area;
    $search['in_acres'] = $in_acres;
    $search['in_guntas'] = $in_guntas;
    $search['gated_community_type_id'] = $gated_community_type_id;

    $search['is_negotiable'] = $is_negotiable;
    $search['is_display'] = 1;
    $search['record_status'] = 1;

    // $search['search_for'] = "count";

    $this->data['property_data'] = $this->User_model->get_property_data(
      $search
    );



    $this->data['state_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'state', 'where' => "state_id > 0 and status = 1 and is_display=1", "order_by" => "state_name ASC"));
    $this->data['city_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'city', 'where' => "city_id > 0 and status = 1 and is_display=1", "order_by" => "city_name ASC"));
    $this->data['location_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'location', 'where' => "location_id > 0 and status = 1 and is_display=1", "order_by" => "location_name ASC"));
    $this->data['property_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'property_type', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));
    $this->data['property_sub_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'property_sub_type', 'where' => "id > 0  and status = 1", "order_by" => "name ASC"));
    $this->data['property_age_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'property_age', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));
    $this->data['facing_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'facing_type', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));
    $this->data['bhk_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'bhk_type', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));
    $this->data['gated_community_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'gated_community_type', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));




    parent::get_header('header', $this->data);
    $this->load->view('search_results', $this->data);
    parent::get_footer('footer', $this->data);
  }


  function add_input_fields()
  {




    $selected_property_type_id = 0;
    if (!empty($_POST['selected_property_type_id'])) {
      $selected_property_type_id = $_POST['selected_property_type_id'];
    }



    $this->data['selected_property_type_id'] = $selected_property_type_id;
    $this->data['property_age_data'] = $this->Common_model->get_data(array(
      'select' => '*',
      'from' => 'property_age',
      'where' => "id > 0 and status = 1",
      "order_by" => "name ASC"
    ));
    $this->data['facing_type_data'] = $this->Common_model->get_data(array(
      'select' => '*',
      'from' => 'facing_type',
      'where' => "id > 0 and status = 1",
      "order_by" => "name ASC"
    ));
    $this->data['bhk_type_data'] = $this->Common_model->get_data(array(
      'select' => '*',
      'from' => 'bhk_type',
      'where' => "id > 0 and status = 1",
      "order_by" => "name ASC"
    ));
    $this->data['gated_community_type_data'] = $this->Common_model->get_data(array('select' => '*', 'from' => 'gated_community_type ', 'where' => "id > 0 and status = 1", "order_by" => "name ASC"));



    $html_data = $this->load->view('template/add_input_fields', $this->data, true);



    echo json_encode(array("html_data" => $html_data));
    die;
  }



  function property_details($property_slug = "")
  {




    $search['slug_url'] = $property_slug;
    $search['is_display'] = 1;
    $search['record_status'] = 1;
    $search['details'] = 1;

    // $search['search_for'] = "count";

    $this->data['property_data'] = $this->User_model->get_property_data(
      $search
    );

    if (!empty(count($this->data['property_data']))) {
      $this->data['property_data'] = $this->data['property_data'][0];
    }





    parent::get_header('header', $this->data);
    $this->load->view('property_details', $this->data);
    parent::get_footer('footer', $this->data);
  }





  function host_captcha_validation()
  {
    if (true) {
      if (isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER'] != '') {
        $link = $_SERVER['HTTP_REFERER'];
        $link_array = explode('/', $link);
        $page_action = end($link_array);
        $parts = parse_url($link);
        $page_host = $parts['host'];
        if (strpos($parts["host"], 'www.') !== false) { //echo 'yes<br>';
          $parts1 = explode('www.', $parts["host"]);
          $page_host = $parts1[1];
        }

        // $host='steelagebuildingsystem.com';
        $host = _mainsite_host_;

        if ($page_host != $host) {
          echo '<script language="javascript">';
          echo 'alert("Host validation failed! Please try again.")';
          echo '</script>';
          echo "<script>location.href='error'</script>";
          die();
        }
      } else {
        echo '<script language="javascript">';
        echo 'alert("Error: HTTP_REFERER failed! Please try again.")';
        echo '</script>';
        echo "<script>location.href='error'</script>";
        die();
      }

      $request = '';


      if (isset($_POST['g-recaptcha-response']) && !empty($_POST['g-recaptcha-response'])) {
        $param['secret'] = _google_recaptcha_secret_key_;
        $param['response'] = $_POST['g-recaptcha-response'];
        $param['remoteip'] = $_SERVER['REMOTE_ADDR'];
        foreach ($param as $key => $val) {
          $request .= $key . "=" . $val;
          $request .= "&";
        }
        $request = substr($request, 0, strlen($request) - 1);
        $url = "https://www.google.com/recaptcha/api/siteverify?" . $request;
        //echo $url; exit;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_FRESH_CONNECT, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_VERBOSE, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $result_data = curl_exec($ch);
        if (curl_exec($ch) === false) {
          $error_info = curl_error($ch);
        }
        curl_close($ch);

        $response = json_decode($result_data);
        if ($response->success != 1) {
          echo '<script language="javascript">';
          echo 'alert("google recaptcha validation failed! Please try again.")';
          echo '</script>';
          echo "<script>location.href='error'</script>";
          die();
        }
      } else {
        echo '<script language="javascript">';
        echo 'alert("Error: google recaptcha post validation failed! Please try again.")';
        echo '</script>';
        echo "<script>location.href='error'</script>";
        die();
      }
    }

  }




  function do_enquiry()
  {


    date_default_timezone_set('Asia/Kolkata');
    $timestamp = date("Y-m-d H:i:s");

    //echo '<pre>'; print_r($_POST); echo '</pre>'; exit; 

    $this->host_captcha_validation();
    //exit;
    //echo "2";
    if (
      !empty($_POST['enq_type']) && !empty($_POST['name_contact_us']) && !empty($_POST['email_contact_us']) && !empty($_POST['contact_contact_us'])
      && !empty($_POST['qualification_contact_us']) && !empty($_POST['appliedfor_contact_us']) && !empty($_POST['experience_contact_us']) && $_SERVER['REQUEST_METHOD'] == 'POST'
    ) {
      $full_name = '';
      if (isset($_POST['name_contact_us']) && !empty($_POST['name_contact_us'])) {
        $full_name = trim($_POST['name_contact_us']);
      }

      $pagelink = '';
      if (isset($_POST['pagelink']) && !empty($_POST['pagelink'])) {
        $pagelink = trim($_POST['pagelink']);
      }

      $email = '';
      if (isset($_POST['email_contact_us']) && !empty($_POST['email_contact_us'])) {
        $email = trim($_POST['email_contact_us']);
      }

      $contact = '';
      if (isset($_POST['contact_contact_us']) && !empty($_POST['contact_contact_us'])) {
        $contact = trim($_POST['contact_contact_us']);
      }

      $qualification = '';
      if (isset($_POST['qualification_contact_us']) && !empty($_POST['qualification_contact_us'])) {
        $qualification = trim($_POST['qualification_contact_us']);
      }

      $appliedfor = '';
      if (isset($_POST['appliedfor_contact_us']) && !empty($_POST['appliedfor_contact_us'])) {
        $appliedfor = trim($_POST['appliedfor_contact_us']);
      }

      $experience = '';
      if (isset($_POST['experience_contact_us']) && !empty($_POST['experience_contact_us'])) {
        $experience = trim($_POST['experience_contact_us']);
      }

      $ip_address = $this->Common_model->get_client_ip();

      $userfile = $mail_userfile = '';

      if (isset($_FILES['userfile_contact_us']['name']) && !empty($_FILES['userfile_contact_us']['name']))
        $userfile = $_FILES['userfile_contact_us']['name'];
      if (!empty($userfile)) {
        $temp_var = explode(".", strtolower($userfile));
        $timage_ext = end($temp_var);

        $temp_name = 'RESUME-';
        if (!empty($full_name)) {
          $temp_full_name = str_replace(' ', '_', $full_name);
          $temp_name = ucwords($temp_full_name) . '-RESUME-';
        }
        // echo "UploadedFiles - " . _uploaded_files_;
        $main_img = $temp_name . $this->n_digit_random(4) . '.' . $timage_ext;
        // echo "main_img : $main_img";
        $target_folder_name = "career_resume";
        if (!is_dir(_uploaded_temp_files_ . $target_folder_name)) {
          mkdir(_uploaded_temp_files_ . './' . $target_folder_name, 0777, TRUE);

        }
        // move_uploaded_file($_FILES['userfile_contact_us']['tmp_name'], "E:/xampp/htdocs/xampp/MARS/steelagebuildingsystem/assets/uploads/" . $main_img);

        move_uploaded_file($_FILES['userfile_contact_us']['tmp_name'], _uploaded_temp_files_ . $target_folder_name . "/" . $main_img);
        //$mail_userfile = MAINSITE . $target_folder_name . "/" . $main_img;
        $mail_userfile = _uploaded_files_ . $target_folder_name . "/" . $main_img;
      }

      // $ip_address = $this->Common_model->get_client_ip();
      $date = date('D dS M, Y h:i a');

      $mailMessage = file_get_contents(APPPATH . 'mailer/career.html');
      $mailMessage = preg_replace('/\\\\/', '', $mailMessage); //Strip backslashes
      $mailMessage = str_replace("#enq_date#", stripslashes($date), $mailMessage);
      $mailMessage = str_replace("#name#", stripslashes($full_name), $mailMessage);
      $mailMessage = str_replace("#contact#", stripslashes($contact), $mailMessage);
      $mailMessage = str_replace("#qualification#", stripslashes($qualification), $mailMessage);
      $mailMessage = str_replace("#appliedfor#", stripslashes($appliedfor), $mailMessage);
      $mailMessage = str_replace("#experience#", stripslashes($experience), $mailMessage);
      $mailMessage = str_replace("#email#", stripslashes($email), $mailMessage);
      $mailMessage = str_replace("#ip_address#", stripslashes($ip_address), $mailMessage);
      $mailMessage = str_replace("#page_url#", stripslashes($pagelink), $mailMessage);
      $mailMessage = str_replace("#mainsite#", MAINSITE, $mailMessage);
      $mailMessage = str_replace("#company_name#", _project_complete_name_, $mailMessage);


      $to_name = $from_name = "Steel Age Building System";
      $subject = "New Inquiry From www.steelagebuildingsystem.com";
      if ($_POST['enq_type'] == 'careers') {
        $subject = "New Career Contact Inquiry - " . $from_name;
      }
      //$address = $from_email = "clientnoreply@webdesigncompanybangalore.com";
      $address = $from_email = "clientnoreply@webdesigncompanybangalore.com";
      $to = "abhishek.khandelwal82@gmail.com";
      // $to = "steelagebuildingsystem@gmail.com";





      $mailStatus = $this->Common_model->send_mail(
        array(
          "template" => $mailMessage,
          "subject" => $subject,
          "to" => "$to",
          "name" => $to_name,
          "attachment" => $main_img
        )
      );



      //exit;
      $_SESSION['is_thank_you_page'] = 1;
      $location = MAINSITE . 'thank-you';

      //header('Location: '.$location);
      //exit;
      echo "<script>location.href='thank-you'</script>";
      die();
    } else if (!empty($_POST['enq_type']) && !empty($_POST['name_contact_us']) && !empty($_POST['email_contact_us']) && !empty($_POST['contact_contact_us']) && !empty($_POST['message_contact_us']) && $_SERVER['REQUEST_METHOD'] == 'POST') {
      //echo "2";
      if (isset($_POST['message_contact_us']) && !empty($_POST['message_contact_us'])) {
        if (preg_match('/http|www/i', $_POST['message_contact_us'])) {
          echo '<script language="javascript">';
          echo 'alert("Something Went Wrong! Please try again.")';
          echo '</script>';
          echo "<script>location.href='error'</script>";
          die();
        }
      }

      $full_name = '';
      if (isset($_POST['name_contact_us']) && !empty($_POST['name_contact_us'])) {
        $full_name = trim($_POST['name_contact_us']);
      }

      $pagelink = '';
      if (isset($_POST['pagelink']) && !empty($_POST['pagelink'])) {
        $pagelink = trim($_POST['pagelink']);
      }

      $email = '';
      if (isset($_POST['email_contact_us']) && !empty($_POST['email_contact_us'])) {
        $email = trim($_POST['email_contact_us']);
      }

      $contact = '';
      if (isset($_POST['contact_contact_us']) && !empty($_POST['contact_contact_us'])) {
        $contact = trim($_POST['contact_contact_us']);
      }

      $message = '';
      if (isset($_POST['message_contact_us']) && !empty($_POST['message_contact_us'])) {
        $message = trim($_POST['message_contact_us']);
      }
      $ip_address = $this->Common_model->get_client_ip();
      $date = date('D dS M, Y h:i a');

      $mailMessage = file_get_contents(APPPATH . 'mailer/enquiry.html');
      $mailMessage = preg_replace('/\\\\/', '', $mailMessage); //Strip backslashes
      $mailMessage = str_replace("#enq_date#", stripslashes($date), $mailMessage);
      $mailMessage = str_replace("#name#", stripslashes($full_name), $mailMessage);
      $mailMessage = str_replace("#contact#", stripslashes($contact), $mailMessage);
      $mailMessage = str_replace("#email#", stripslashes($email), $mailMessage);
      $mailMessage = str_replace("#ip_address#", stripslashes($ip_address), $mailMessage);
      $mailMessage = str_replace("#message#", stripslashes($message), $mailMessage);
      $mailMessage = str_replace("#page_url#", stripslashes($pagelink), $mailMessage);
      $mailMessage = str_replace("#mainsite#", MAINSITE, $mailMessage);
      $mailMessage = str_replace("#company_name#", _project_complete_name_, $mailMessage);


      $to_name = $from_name = "Steel Age Building System";
      $subject = "New Inquiry From www.steelagebuildingsystem.com";
      if ($_POST['enq_type'] == 'career') {
        $subject = "New Career Contact Inquiry - " . $from_name;
      }
      //$address = $from_email = "clientnoreply@webdesigncompanybangalore.com";
      $address = $from_email = "clientnoreply@webdesigncompanybangalore.com";
      $to = "abhishek.khandelwal82@gmail.com";
      // $to = "steelagebuildingsystem@gmail.com";


      $mailStatus = $this->Common_model->send_mail(array("template" => $mailMessage, "subject" => $subject, "to" => "$to", "name" => $to_name));
      //exit;
      $_SESSION['is_thank_you_page'] = 1;
      $location = MAINSITE . 'thank-you';

      //header('Location: '.$location);
      //exit;
      echo "<script>location.href='thank-you'</script>";
      die();
    } else {
      echo "<script>location.href='error'</script>";
      die();
    }






  }




  function n_digit_random($digits)
  {
    return rand(pow(10, $digits - 1) - 1, pow(10, $digits) - 1);
  }















  // public function testp()
  // {
  //   $this->data['meta_title'] = _project_name_ . " - TESTp";
  //   $this->data['meta_description'] = _project_name_ . " - TESTp";
  //   $this->data['meta_keywords'] = _project_name_ . " - TESTp";
  //   $this->data['meta_others'] = "";



  //   $this->load->view('testp', $this->data);
  // }
  // public function test1()
  // {
  //   $this->data['meta_title'] = _project_name_ . " - TEST";
  //   $this->data['meta_description'] = _project_name_ . " - TEST";
  //   $this->data['meta_keywords'] = _project_name_ . " - TEST";
  //   $this->data['meta_others'] = "";



  //   $this->load->view('test1', $this->data);
  // }
  // public function test2()
  // {
  //   $this->data['meta_title'] = _project_name_ . " - TEST";
  //   $this->data['meta_description'] = _project_name_ . " - TEST";
  //   $this->data['meta_keywords'] = _project_name_ . " - TEST";
  //   $this->data['meta_others'] = "";



  //   $this->load->view('test2', $this->data);
  // }
  // public function test3()
  // {
  //   $this->data['meta_title'] = _project_name_ . " - TEST";
  //   $this->data['meta_description'] = _project_name_ . " - TEST";
  //   $this->data['meta_keywords'] = _project_name_ . " - TEST";
  //   $this->data['meta_others'] = "";



  //   $this->load->view('test3', $this->data);
  // }















  public function clients()
  {
    $this->data['meta_title'] = _project_name_ . " - Clients";
    $this->data['meta_description'] = _project_name_ . " - Clients";
    $this->data['meta_keywords'] = _project_name_ . " - Clients";
    $this->data['meta_others'] = "";

    parent::get_header('header', $this->data);
    $this->load->view('clients', $this->data);
    parent::get_footer('footer', $this->data);
  }


  public function about_us()
  {
    $this->data['meta_title'] = _project_name_ . " - About Us";
    $this->data['meta_description'] = _project_name_ . " - About Us";
    $this->data['meta_keywords'] = _project_name_ . " - About Us";
    $this->data['meta_others'] = "";






    parent::get_header('header', $this->data);
    $this->load->view('about_us', $this->data);
    parent::get_footer('footer', $this->data);
  }





  public function contact_us()
  {

    $this->data['meta_title'] = _project_name_ . " - Contact Us";
    $this->data['meta_description'] = _project_name_ . " - Contact Us";
    $this->data['meta_keywords'] = _project_name_ . " - Contact Us";
    $this->data['meta_others'] = "";


    // $this->data['js'] = array('js/custom_parsley.js');//, 'js/all-scripts.js'
    // $this->data['direct_css'] = array('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css');//, 'js/all-scripts.js'
    // $this->data['direct_js'] = array('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js', );//, 'js/all-scripts.js'

    parent::get_header('header', $this->data);

    $this->load->view('contact_us', $this->data);

    parent::get_footer('footer', $this->data);
  }

  public function thank_you()
  {
    $this->data['meta_title'] = _project_name_ . " - Thank You";
    $this->data['meta_description'] = _project_name_ . " - Thank You";
    $this->data['meta_keywords'] = _project_name_ . " - Thank You";
    $this->data['meta_others'] = "";


    parent::get_header('header', $this->data);
    $this->load->view('thank_you', $this->data);
    parent::get_footer('footer', $this->data);
  }

  public function pageNotFound()
  {
    $this->data['meta_title'] = _project_name_ . " - Page Not Found";
    $this->data['meta_description'] = _project_name_ . " - Page Not Found";
    $this->data['meta_keywords'] = _project_name_ . " - Page Not Found";
    $this->data['meta_others'] = "";

    $this->load->view('pageNotFound', $this->data);
  }

  public function found404()
  {
    $this->data['meta_title'] = _project_name_ . " - 404 found";
    $this->data['meta_description'] = _project_name_ . " - 404 found";
    $this->data['meta_keywords'] = _project_name_ . " - 404 found";
    $this->data['meta_others'] = "";

    parent::get_header('header', $this->data);
    $this->load->view('404found', $this->data);
    parent::get_footer('footer', $this->data);
  }

  public function error()
  {
    $this->data['meta_title'] = _project_name_ . " - Error";
    $this->data['meta_description'] = _project_name_ . " - Error";
    $this->data['meta_keywords'] = _project_name_ . " - Error";
    $this->data['meta_others'] = "";

    parent::get_header('header', $this->data);
    $this->load->view('error', $this->data);
    parent::get_footer('footer', $this->data);
  }












}
