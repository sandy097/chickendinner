<?php
defined('BASEPATH') OR EXIT('No direct script access allowed');

class Login extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
	}
	
	function index()
	{
		$this->load->view('login');
	}
	
	function proses_login()
	{
		$username = $this->input->post('username',true);
		$password = $this->input->post('password',true);
		
		$akun = $this->produk_model->cek_user($username,$password);
		$temp_akun = count($akun);
		
		if ($temp_akun > 0)
		{
			$data = array(
							'logged_in'=>true
			);
			
			$this->session->set_userdata($data);
			redirect('admin');
		}
		else
		{
			$this->load->view('login');
		}
	}
}