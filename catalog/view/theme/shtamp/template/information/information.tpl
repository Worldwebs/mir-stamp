<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>
<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>
<h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>
<?php echo $description; ?>

<div id="percent" data-percent="<?php echo $price_percent; ?>"></div>

<?php echo $column_right; ?>
<?php echo $content_bottom; ?>

<script>
	const percent = Number($('#percent').attr('data-percent'));
	if (percent != 100) {
		$('.price').each(function() {
			const $price = parseFloat($(this).text().replace(/\s/g, "").replace(",", "."));
		  $new_price = Math.round(($price*(percent/100)));
		  if ($(this).hasClass('price-2')) {
		  	$(this).text($new_price);
		  } else {
		  	$(this).text($new_price.toFixed(1));
		  }		  
		});
	}
</script>

<?php echo $footer; ?>