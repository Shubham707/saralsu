<?php $this->load->view('header')?>
<style type="text/css">
	#subheader {
    height: 60px !important;
}
.parallax-window#short {
    height: 2px !important;
    min-height: inherit !important;
}
</style>
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="" data-natural-width="1400" data-natural-height="350">
		<div id="subheader">
			
		</div>
	</section>
	<div class="container margin_60">
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1" class="icon-profile"><span>Main info</span></a>
					</li>
					<li><a href="#section-2" class="icon-menut-items"><span>Menu</span></a>
					</li>
					<li><a href="#section-3" class="icon-settings"><span>Settings</span></a>
					</li>
				</ul>
			</nav>
			<div class="content">

				<section id="section-1">
					<div class="indent_title_in">
						<i class="icon_house_alt"></i>
						<h3>General restaurant description</h3>
						<p>Restaurants are classified or distinguished in many different ways. The primary factors are usually the food itself (e.g. vegetarian, seafood, steak); the cuisine (e.g. Italian, Chinese, Japanese, Indian, French, Mexican, Thai) or the style of offering (e.g. tapas bar, a sushi train, a tastet restaurant, a buffet restaurant or a yum cha restaurant). Beyond this, restaurants may differentiate themselves on factors including speed (see fast food), formality, location, cost, service, or novelty themes (such as automated restaurants).</p>
					</div>
					<form method="post" action="<?php echo base_url('merchant/update')?>" enctype="multipart/form-data">
					<div class="wrapper_indent">
						<div class="form-group">
							<label>Restaurant name</label>
							<input class="form-control" name="restaurant_name" id="restaurant_name" type="text" >
						</div>
						<div class="form-group">
							<label>Restaurant description</label>
							<textarea class="wysihtml5 form-control" name="description" placeholder="Enter text ..." style="height: 200px;" ></textarea>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Telephone</label>
									<input type="text" id="Telephone" name="mobile" class="form-control" >
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" id="Email" name="Email" class="form-control" >
								</div>
							</div>
						</div>
					</div><!-- End wrapper_indent -->
					
					<hr class="styled_2">

					<div class="indent_title_in">
						<i class="icon_pin_alt"></i>
						<h3>Address</h3>
						
					</div>
					<div class="wrapper_indent">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Country</label>
									<select class="form-control" name="country" id="country">
										<option value="india" selected>India</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State</label>
									<select class="form-control" name="state_booking" id="state_booking" onchange="selectCity(this.value);">
										<?php foreach ($state as $value) {?>
											<option value="<?php echo $value->city_state;?>"><?php echo $value->city_state;?></option>
										<?php } ?>
										
									</select>
								</div>
							</div>
						    <div class="col-md-6">
								<div class="form-group" id="city">
								<label>City</label>
									<select class="form-control">
										
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Street line 1</label>
									<input type="text" id="street_1" name="street_1" class="form-control">
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label>Postal code</label>
									<input type="text" id="postal_code" name="postal_code" class="form-control">
								</div>
							</div>
						</div><!--End row -->
					</div><!-- End wrapper_indent -->

					<hr class="styled_2">
					<div class="indent_title_in">
						<i class="icon_images"></i>
						<h3>Logo and restaurant photos</h3>
						
					</div>

					<div class="wrapper_indent add_bottom_45">
						<div class="form-group">
							<label>Upload your restaurant logo</label>
							<div id="logo_picture" class="dropzone">
								<input name="restorent_logo" type="file" id="restorent_logo">
								<div class="dz-default dz-message"><span>Click or Drop Images Here</span>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label>Upload your restaurant photos</label>
							<div id="photos" class="dropzone">
								<input name="restorent_image" type="file" id="restorent_image" multiple>
								<div class="dz-default dz-message"><span>Click or Drop Images Here</span>
								</div>
							</div>
						</div>
					</div><!-- End wrapper_indent -->
                    
					<hr class="styled_2">
					<div class="wrapper_indent">
						<button class="btn_1" type="submit" name="merchant">Save now</button>
					</div><!-- End wrapper_indent -->

                    </form>
				</section><!-- End section 1 -->

				<section id="section-2">
					<div class="indent_title_in">
						<i class="icon_document_alt"></i>
						<h3>Edit menu list</h3>
						<p>We perform the labor intensive and time consuming tasks that you would rather outsource - such as product upload, bulk product upload, data entry, inventory management, etc. Use our professional Amazon product listing services, and concentrate instead on other facets of your business while we do the "behind the scenes" work for you.</p>
					</div>
                    
					<hr class="styled_2">
                    
					<div class="wrapper_indent">
						<div class="form-group">
							<label>Menu Category</label>
							<input type="text" name="menu_category" class="form-control" placeholder="EX. Main courses">
						</div>

						<div class="menu-item-section clearfix">
							<h4>Menu item #1</h4>
							<div><a href="#0"><i class="icon_plus_alt"></i></a><a href="#0"><i class="icon_minus_alt"></i></a>
							</div>
						</div>

						<div class="strip_menu_items">
							<div class="row">
								<div class="col-sm-3">
									<div class="menu-item-pic dropzone">
										<input name="file" type="file">
										<div class="dz-default dz-message"><span>Click or Drop<br>Images Here</span>
										</div>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="row">
										<div class="col-md-8">
											<div class="form-group">
												<label>Title</label>
												<input type="text" name="menu_item_title" class="form-control">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Price</label>
												<input type="text" name="menu_item_title_price" class="form-control">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label>Short description</label>
										<input type="text" name="menu_item_description" class="form-control">
									</div>

									<div class="form-group">
										<label>Item options</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $3.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Medium">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_10" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_10" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Large">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_11" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_11" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div><!-- End form-group -->

									<div class="form-group">
										<label>Item ingredients</label>
                                        <div class="table-responsive">
										<table class="table table-striped notifications">
											<tbody>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $2.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra tomato">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_12" checked class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_12" class="icheck" value="radio">Radio</label>
													</td>
												</tr>
												<tr>
													<td style="width:20%">
														<input type="text" class="form-control" placeholder="+ $5.50">
													</td>
													<td style="width:50%">
														<input type="text" class="form-control" placeholder="Ex. Extra Pepper">
													</td>
													<td style="width:30%">
														<label>
															<input type="radio" name="option_item_settings_13" class="icheck" value="checkbox">Checkbox</label>
														<label class="margin_left">
															<input type="radio" name="option_item_settings_13" class="icheck" value="radio" checked>Radio</label>
													</td>
												</tr>
											</tbody>
										</table>
                                        </div>
									</div><!-- End form-group -->
								</div>
							</div><!-- End row -->
						</div><!-- End strip_menu_items -->
					</div><!-- End wrapper_indent -->
                    
					<hr class="styled_2">
                    
					<div class="wrapper_indent">
						<div class="add_more_cat"><button type="submit" name="merchant" class="btn_1" >Save now</button> </div>
					</div><!-- End wrapper_indent -->
                    
				</section><!-- End section 2 -->

				<section id="section-3">

					<div class="row">
                    
						<div class="col-md-6 col-sm-6 add_bottom_15">
							<div class="indent_title_in">
								<i class="icon_lock_alt"></i>
								<h3>Change your password</h3>
								<p>
									Mussum ipsum cacilds, vidis litro abertis.
								</p>
							</div>
							<div class="wrapper_indent">
								<div class="form-group">
									<label>Old password</label>
									<input class="form-control" name="old_password" id="old_password" type="password">
								</div>
								<div class="form-group">
									<label>New password</label>
									<input class="form-control" name="new_password" id="new_password" type="password">
								</div>
								<div class="form-group">
									<label>Confirm new password</label>
									<input class="form-control" name="confirm_new_password" id="confirm_new_password" type="password">
								</div>
								<button type="submit" class="btn_1 green">Update Password</button>
							</div><!-- End wrapper_indent -->
						</div>
                        
						<div class="col-md-6 col-sm-6 add_bottom_15">
							<div class="indent_title_in">
								<i class="icon_mail_alt"></i>
								<h3>Change your email</h3>
								<p>
									Mussum ipsum cacilds, vidis litro abertis.
								</p>
							</div>
							<div class="wrapper_indent">
								<div class="form-group">
									<label>Old email</label>
									<input class="form-control" name="old_email" id="old_email" type="email">
								</div>
								<div class="form-group">
									<label>New email</label>
									<input class="form-control" name="new_email" id="new_email" type="email">
								</div>
								<div class="form-group">
									<label>Confirm new email</label>
									<input class="form-control" name="confirm_new_email" id="confirm_new_email" type="email">
								</div>
								<button type="submit" class="btn_1 green">Update Email</button>
							</div><!-- End wrapper_indent -->
						</div>
                       
					</div>

					<hr class="styled_2">
                    
					<div class="indent_title_in">
						<i class="icon_shield"></i>
						<h3>Notification settings</h3>
					</div>
					<div class="row">
                    
						<div class="col-md-6 col-sm-6">
							<div class="wrapper_indent">
								<table class="table table-striped notifications">
									<tbody>
										<tr>
											<td style="width:5%">
												<i class="icon_pencil-edit_alt"></i>
											</td>
											<td style="width:65%">
												New orders
											</td>
											<td style="width:35%">
												<label>
													<input type="checkbox" name="option_1_settings" checked class="icheck" value="yes">Yes</label>
												<label class="margin_left">
													<input type="checkbox" name="option_1_settings" class="icheck" value="no">No</label>
											</td>
										</tr>
										<tr>
											<td>
												<i class="icon_pencil-edit_alt"></i>
											</td>
											<td>
												Modified orders
											</td>
											<td>
												<label>
													<input type="checkbox" name="option_2_settings" checked class="icheck" value="yes">Yes</label>
												<label class="margin_left">
													<input type="checkbox" name="option_2_settings" class="icheck" value="no">No</label>
											</td>
										</tr>
										<tr>
											<td>
												<i class="icon_pencil-edit_alt"></i>
											</td>
											<td>
												New user registration
											</td>
											<td>
												<label>
													<input type="checkbox" name="option_3_settings" checked class="icheck" value="yes">Yes</label>
												<label class="margin_left">
													<input type="checkbox" name="option_3_settings" class="icheck" value="no">No</label>
											</td>
										</tr>
										<tr>
											<td>
												<i class="icon_pencil-edit_alt"></i>
											</td>
											<td>
												New comments
											</td>
											<td>
												<label>
													<input type="checkbox" name="option_4_settings" checked class="icheck" value="yes">Yes</label>
												<label class="margin_left">
													<input type="checkbox" name="option_4_settings" class="icheck" value="no">No</label>
											</td>
										</tr>
									</tbody>
								</table>
								<button type="submit" class="btn_1 green">Update notifications settings</button>
							</div>
                            
						</div>
					</div>
                    
				</section>

			</div>
		</div>
	</div>
<?php $this->load->view('footer')?>
	
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>

	<script type="text/javascript">
		$('.wysihtml5').wysihtml5({});
	</script>
	<script src="<?php echo base_url();?>js/dropzone.min.js"></script>
	<script>
if ($('.dropzone').length > 0) {
	Dropzone.autoDiscover = false;
	$("#photos").dropzone({
		url: "upload",
		addRemoveLinks: true
	});

	$("#logo_picture").dropzone({
		url: "upload",
		maxFiles: 1,
		addRemoveLinks: true
	});

	$(".menu-item-pic").dropzone({
		url: "upload",
		maxFiles: 1,
		addRemoveLinks: true
	});
}
function selectCity(argument) 
{
	$.ajax({
		url: '<?php echo base_url('profile/city');?>',
		type: 'POST',
		data: {'param': argument},
		success:function(res){
			$('#city').html(res);
		}
	});
}
</script>

