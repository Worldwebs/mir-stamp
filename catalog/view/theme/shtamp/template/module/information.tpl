<div class="leftnav">
    <?php foreach ($informations as $information) { ?>
			<?php if ($information['view_menu'] == 0) {  ?>
	    <a href="<?php echo $information['href']; ?>" class="leftnav__item">
				<i class="<?php echo $information['ico']; ?>"></i>
	    	<?php echo $information['title']; ?>
	    </a>
			<?php }  ?>
    <?php } ?>
    <a href="<?php echo $contact; ?>" class="leftnav__item"><i class="icons icon-earphones-alt"></i><?php echo $text_contact; ?></a>
    <a href="/magazin/" class="leftnav__item"><i class="icon-basket icons"></i><?php echo $magazin_title; ?></a>
    <?php echo $cart; ?>