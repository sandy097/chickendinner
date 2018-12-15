	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="<?php echo site_url('welcome/cart');?>"><img src="<?php echo base_url('assets/bootshop/themes/images/ico-cart.png');?>" alt="cart"><?php echo $this->cart->total_items();?> Items in your cart  </a></div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li><a href="<?php echo site_url('welcome/kategori/PJ');?>">Pengiriman Jakarta</a></li>
			<li><a href="<?php echo site_url('welcome/kategori/PY');?>">Pengiriman Yogyakarta</a></li>
			<li><a href="<?php echo site_url('welcome/kategori/BPT');?>">Buku Perguruan Tinggi</a></li>
			<li><a href="<?php echo site_url('welcome/kategori/BP');?>">Buku Paketan</a></li>
			<li><a href="<?php echo site_url('welcome/kategori/BPO');?>">Buku Pre-Order</a></li>
		</ul>
		<br/>
		  
			<div class="thumbnail">
				<img src="<?php echo base_url('assets/bootshop/themes/images/payment_methods.png');?>" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
	</div>