  <div id="cart">
    <a class="leftnav__item button-popup" data-loading-text="<?php echo $text_loading; ?>" href="#popup-cart"><i class="icons icon-handbag"></i><?php echo $text_title; ?><span id="cart-total"><?php echo $text_items; ?></span></a>
  </div>
</div>

<form class="form popup_form popup_form-cart" id="popup-cart">
  <div class="wr">
    <div class="title-cart">
      <h2><?php echo $text_title_popup; ?></h2>
    </div>
    <div class="produt-in-cart">
      <?php if ($products) { ?>     
        <?php foreach ($products as $product) { ?>
        <div class="produt-in-cart-item produt-in-cart-item--product">
          <?php if ($product['thumb']) { ?>
          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="produt-in-cart-item__img" /></a>
          <?php } ?>
          <p class="produt-in-cart-item__name"><?php echo $product['name']; ?></p>
          <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?>
          <div class="produt-in-cart-item__quantity">x <?php echo $product['quantity']; ?></div>            
          <div class="produt-in-cart-item__total"><?php echo $product['total']; ?></div>            
          <button class="produt-in-cart-item__button" type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>"><i class="icon-trash icons"></i></button>
        </div>
        <?php } ?>
          
        <div class="produt-in-cart-item">
          <?php foreach ($totals as $total) { ?>
          <div class="cart-rezult">
            <div class="cart-rezult__title"><?php echo $total['title']; ?></div>
            <div class="cart-rezult__text"><?php echo $total['text']; ?></div>
          </div>
          <?php } ?>
          <br>
          <a class="button button-color4 button-type2" href="/stamps/osnastka--dlja--pechatej/">Заказать оснастку</a>
          <div class="btn-group">
            <a class="button button-color2 button-type2" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
            <a class="button button-color3 button-type2" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
          </div>
        </div>         
        
      <?php } else { ?>
        <div class="produt-in-cart-item"><?php echo $text_empty; ?></div>
      <?php } ?>
    </div>    
  </div>
</form>