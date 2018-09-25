<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');
		$this->load->database();
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
	
	public function city()
	{
		$city=$this->input->post('param');
		$data=$this->db->get_where('cities',array('city_state'=>$city))->result();
		echo '<label>City</label><select class="form-control" name="city_booking" id="city_booking">';
		foreach ($data as $value) {
			echo '<option value="'.$value->city_name.'">'.$value->city_name.'</option>';
		}
		echo "</select>";
	}
	
}
