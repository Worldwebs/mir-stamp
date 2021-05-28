<div class="ordering">
  <div class="ordering__item">
    <?php if ($checkout_guest) { ?>
    <div class="radio">
      <label>
        <?php if ($account == 'guest') { ?>
        <input type="radio" name="account" value="guest" checked="checked" />
        <i></i>
        <?php } else { ?>
        <input type="radio" name="account" value="guest" checked="checked" />
        <i></i>
        <?php } ?>
        <?php echo $text_guest; ?></label>
    </div>
    <?php } ?>    
  </div>
  <div class="buttons">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-account" data-loading-text="<?php echo $text_loading; ?>" class="button button-color2" />
  </div>
</div>