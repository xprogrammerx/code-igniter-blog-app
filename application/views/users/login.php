<?php echo form_open('users/login'); ?>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center"><?php echo $title; ?></h1>
			<div class="form-group">
				<input type="text" class="form-control" type="text" name="username" placeholder="Enter Username" required autofocus>
				<input class="form-control" type="password" name="password" placeholder="Enter Password" required autofocus>
				<button class="btn btn-primary btn-block">
					Login
				</button>
			</div>
		</div>
	</div>
<?php echo form_close(); ?>