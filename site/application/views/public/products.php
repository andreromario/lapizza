<div class="container internal">
	<div class="row">
		<div class="col-md-12">
			<h1><?php echo $title; ?></h1>
		</div>
	</div>
	<div class="row">
		<?php if($products) : ?>
			<?php foreach($products as $product) : ?>
				<div class="col-md-3 product text-center">
					<a href="<?php echo base_url() . 'products/view/' . $product['id']; ?>" title="<?php echo $product['name']; ?>" class="img-product" style="background-image: url(<?php echo base_url() . $product['image']; ?>);"></a>
					<h2><a href="<?php echo base_url() . 'products/view/' . $product['id']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h2>
					<div class="price">
						R$ <span><?php echo number_format($product['price'], 2, ',', '.'); ?></span>
					</div>
					<div class="text-center">
						<p>
							<a href="<?php echo base_url() . 'products/view/' . $product['id']; ?>" class="btn btn-default tcc-button-submit-inline">Detalhes</a>
						</p>
					</div>
				</div>
			<?php endforeach; ?>
		<?php else: ?>
			<div class="col-md-12">
				<p>Nenhum produto cadastrado nesta categoria.</p>
			</div>
		<?php endif; ?>
	</div>
</div>