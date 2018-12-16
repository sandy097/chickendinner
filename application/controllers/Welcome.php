<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->library('cart');
	}
	
	public function index()
	{
		$data['products'] = $this->produk_model->daftar_produk();
		$this->load->view('welcome_message',$data);
	}
	
	public function kategori($kategori)
	{
		$data['products'] = $this->produk_model->select_kategori($kategori);
		$this->load->view('welcome_message',$data);
	}
	
	public function add_to_cart($id)
	{
		$produk = $this->produk_model->select_by_id($id);
		$nama = $produk->product_name.' '.$produk->writer;
		$data = array(
						'order_id' => $produk->id,
						'qty' => 1,
						'price' => $produk->harga,
						'options' => $nama
		);
		
		$this->cart->insert($data);
		redirect(base_url());
	}
	
	public function add_to_cartdetail($id)
	{
		$produk = $this->produk_model->select_by_id($id);
		$nama = $produk->brand.' '.$produk->model;
		$data = array(
						'id' => $produk->id,
						'qty' => 1,
						'price' => $produk->harga,
						'product_name' => $nama
		);
		
		$this->cart->insert($data);
		redirect('welcome/detailproduk/'.$id);
	}
	
	public function cart()
	{
		$this->load->view('show_cart');
	}
	
	public function destroy_cart()
	{
		$this->cart->destroy();
		$this->load->view('show_cart');
	}
	
	public function email()
	{
		$this->load->view('confirm_email');
	}
	
	public function prosestransaksi()
	{
		$this->produk_model->process();
	}
	
	public function test()
	{
		$cartContentString = serialize($this->cart->contents());
		echo $cartContentString;
	}
	
	public function konfirmasi()
	{
		$this->load->view('konfirmasi');
	}
	
	public function detailproduk($id)
	{
		$data['products'] = $this->produk_model->select_by_id($id);
		$this->load->view('detail_produk',$data);
	}
	
	public function proses_konfirmasi()
	{
		$config['upload_path']          = './uploads/konfirmasi/';
		$config['allowed_types']        = 'jpg|png|jpeg';
		$config['max_size']             = 10000;
		$config['max_width']            = 5000;
		$config['max_height']           = 5000;

		$this->load->library('upload', $config);
		
		if (!$this->upload->do_upload())
		{
			$this->load->view('konfirmasi');
		}
		else
		{
			$gambar = $this->upload->data();
			
			$data['invoice_id'] = $this->input->post('invoice_id',true);
			$data['gambar'] = $gambar['file_name'];
		
			$this->produk_model->insert_konfirmasi($data);
			$this->load->view('confirm_success');
		}
	}
	
	
	public function cariproduk()
	{

		$keyword = $this->input->post('keyword');
		$data['products']=$this->produk_model->cariproduk($keyword);
		$this->load->view('v_cari',$data);

		/*
		$kategori = $this->input->post('kategori',true);
		$str = $this->input->post('str',true);
		
		$data['produk'] = $this->produk_model->cariproduk($kategori,$str);
		$this->load->view('welcome_message',$data);
		*/
	}

}
