<?php if($data['easynewslettersubscription']['Enabled'] != 'no'): ?>
	<?php if ($data['easynewslettersubscription']['WrapInWidget'] != 'no') { ?>
    	<div class="list-group">
		 	 <a class="list-group-item active"><?php echo $EasyNewsletterSubscription_Title; ?></a>
			  <div class="list-group-item">
           <?php } else { ?>
           <strong><?php echo $EasyNewsletterSubscription_Title; ?></strong><br /><br />
           <?php } ?>
			<form id="EasyNewsletterSubscriptionForm">
            <div id="EasyNewsletterSubscriptionSuccess"></div>
            <?php if(!empty($data['easynewslettersubscription']['CustomText'])): ?>
            <?php echo htmlspecialchars_decode($data['easynewslettersubscription']['CustomText']); ?> <br /> <br />
            <?php endif; ?>
            <?php if ($data['easynewslettersubscription']['FormFields'] == 'name_email') { ?>
            <?php echo $EasyNewsletterSubscription_Name; ?>:<br /> <input type="text" name="YourName" id="YourName" class="form-control" placeholder="Your Name" value="" /><br />
   			<?php echo $EasyNewsletterSubscription_Email; ?>:<br /> <input type="text" name="YourEmail" id="YourEmail" class="form-control" placeholder="Your Email" value="" /><br />
            <?php } else if ($data['easynewslettersubscription']['FormFields'] == 'email') { ?>
			<input type="hidden" class="form-control" name="YourName" id="YourName" value="empty" />
   			<?php echo $EasyNewsletterSubscription_Email; ?>:<br /> <input type="text" class="form-control" name="YourEmail" id="YourEmail" placeholder="Your Email" value="" /><br />
            <?php } ?>
            <input type="hidden" name="language_id" id="language_id" value="<?php echo $language_id; ?>" />
            <br />
            <input type="hidden" name="store_id" id="store_id" value="<?php echo $store_id; ?>" />
            <a id="EasyNewsletterSubscriptionSubmit" class="btn btn-default"><?php echo $EasyNewsletterSubscription_SubscribeNow; ?></a>
            </form>
			<?php if ($data['easynewslettersubscription']['WrapInWidget'] != 'no') { ?>
         	 </div>
			</div> 
             <?php } ?>
<script>
$( "#EasyNewsletterSubscriptionForm" ).submit(function( event ) {
  $('#EasyNewsletterSubscriptionSubmit').click(); 
  event.preventDefault();
});
$('#EasyNewsletterSubscriptionSubmit').on('click', function(){
	var email_validate = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if ((document.getElementById("YourName").value == 0) || (document.getElementById("YourEmail").value.length == 0))
	{
    	alert("<?php echo $EasyNewsletterSubscription_Error1; ?>")
	} else if (!document.getElementById("YourEmail").value.match(email_validate)) {
		alert("<?php echo $EasyNewsletterSubscription_Error2; ?>")
	} else {
		$.ajax({
			url: 'index.php?route=module/easynewslettersubscription/subscribecustomer',
			type: 'post',
			dataType: 'json',
			data: $('#EasyNewsletterSubscriptionForm').serialize(),
			success: function(json) {
				if (json['error']) {
					$('#EasyNewsletterSubscriptionSuccess').html("<div class='alert alert-success ens_success' style='display: none;'>"+json['error']+"</div>");
				}
				if (json['success']) {
					$('#EasyNewsletterSubscriptionSuccess').html("<div class='alert alert-success ens_success' style='display: none;'>"+json['success']+"</div>");
				}
				$('.ens_success').fadeIn('slow');
				$('#YourName').val('');
				$('#YourEmail').val('');
			}
		});
	}
});
</script>
<?php if(!empty($data['easynewslettersubscription']['CustomCSS'])): ?>
<style>
<?php echo htmlspecialchars_decode($data['easynewslettersubscription']['CustomCSS']); ?>
</style>
<?php endif; ?>
<?php endif; ?>