<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

<?php if ($categories) { ?>
  <div class="catitems catitems-1">
    <?php foreach ($categories as $category) { ?>
    <a href="<?php echo $category['href']; ?>" class="catitems__item">
      <img src="<?php echo $category['thumb']; ?>"><?php echo $category['name']; ?>
    </a>
    <?php } ?>
  </div>
<?php } ?>

<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<div class="categoryshop">
  <h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>

  <?php if ($thumb) { ?>
    <div class="itemtextimg itemtextimg-article">
	    <div class="itemtextimg__img itemtextimg__img-2">
	      <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" />
	    </div>
	    <div class="itemtextimg__text itemtextimg__text-2">
	    <?php echo $description; ?>
	    </div>
    </div>
  <?php } else if ($description) { ?>
  	<div class="itemtextimg itemtextimg-article itemtextimg-noimg">
	  	<div class="itemtextimg__text-2">
	  		<?php echo $description; ?>
	  	</div>
  	</div>
  <?php } ?>

  <?php if ($products) { ?>
  <div class="sortirovka">
    <div class="sortirovka__item">
      <label for="input-sort"><?php echo $text_sort; ?></label>
      <select id="input-sort" onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sortirovka__item">
      <label for="input-limit"><?php echo $text_limit; ?></label>
      <select id="input-limit" onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
          <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
          <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
          <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>

  <div class="shopitems">
    <?php foreach ($products as $product) { ?>
    <div class="shopitem">
      <a class="mpopup" href="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>">
        <img class="shopitem__img" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
      </a>
      <div class="shopitem__price">
        <?php echo $product['name']; ?>
        <span><?php echo $product['price']; ?></span>
      </div>
      <?php if ($product['description'] !== '..') { ?>
      <div class="shopitem__description"><?php echo $product['description']; ?></div>
      <?php } ?>
      <div class="button button-color2 button-type2" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></div>
    </div>
    <?php } ?>
  </div>

  <?php echo $pagination; ?>
  <div class="pagination-results"><?php echo $results; ?></div>
  <?php } ?>

  <?php if($title_zakaz) { ?>
  <div class="how-zakaz">
    <div class="how-zakaz__left">
      <?php if($sub_title_zakaz) { ?>
      <div class="how-zakaz__sub-title"><?php echo $sub_title_zakaz; ?></div>
      <?php } ?>
      <h2 class="how-zakaz__title"><?php echo $title_zakaz; ?></h2>
      <?php if($text_zakaz) { ?>
      <div class="how-zakaz__text"><?php echo $text_zakaz; ?></div>
      <?php } ?>
    </div>
    <a href="<?php echo $link_button; ?>" class="button button-color2 button-type2"><?php echo $text_button; ?></a>
  </div>
  <?php } ?>

  <?php if ($images) { ?>
	  <?php if (count($images) >= 5 ) {
						$slider_container = ' slider-container';
						} else {
							$slider_container = '';
						}
		?>
  <div class="slider slider-bg">
    <h2><?php echo $title_gall; ?></h2>
    <div class="worksitems<?php echo $slider_container; ?>">
    <?php foreach ($images as $image) { ?> 
      <?php if ( ($image['popup'] != '') || ($image['thumb'] != '') ) { ?>    
        <div class="worksitems__item">
          <div class="wr">
            <a class="mpopup" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
              <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /> 
            </a>
          </div>
          <?php echo $image['image_title']; ?>
        </div>
      <?php } ?> 
    <?php } ?>
    </div>
  </div>
  <?php } ?>

  <?php if ($thumb_prise) { ?>
  <img class="prise-img" src="<?php echo $thumb_prise; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" />
  <?php } ?>

  <?php echo $article_description; ?>

</div>
<?php echo $column_right; ?>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>