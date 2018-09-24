<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Shubham Sahu
 */

class Product extends CI_Controller
{
  
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model(array('Product_model','Category_model'));
    }
    public function index()
    {
    	$data['details']=$this->Product_model->listingData();
		$data['cat_lists']=$this->Product_model->listingcount();
		$this->load->view('product-list', $data);
    }
    public function country($str)
	{
	     $name=str_replace('-', ' ',$str);
	    $data['details']=$this->Product_model->datasearch($name);
	    $data['cat_lists']=$this->Product_model->listingcount();
		$this->load->view('product-list', $data);
		
	}
	public function menu()
	{
		$data['products']=$this->Product_model->listingData();
		$data['cats']=$this->Product_model->listingcount();
		$this->load->view('product-menu',$data);
	}
	public function selectCategory($value)
	{
		$data['details']=$this->Product_model->selectCategory($value);
		$data['cat_lists']=$this->Product_model->listingcount();
		$this->load->view('product-list', $data);
	}
	
}