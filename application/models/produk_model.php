<?php
defined('BASEPATH') OR EXIT('No direct access allowed');

class Produk_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function daftar_produk()
	{
		return $this->db->get('produk')->result();
	}
	
	public function select_by_id($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('produk')->row();
	}
	
	public function tambah_produk($data)
	{
		$this->db->insert('produk',$data);
	}
	
	public function edit_produk($id,$data)
	{
		$this->db->where('id',$id);
		$this->db->update('produk',$data);
	}
	
	public function delete_produk($id)
	{
		$this->db->where('id',$id);
		$this->db->delete('produk');
	}
	
	public function select_kategori($kategori)
	{
		$this->db->where('kategori',$kategori);
		return $this->db->get('produk')->result();
	}
	
	public function insert_order($data)
	{
		$this->db->insert('order',$data);
	}
	
	public function process()
	{
		$invoice = array(
			'date' => date('Y-m-d H:i:s'),
			'due_date' => date('Y-m-d H:i:s', mktime(date('H'),date('i'),date('s'),date('m'),date('d') + 1,date('Y'))),
			'status' => 'unpaid',
			'nama' => $this->input->post('nama',true),
			'nope' => $this->input->post('nope',true),
			'alamat' => $this->input->post('alamat',true),
		);
		$this->db->insert('invoices', $invoice);
		$invoice_id = $this->db->insert_id();
		
		foreach($this->cart->contents() as $item)
		{
			$data = array(
					'invoice_id' => $invoice_id,
					'product_id' => $item['id'],
					'product_name' => $item['name'],
					'qty' 		=> $item['qty'],
					'price' 	=> $item['price'],
			);
			$this->db->insert('orders',$data);
		}
		
		$this->cart->destroy();
		
		$this->load->view('order_success',$data);
		
		return TRUE;
	}
	
	public function all_invoices()
	{
		return $this->db->get('invoices')->result();
	}
	
	public function detailinvoices($id_invoices)
	{
		$this->db->where('invoice_id',$id_invoices);
		return $this->db->get('orders')->result();
	}
	
	public function cek_user($username,$password)
	{
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		
		return $this->db->get('admin')->row();
	}
	
	public function insert_konfirmasi($data)
	{
		$this->db->insert('konfirmasi',$data);
	}
	
	public function all_konfirmasi()
	{
		return $this->db->get('konfirmasi')->result();
	}
	
	public function detail_konfirmasi($invoice_id)
	{
		$this->db->where('invoice_id',$invoice_id);
		return $this->db->get('orders')->result();
	}
	

	public function cariproduk($keyword)
	{
		$this->db->select('*');
			$this->db->from('produk');
			$this->db->like('brand',$keyword);
			$this->db->or_like('model',$keyword);
			return $this->db->get()->result();
	}

	/*
		$this->db->like('model',$str);
		$this->db->or_like('brand',$str);
		$this->db->where('kategori',$kategori);
		return $this->db->get('produk')->result();
		*/
}