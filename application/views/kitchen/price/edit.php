
 <?php $this->load->view('include/admin_header');?>
 <?php $this->load->view('include/sidebar');?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-offset-3 col-md-6">

          <div class="box box-danger">
            <div class="box-header">
              <h3 class="box-title">Price Update</h3>
            </div>
            <form name="frm" action="<?php echo base_url('admin/price/update');?>" method="post">
            <div class="box-body">
              <div class="form-group">
                <label>Service_Name</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Service_Name"  value="<?php echo $prices[0]->Service_Name;?>">
                </div>
              </div>
              <div class="form-group">
                <label>Category_Name.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Category_Name"  value="<?php echo $prices[0]->Category_Name;?>">
                </div>
              </div>
              <div class="form-group">
                <label>Bikes_Below_150CC.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Bikes_Below_150CC"  value="<?php echo $prices[0]->Bikes_Below_150CC;?>">
                </div>
              </div>
              <div class="form-group">
                <label>Scooters_Below_150CC</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Scooters_Below_150CC"  value="<?php echo $prices[0]->Scooters_Below_150CC;?>">
                </div>
              </div>
              <div class="form-group">
                <label>Bikes_Btw_150_220CC.</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Bikes_Btw_150_220CC"  value="<?php echo $prices[0]->Bikes_Btw_150_220CC;?>">
                </div>
              </div>
              <div class="form-group">
                <label>Bikes_Btw_220_500CC</label>
                <div class="input-group">
                  <div class="input-group-addon">
                  </div>
                  <input type="text" class="form-control" name="Bikes_Btw_220_500CC"  value="<?php echo $prices[0]->Bikes_Btw_220_500CC;?>">
                </div>
              </div>
               <input type="hidden" class="form-control" name="SN"  value="<?php echo $prices[0]->SN;?>">
               <div class="form-group">
                <div class="input-group">
                 
                  <input type="submit" class="btn btn-primary" name="submit" value="Submit">
                </div>
              </div>
            </div>
            </form>
          </div>
        </div>
       
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
<?php $this->load->view('include/admin_footer');?>