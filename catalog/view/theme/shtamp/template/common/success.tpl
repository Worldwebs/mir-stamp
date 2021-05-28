<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

  <ul class="breadcrumb breadcrumb-center">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
    <?php } ?>
  </ul>

  <h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>
  <div class="messages">
    <div class="messages__message"><?php echo $text_message; ?></div>
    <div class="buttons">
      <a href="<?php echo $continue; ?>" class="button button-color2"><?php echo $button_continue; ?></a>
    </div>
  </div>

<?php echo $column_right; ?> 
<?php echo $content_bottom; ?>
<?php echo $footer; ?>