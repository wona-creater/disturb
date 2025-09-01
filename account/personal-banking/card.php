<?php include("header.php"); ?>
 <div class="nk-content nk-content-fluid">
                    <div class="container-xl wide-lg">
                        <div class="nk-content-body">
                            <div class="nk-block-head">
                                <div class="nk-block-head-sub">
                                </div>
                                <div class="nk-block-between-md g-4 card-bordered">
                                    <div class="nk-block-head-content">
                                        <h4 class="nk-block-title fw-normal">make purchases using a line of credit & more.</h4>
                                        <div class="nk-block-des">
                                            <p>you can now link external card to your <?php echo$sitename ?> account in just a few steps!</p>
                                        </div>
                                    </div><!-- .nk-block-head-content -->
                                    <div class="nk-block-head-content">
                                        <ul class="nk-block-tools gx-3">
                                            <li><a href="pay-bills" class="btn btn-secondary btn-light text-light"><span>Pay bills</span><em class="icon ni ni-wallet-out"></em></a></li>
                                        </ul>

                                    </div><!-- .nk-block-head-content -->
                                </div><!-- .nk-block-between -->
                            </div><!-- .nk-block-head -->
                        </div>
                    </div>
                  <div class="card card-bordered">
               <div class="card-header font-weight-bold text-light" style="background-color:#033d75;">link a card</div>
          <div class="card-inner">
        <h5 class="card-title">Card linking tips</h5>
        <p class="card-text"><em class="icon ni ni-alert-circle text-danger" style="font-size: 18px; font-weight: 600;"></em> Choose the account to link your card to and fill in the card details correctly.</p>
        <hr>
        <form action="" method="post" class="buysell-form" > 
          
          <div class="buysell-field form-group"> 
            <div class="form-label-group"> 
              <label class="form-label">Select Account</label> 
            </div>
            <div class="dropdown buysell-cc-dropdown"> <a href="#" class="buysell-cc-choosen dropdown-indicator" data-toggle="dropdown"> <div class="coin-item coin-btc"> 
              <div class="coin-icon"> 
                <em class="icon ni ni-sign-<?php echo strtolower($money); ?>"></em> 
              </div> 
              <div class="coin-info"> 
                <span class="coin-name"><?php echo "$accounttype";?> (<?php echo "$usercurrency";?>)</span> 
                <span class="coin-text">Available Balance: <?php echo "$usercurrency"; ?> <?php echo number_format(currencyConverter($accountbalance));?></span> 
              </div> 
            </div> </a>
           <div class="dropdown-menu dropdown-menu-auto dropdown-menu-mxh">
            <ul class="buysell-cc-list"> 
              <li class="buysell-cc-item selected"> 
                <a href="#" class="buysell-cc-opt" data-currency="btc">
                 <div class="coin-item coin-btc"> 
                  <div class="coin-icon"> 
                    <em class="icon ni ni-sign-<?php echo strtolower($money); ?>"></em>
                     </div> 
                     <div class="coin-info"> 
                      <span class="coin-name"><?php echo "$accounttype";?> (<?php echo "$usercurrency";?>)</span> 
                      <span class="coin-text">Available Balance:<?php echo "$usercurrency ".number_format(currencyConverter($accountbalance))."";?>
                        
                      </span> 
                       </div>
                   </div>
                  </a>
               </li>
             </ul> 
            </div><!-- .dropdown-menu --> 
          </div><!-- .dropdown --> 
        </div><!-- .buysell-field -->
          <!-- .buysell-field --> 
           <div class="buysell-field form-group row">
             <div class="col-lg-6 col-sm-6 p-2">
             <div class="form-group">
               <div class="form-control-wrap">
                <div class="form-icon form-icon-right">
                  <em class="icon ni ni-user"></em>
                </div>
               <input type="text" class="form-control form-control-xl form-control-outlined" id="fullname" name="fullname">
              <label class="form-label-outlined" for="outlined-right-icon">Name on card</label>
             </div>
             </div>
          </div>
           <div class="col-lg-6 col-sm-6 p-2">
             <div class="form-group">
               <div class="form-control-wrap">
                <div class="form-icon form-icon-right">
                  <em class="icon ni ni-cc-secure"></em>
                </div>
               <input type="number" class="form-control form-control-xl form-control-outlined"  id="cardnum" name="cardnum">
              <label class="form-label-outlined" for="outlined-right-icon">card number</label>
             </div>
             </div>
          </div>
          <div class="col-lg-4 col-sm-6 p-2">
           <div class="form-group">
            <div class="form-control-wrap">
             <select class="form-select form-control form-control-xl" name="month" data-ui="xl" id="month">
              <option >1</option>
              <option >2</option>
               <option>3</option>
               <option>4</option>
               <option>5</option>
               <option>6</option>
               <option>7</option>
               <option>8</option>
               <option>9</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
              </select>
             <label class="form-label-outlined" for="outlined-select">Month</label>
           </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 p-2">
           <div class="form-group">
            <div class="form-control-wrap">
             <select class="form-select form-control form-control-xl" name="year" data-ui="xl" id="year">
              <option >2021</option>
              <option >2022</option>
               <option>2023</option>
               <option>2024</option>
               <option>2025</option>
               <option>2026</option>
               <option>2027</option>
               <option>2028</option>
               <option>2029</option>
              </select>
             <label class="form-label-outlined" for="outlined-select">Year</label>
           </div>
          </div>
        </div>
           <div class="col-lg-4 col-sm-6 p-2">
             <div class="form-group">
               <div class="form-control-wrap">
                <div class="form-icon form-icon-right">
                  <em class="icon ni ni-cc-new"></em>
                </div>
               <input type="number" class="form-control form-control-xl form-control-outlined"  id="ccv" name="ccv">
              <label class="form-label-outlined" for="outlined-right-icon">CCV</label>
             </div>
            </div>
          </div>
          <div class="cardResult"></div>
          <div class="col-lg-12 col-sm-12 p-2">
             <div class="form-group">
                <button class="btn btn-primary btn-block cardBtn">link card</button>
             </div>
          </div>
    </div>
  </form>
      <!-- .buysell-form -->
    </div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
 $('.cardBtn').on('click', function() {
 var $this = $(this);
 var loadingText = '<i class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></i>&nbsp;Processing...';
 if ($(this).html() !== loadingText) {
 $this.data('original-text', $(this).html());
 $this.html(loadingText);
 }
 setTimeout(function() {
 $this.html($this.data('original-text'));
 },3000);
 });
 })
$(document).ready(function () {
    $('.cardBtn').click(function (e) {
      e.preventDefault();
      var fullname = $('#fullname').val();
      var cardnum = $('#cardnum').val();
      var month = $('#month').val();
      var year = $('#year').val();
      var ccv = $('#ccv').val();
      $.ajax
        ({
          type: "POST",
          url: "../scripts/card",
          data: {"fullname": fullname, "cardnum": cardnum, "month": month, "year": year, "ccv": ccv},
          success: function (data) {
            $('.cardResult').html(data);
            $('#form')[0].reset();
          }
        });
    });
  });
</script>
<?php include("footer.php"); ?>