<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>

<?php if ($articles) { ?>

  <div class="shopitems">
    <?php foreach ($articles as $article) { ?>
    <div class="shopitem">  
      <a href="<?php echo $article['href']; ?>"><img class="shopitem__img" src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>"></a>
      <div class="shopitem__price">
        <a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a>
      </div>
      <div class="shopitem__description"><?php echo $article['description']; ?></div>
      <a href="<?php echo $article['href']; ?>" class="button button-color2 button-type2"><?php echo $button_more; ?></a>
    </div>
    <?php } ?>
  </div>

<?php echo $pagination; ?>

<?php } else { ?>
<p><?php echo $text_empty; ?></p>
<div class="btn-group btn-group--center">
  <a href="<?php echo $continue; ?>" class="button button-color2"><?php echo $button_continue; ?></a>
</div>
<?php } ?>


<?php echo $content_bottom; ?>
<?php echo $footer; ?>