<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-sm-6">
        <p class="copyrights"><?php echo $powered; ?></p>
      </div>
      <div class="col-sm-6">
        <div class="footer_box social">
          <h5><?php echo $follow_text; ?></h5>
          <span class="social-icons"> <a target="_blank" href="http://www.facebook.com/">
              <img src="catalog/view/theme/radiance/image/social_icons/facebook.jpg" alt="Facebook"></a>
          </span>
          <span class="social-icons"> <a target="_blank" href="http://www.twitter.com/">
              <img src="catalog/view/theme/radiance/image/social_icons/twitter.png" alt="Twitter"></a>
          </span>
          <span class="social-icons"> <a target="_blank" href="http://www.instagram.com/">
              <img src="catalog/view/theme/radiance/image/social_icons/instagram.png" alt="Instagram"></a>
          </span>
          <span class="social-icons"> <a target="_blank" href="http://www.pinterest.com/">
              <img src="catalog/view/theme/radiance/image/social_icons/pinterest.png" alt="Pinterest"></a>
          </span>
          <span class="social-icons"> <a target="_blank" href="https://plus.google.com/">
              <img src="catalog/view/theme/radiance/image/social_icons/googleplus.png" alt="Google Plus"></a>
          </span>
        </div>
      </div>
    </div>
    <a href="http://radiance.demo.isenselabs.com/">Tema radiance. Toate drepturile sunt rezervate</a>
    <div class="ui-widget">
      <div class="cookie-message ui-widget-header blue">
        <p> <?php echo $cookie_message; ?></p>
      </div>
    </div>
  </div>
</footer>
<script type="text/javascript">
function showDropdown(element) {
	var event = document.createEvent('MouseEvents');
	event.initMouseEvent('mousedown', true, true, window);
	element.dispatchEvent(event);
};
	$(document).ready(function() {	
		$('.toggleSearch').on('click', function(event){
			
			var searchBox = $(document).find('#searchBox');
			var toggleSearchButtonIcon = $(document).find('#toggleSearch > i');
			var cartBox = $(document).find('#cartBox');
			
			if(cartBox.hasClass('open')) {
				cartBox.removeClass('open').slideToggle(function(){
					if(searchBox.hasClass('open')) {
						searchBox.removeClass('open').slideToggle();
						toggleSearchButtonIcon.removeClass('fa-times').addClass('fa-search');
					}
					else {
						searchBox.addClass('open').slideToggle();
						toggleSearchButtonIcon.removeClass('fa-search').addClass('fa-times');
					}
				});
			}
			else {
				if(searchBox.hasClass('open')) {
					searchBox.removeClass('open').slideToggle();
					toggleSearchButtonIcon.removeClass('fa-times').addClass('fa-search');
				}
				else {
					searchBox.addClass('open').slideToggle();
					toggleSearchButtonIcon.removeClass('fa-search').addClass('fa-times');
				}
			}
		});
		
		$('.toggleCart').on('click', function(event){
			
			var searchBox = $(document).find('#searchBox');
			var toggleSearchButtonIcon = $(document).find('#toggleSearch > i');
			var cartBox = $(document).find('#cartBox');
			var closeCartBox = $('#cartBox').find('.closeCartBox');
			
			if(searchBox.hasClass('open')) {
				searchBox.removeClass('open').slideToggle(function(){	
					if(cartBox.hasClass('open')) {
						cartBox.removeClass('open').slideToggle();
					}
					else {
						cartBox.addClass('open').slideToggle(function(){
							$(closeCartBox).on('click', function(){
								if(cartBox.hasClass('open')) {
									cartBox.removeClass('open').slideToggle();
								}
							});
						});
					}	
				});
				toggleSearchButtonIcon.removeClass('fa-times').addClass('fa-search');
			}
			else {
				if(cartBox.hasClass('open')) {
					cartBox.removeClass('open').slideToggle();
				}
				else {
					cartBox.addClass('open').slideToggle(function(){
						$(closeCartBox).on('click', function(){
							if(cartBox.hasClass('open')) {
								cartBox.removeClass('open').slideToggle();
							}
						});
					});

				}
			}
		});
		
		$('.toggleCurrencySwitch').on('click', function(){
			showDropdown(document.getElementById('currencySwitch'));
		});
		
		$('#currencySwitch').change(function() {
			$('#currencyValue').val(this.value);
			$(document).find('#form-currency').submit();
		});
		
		$('.toggleLanguageSwitch').on('click', function(){
			showDropdown(document.getElementById('languageSwitch'));
		});
		
		$('#languageSwitch').change(function() {
			$('#languageValue').val(this.value);
			$(document).find('#form-language').submit();
		});
		
		$('.remove-qty').click(function(){
		  var newQty = +($(this).parent().find('[name="quantity"]').val()) - 1;
		  
		  if(newQty <= 0) {
		  	newQty = 1;
		  }
		  $(this).parent().find('[name="quantity"]').val(newQty);
		});
		
		$('.add-qty').click(function(){
		 var newQty = +($(this).parent().find('[name="quantity"]').val()) + 1;
		  $(this).parent().find('[name="quantity"]').val(newQty);
		});

	});
</script>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</body>
</html>