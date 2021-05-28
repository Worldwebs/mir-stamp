<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>

<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<h1 class="categoryshop__h1"><?php echo $heading_title; ?><?php if ($weight) { ?>&nbsp;(<?php echo $weight; ?>)<?php } ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">    
    <div class="produt-in-cart table-responsive">
      <table>
        <thead>
          <tr>
            <td><?php echo $column_image; ?></td>
            <td><?php echo $column_name; ?></td>
            <td><?php echo $column_model; ?></td>
            <td><?php echo $column_quantity; ?></td>
            <td><?php echo $column_price; ?></td>
            <td><?php echo $column_total; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr class="produt-in-cart-item">
            <td><?php if ($product['thumb']) { ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
              <?php } ?></td>
            <td><?php echo $product['name']; ?>
              <?php if (!$product['stock']) { ?>
              <span class="text-danger">***</span>
              <?php } ?>
              <?php if ($product['option']) { ?>
              <?php foreach ($product['option'] as $option) { ?>
              <br />
              <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
              <?php } ?>
              <?php } ?>
              <?php if ($product['reward']) { ?>
              <br />
              <small><?php echo $product['reward']; ?></small>
              <?php } ?>
              <?php if ($product['recurring']) { ?>
              <br />
              <span><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
              <?php } ?>
            </td>
            <td><?php echo $product['model']; ?></td>
            <td>
              <div class="input-group btn-block">
                <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                <span class="input-group-btn">
                  <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="produt-in-cart-item__button"><i class="icon-refresh icons"></i></button>
                  <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="produt-in-cart-item__button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="icon-trash icons"></i></button>
                </span>
              </div>
            </td>
            <td ><?php echo $product['price']; ?></td>
            <td ><?php echo $product['total']; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>

  <div class="produt-in-cart-item">
    <?php foreach ($totals as $total) { ?>
      <div class="cart-rezult">
        <div class="cart-rezult__title"><strong><?php echo $total['title']; ?>:</strong></div>
        <div class="cart-rezult__text"><?php echo $total['text']; ?></div>
      </div>
    <?php } ?>
  </div>

  <div class="btn-group btn-group--cart">
    <a href="<?php echo $continue; ?>" class="button button-color2 button-type2"><?php echo $button_shopping; ?></a>
    <a href="<?php echo $checkout; ?>" class="button button-color3 button-type2"><?php echo $button_checkout; ?></a>
  </div>   

<?php echo $column_right; ?> 
<?php echo $content_bottom; ?>
<?php echo $footer; ?>