<div id="newbilling" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h2 class="text-center">Cadastrar Nova Forma de Pagamento</h2>
			</div>
			<div class="modal-body">
				<?php echo form_open('billings/insert'); ?>
					<div class="form-group">
						<input type="text" name="billingsinsert[name]" placeholder="Nome da forma de pagamento" class="form-control" required>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-default tcc-button-submit">Cadastrar</button>
					</div>
				<?php echo form_close(); ?>
			</div>
		</div>
	</div>
</div>

<div id="updatebilling" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h2 class="text-center">Alterar Forma de Pagamento <span id="billingname"></span></h2>
			</div>
			<div class="modal-body">
				<?php echo form_open('billings/update'); ?>
					<div class="form-group">
						<input type="text" name="billingsupdate[name]" placeholder="Nome da forma de pagamento" class="form-control" required>
					</div>

					<div class="form-group">
						<input type="hidden" name="billingsupdate[id]" value="">
						<button type="submit" class="btn btn-default tcc-button-submit">Alterar</button>
					</div>
				<?php echo form_close(); ?>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center"><?php echo $title; ?></h1>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<p><a href="#" data-toggle="modal" data-target="#newbilling" class="btn btn-primary">Cadastrar Nova Forma de Pagamento</a></p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="table-responsive">
				<table class="table">
					<thead>
							<th>ID</th>
							<th>Nome</th>
							<th>Editar</th>
							<!-- <th>Excluir</th> -->
					</thead>
	 				<tbody><?php foreach($billings as $billing) : ?>
						<tr>
							<td><?php echo $billing['id']; ?></td>
							<td><?php echo $billing['name']; ?></td>
							<td><a href="#" data-toggle="modal" data-target="#updatebilling" data-billing-id="<?php echo $billing['id']; ?>" class="btn btn-primary link-updatebilling">Editar</a></td>
							<!-- <td><a href="<?php echo base_url(); ?>billings/delete/<?php echo $billing['id']; ?>" class="btn btn-danger">Excluir</a></td> -->
						</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
