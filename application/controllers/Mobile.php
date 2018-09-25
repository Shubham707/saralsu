<?php
defined('BASEPATH') or exit('No script direct access allowed');
/**
 * shubham Sahu
 */
class Mobile extends CI_Controller
{
	public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model(array('Product_model','Category_model'));
        $this->load->helper(array('cookie', 'url'));
    }
    public function index()
    {
    	$this->load->view('mobile-no');
    }

}