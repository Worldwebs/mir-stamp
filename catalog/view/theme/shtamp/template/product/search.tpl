<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<div id="content">
  <h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>
  <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>  
  <div class="search-group-input">
    <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="search-group-input__item" />
    <select name="category_id" class="search-group-input__item">
      <option value="0"><?php echo $text_category; ?></option>
      <?php foreach ($categories as $category_1) { ?>
      <?php if ($category_1['category_id'] == $category_id) { ?>
      <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
      <?php } ?>
      <?php foreach ($category_1['children'] as $category_2) { ?>
      <?php if ($category_2['category_id'] == $category_id) { ?>
      <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
      <?php } ?>
      <?php foreach ($category_2['children'] as $category_3) { ?>
      <?php if ($category_3['category_id'] == $category_id) { ?>
      <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </select>
    <label class="search-group-input__item">
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" checked="checked" />
      <i></i>
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" />
      <i></i>
      <?php } ?>
      <?php echo $text_sub_category; ?>
    </label>
  </div>

  <label class="checkbox-inline checkbox-inline--search">
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <i></i>
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <i></i>
    <?php } ?>
    <?php echo $entry_description; ?>
  </label>
  <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button button-color2" />
  
  <h2 class="search-h2"><?php echo $text_search; ?></h2>
  
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
    <div class="shopitem<?php if ($product['product_id'] < 0) print ' category_shopitem'; ?>">
      <a class="mpopup" href="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>">
        <img class="shopitem__img" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
      </a>
      <div class="shopitem__price">
        <?php echo $product['name']; ?>
        <span><?php echo $product['price']; ?></span>
      </div>
      <div class="shopitem__description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
        <div class="button button-color2 button-type2" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></div>
      <?php } else { ?>
        <a class="button button-color2 button-type2" href="<?php print $product['href']; ?>">Подробнее</a>
      <?php } ?>
    </div>
    <?php } ?>
  </div>

  <?php echo $pagination; ?>
  <?php echo $results; ?>

  <?php } else { ?>
  <p><?php echo $text_empty; ?></p>
  <?php } ?>
</div>
<?php echo $column_right; ?>
<?php echo $content_bottom; ?>

<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>