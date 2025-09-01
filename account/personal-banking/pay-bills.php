<?php include("header.php") ?>
    <div class="nk-content">
       <div class="container-xl wide-lg">
        <div class="nk-content-body">
        <div class="nk-block-head">
         <div class="nk-block-head-sub">
         </div>
           <div class="nk-block-between-md g-4 card-bordered">
             <div class="nk-block-head-content">
              <h4 class="nk-block-title fw-normal">Internet Banking Bill Pay.</h4>
                <div class="nk-block-des">
                  <p>
                   </p>
                         </div>
                           </div>
                                <div class="nk-block-head-content">
                                        <ul class="nk-block-tools gx-3">
                                            <li><a href="transfer" class="btn btn-secondary btn-light text-light"><span>Transfer Fund</span><em class="icon ni ni-wallet-out"></em></a></li>
                                        </ul>

                                    </div><!-- .nk-block-head-content -->
                                </div><!-- .nk-block-between -->
                            </div><!-- .nk-block-head -->
                        </div>
                    </div>

     <div class="card card-bordered">
        <div class="card-header text-light" style="background-color:#033d75;">
         <ul class="nav nav-tabs mt-n3">
           <li class="nav-item ">
            <a class="nav-link active text-light" data-toggle="tab" href="#tabItem5"><em class="icon ni ni-wallet-alt"></em> <span >Pay a Biller</span></a>
            </li>
        <li class="nav-item">
        <a class="nav-link text-light" data-toggle="tab" href="#tabItem6"><em class="icon ni ni-cc-new"></em><span>Add a Payee</span></a>
        </li>
       <li class="nav-item">
        <a class="nav-link text-light" data-toggle="tab" href="#tabItem7"><em class="icon ni ni-exchange"></em><span>History</span></a>
        </li>
        </ul>
   </div>
       <div class="card-inner">
     <div class="tab-content">
    <div class="tab-pane active" id="tabItem5">

    <p>
    	                        <div class="buysell-field form-group">
                            <div class="form-label-group">
                                <label class="form-label">Choose payment account</label>
                            </div>
                               <input type="hidden" value="btc" name="bs-currency" id="buysell-choose-currency-modal">
                            <div class="dropdown buysell-cc-dropdown">
                                <a href="#" class="buysell-cc-choosen dropdown-indicator" data-toggle="dropdown">
                                    <div class="coin-item coin-btc">
                                        <div class="coin-icon">
                                            <em class="icon ni ni-wallet-out"></em>
                                        </div>
                                        <div class="coin-info">
                                            <span class="coin-name"><?php echo$accounttype ?></span>
                                            <span class="coin-text">Balance(<?php echo$money;  echo number_format($accountbalance) ?>)</span>
                                        </div>
                                    </div>
                                </a>
                            <div class="dropdown-menu dropdown-menu-auto dropdown-menu-mxh">
                                    <ul class="buysell-cc-list">
                                        <li class="buysell-cc-item selected">
                                            <a href="#" class="buysell-cc-opt" data-currency="btc">
                                                <div class="coin-item coin-btc">
                                                    <div class="coin-icon">
                                                        <em class="icon ni ni-wallet-out"></em>
                                                    </div>
                                                    <div class="coin-info">
                                                        <span class="coin-name"><?php echo$accounttype ?></span>
                                                        <span class="coin-text"><?php echo substr($accountnumber, 0,4); echo"*****"; ?></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li> <!-- .buysell-cc-item -->
                                    </ul>
                                </div>
                            </div><!-- .dropdown -->
                        </div><!-- .buysell-field -->
                        <form action="" method="post">
                        <div class="row">
                        	
          <div class="form-group col-md-6">
        <div class="form-control-wrap">
         <select type="text" name="payeeid" class="form-control form-control-outlined" id="payeeid" placeholder="">
            <option disabled="" selected="">Select a payee</option>
         	<?php $query = $conn->query("SELECT * FROM payee WHERE userid = '$userid'");
         	if (mysqli_num_rows($query) < 1) {
         		echo "<option selected disabled>Kindly Add a payee</option>";
         	}
         	while($row = mysqli_fetch_assoc($query)){

         	 ?>
         <option value="<?php echo$row['id'] ?>"><?php echo$row['name'] ?></option>

     <?php } ?>
         </select>
         <label class="form-label-outlined" for="outlined">Select a payee</label>
         </div>
        </div> 
         <div class="form-group col-md-6">
        <div class="form-control-wrap">
         <input type="date" class="form-control form-control-outlined" id="dated" name="dated" placeholder="">
         <label class="form-label-outlined" for="outlined">Delivery date</label>
         </div>
        </div> 
        <div class="buysell-field form-group col-md-12"> 
       <div class="form-label-group"> 
       	<label class="form-label" for="buysell-amount">Amount</label> 
       </div>
      <div class="form-control-group"> 
        <input type="number" class="form-control form-control-lg form-control-number" id="amount" name="amount" placeholder="2000"> 
        <div class="form-dropdown"> 
        	<div class="text"><?php echo$money; ?><span></span></div> 
        </div>
         </div>
          <div class="form-note-group"> 
          	<span class="buysell-min form-note-alt"></span> <span class="buysell-rate form-note-alt">*Bill Pay fee will be deducted</span> 
          </div> 
          </div>
        <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="memo" name="memo" placeholder="">
         <label class="form-label-outlined" for="outlined">Memo (optional)</label>
         </div>
        </div> 
        <div class="payBillResult"></div>
        <div class="form-group col-md-12"> 
        	<button type="submit" class="btn btn-primary btn-block payBill" id="btn1">Continue</button>
        </div>
                         
         </div>
     </form>
                         </p>
     </div>
      <div class="tab-pane" id="tabItem6">
       <p>
       	<form method="post" autocomplete="off" action=""><div class="row">
        <div class="form-group col-md-6">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="name"  name="name">
         <label class="form-label-outlined" for="outlined">Payee name</label>
         </div>
        </div>
        <div class="form-group col-md-6">
        <div class="form-control-wrap">
         <select type="text" class="form-control form-control-outlined" id="method" name="method" placeholder="">
         <option>Paper Check</option>
         </select>
         <label class="form-label-outlined" for="outlined">Payment Delivery Method</label>
         </div>
        </div>
       <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="account" name="account" >
         <label class="form-label-outlined" for="outlined">Account Number</label>
         <small>This is the account number that appears on your bills.  If you don't have account number, you can enter NA</small>
         </div>
        </div>
       <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="address" name="address" >
         <label class="form-label-outlined" for="outlined">Address 1</label>
         <small>Enter the payment address that appears on your bill. We'll mail your payment to this address.</small>
         </div>
        </div>
        <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="outlined" >
         <label class="form-label-outlined" for="outlined">Address 2</label>
         <small>Optional</small>
         </div>
        </div>
       <div class="form-group col-md-4">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="city" name="city" >
         <label class="form-label-outlined" for="outlined">City</label>
         </div>
        </div>
                <div class="form-group col-md-4">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="state" name="state" >
         <label class="form-label-outlined" for="outlined">State</label>
         </div>
        </div>
        <div class="form-group col-md-4">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="zipcode" name="zipcode" >
         <label class="form-label-outlined" for="outlined">Zip Code</label>
         </div>
        </div>
        <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <input type="text" class="form-control form-control-outlined" id="nickname" name="nickname" >
         <label class="form-label-outlined" for="outlined">Nickname</label>
         <small>Optional Nickname are for your personal use only and will not appear on any of your payment.</small>
         </div>
        </div>
        <div class="form-group col-md-12">
        <div class="form-control-wrap">
         <div class="custom-control custom-control-sm custom-switch">
       <input type="checkbox" class="custom-control-input" id="customSwitch2">
        <label class="custom-control-label" for="customSwitch2">Add this Payee to your favorites</label>
       </div>
         </div>
        </div>
     <div class="addPayeeResult"></div>
    <div class="form-group col-md-12">
        <div class="form-control-wrap">
        	<button  type="submit" class="btn btn-primary btn-block addPayee" id="btn2">continue</button>
        </div>
    </div>
        </div>
        </form>
     </p>
        </div>
       <div class="tab-pane" id="tabItem7">
        <p>
            <div class="card card-preview ">
              <div class="card-inner p-0">
                <table class="datatable-init table">
                  <thead>
                    <tr>
                     <th>Payee</th>
                       <th>Date</th>
                      <th>Amount</th>
                    <th>Status</th>
                  </tr>
                </thead>
                 <tbody>
                    <?php 
                    $query = $conn->query("SELECT * FROM paybill WHERE userid = '$userid' ORDER BY id DESC");
                     while ($rows = mysqli_fetch_array($query)) {
                        if($rows['status'] == "pending"){
                            $stat = "<strong class='text-danger'>Pending</strong>";
                        }else{ $stat = "<strong class='text-success'>Completed</strong>"; }
                         
                    ?>
                    <tr>
                      <td><?php echo$rows['payee']; ?></td>    
                      <td><?php echo$rows['dated']; ?></td>  
                      <td><b><?php echo$money; ?></b> <?php echo$rows['amount'] ?></td> 
                      <td><?php echo$stat; ?></td> 
                      </tr> 
              <?php   }   ?>
          </tbody>
      </table>
      </div>
  </div>
</p>
</div>
          </div>
        </div>
     </div>
   </div>
<?php include("footer.php") ?>