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
		$data['bike']=$this->db->get('brand_table')->result();
		$id=$this->session->userdata('id');
		$email=$this->session->userdata('email');
		$data['users']=$this->db->get_where('users',array('id'=>$id))->result();
		$data['booking']=$this->db->get_where('booking',array('email'=>$email))->result();
		//print_r($data['booking']); die();
		$this->load->view('profile',$data);
	}
	public function update()
	{
		$id=$this->session->userdata('id');
		$data=array(
			'name'=> $this->input->post('name'),
			'email'=>$this->input->post('email'),
			'mobile'=>$this->input->post('mobile'),
			'bike_name'=>$this->input->post('bike_name'),
			'bike_ccc'=>$this->input->post('bike_ccc'),
			'bike_year'=>$this->input->post('bike_year'),
			'bike_location'=>$this->input->post('bike_location'),
			'address'=>$this->input->post('address'),
			'images'=>$this->input->post('images'),
		);
		$this->db->where('id',$id);
		$this->db->update('users',$data);
	}
	
}
