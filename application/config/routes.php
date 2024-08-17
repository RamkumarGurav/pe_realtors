<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'user';
$route['secureRegions'] = 'secureRegions/login';
$route['404_override'] = 'User/pageNotFound';
$route['translate_uri_dashes'] = TRUE;



$route['search-results'] = 'user/search_results';
$route['add_input_fields'] = 'user/add_input_fields';
$route['property-details/(:any)'] = 'user/property_details/$1';
// $route['products/(:any)/(:any)'] = 'products/$1/$2';

$route['contact-us'] = 'user/contact_us';
$route['about-us'] = 'user/about_us';
$route['clients'] = 'user/clients';
$route['thank-you'] = 'user/thank_you';
$route['error'] = 'user/error';

// $route['testp'] = 'user/testp';
// $route['test1'] = 'user/test1';
// $route['test2'] = 'user/test2';
// $route['test3'] = 'user/test3';
$route['do_enquiry'] = 'user/do_enquiry';
// $route['ajax_insert_enquiry'] = 'user/ajax_insert_enquiry';
// $route['ajax_insert_career_enquiry'] = 'user/ajax_insert_career_enquiry';
// $route['ajax_insert_user_employee_logout'] = 'user/ajax_insert_user_employee_logout';
$route['access-denied'] = 'user/access_denied';
$route['test1'] = 'user/test1';





$route['404found'] = "user/found404";






