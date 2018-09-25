<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * shubham Sahu
 */
class Merchant extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        if(!$this->session->userdata('login_in')==true)
	    {
	      redirect(base_url().'login/logout');
	    }
    }
    public function index()
    {
    	$id=$this->session->userdata('id');
		$email=$this->session->userdata('email');
		$data['users']=$this->db->get_where('users',array('id'=>$id))->result();
		$data['state']=$this->db->query('SELECT DISTINCT city_state FROM cities')->result();
		$data['category']=$this->db->get_where('booking',array('email'=>$email))->result();
		$this->load->view('profile',$data);
    }
    public function update()
    {
    	print_r($_REQUEST);
    }

}