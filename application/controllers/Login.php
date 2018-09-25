<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');
		$this->load->database();
		$this->load->library('session');
		

	}
	
	public function index()
	{		
		 $this->load->view('login');
		
	}
	public function save()
	{
		$data = array(
			'first_name' => $this->input->post('name'),
			'last_name' => $this->input->post('last'), 
			'email' => $this->input->post('email'),
			'mobile' => $this->input->post('mobile'),
			'password' => md5($this->input->post('password')),
		);
		$q=$this->User_model->check($this->input->post('email'));
		if($q[0]->email==$this->input->post('email'))
		{

		$this->session->set_flashdata('message', '<div class="alert alert-danger">
  			<strong>Danger!</strong>Email ID Already Exit</div>');
			redirect(base_url());
		}
		else{
			$this->User_model->customer_form_insert($data);
		$this->session->set_flashdata('message', '<div class="alert alert-success">
  		<strong>Success!</strong>New User Registration Successfull</div>');
		redirect(base_url());
		}
		
	}
	public function user_login()
	{
		 $admin_name = $this->input->post('email');
		 $password = md5($this->input->post('password'));
		$key = $this->User_model->admin_login($admin_name,$password);
		if(@$key[0]!='')
		{
				$data1 = array(
                'id' => $key[0]->id,
                'name' => $key[0]->first_name,
                'email' => $key[0]->email,
                'mobile' => $key[0]->mobile,
                'login_time'=>$key[0]->login_time,
                'login_in'=>true,
               );
			
				$ses=$this->session->set_userdata($data1);
				//print_r($ses); die;
				redirect(base_url().'profile');				
		}
		else{
			redirect(base_url());
	
		}
	}
	

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
	public function checkEmail()
	{
		 $email=$_REQUEST['email'];
		 $data=$this->db->get_where('users',array('email'=>$email))->result();
		if(@$data[0]->email)
		{
			echo "Email Already Exist";
		}else{
			echo "OK";
		}
	}
}
