<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Category_model');
	}

	public function index()
	{
		///$data['plan']=$this->db->get('category_table')->result();
		$this->load->view('index');
	}
	
	public function search()
	{
		$name=str_replace('%20', ' ',$_REQUEST['str_state']);
		 $data=$this->Category_model->datasearch($name);
		
		if($data!='')
		{
			echo '<ul class="list-group">';
			foreach($data as $value){
				echo '<li class="list-group-item"><a href="'.base_url('product/country/').str_replace(' ','-',$name).'">'.$value->country." ".$value->city_state." ".$value->city_name.'</a></li>';
			}
			echo '</ul>';
		}
		else{
			echo 'data not found!';
		}
	}
}
