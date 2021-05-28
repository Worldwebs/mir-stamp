<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>

<?php if ($categories) { ?>
  <?php if (count($categories) <= 5) { ?>
  <div class="catitems catitems-1">
    <?php foreach ($categories as $category) { ?>
    <a href="<?php echo $category['href']; ?>" class="catitems__item"><img src="<?php echo $category['thumb']; ?>"><?php echo $category['name']; ?></a>
    <?php } ?>
  </div>
  <?php } else { ?>
    <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
    <div class="catitems catitems-1">
      <?php foreach ($categories as $category) { ?>
      <a href="<?php echo $category['href']; ?>" class="catitems__item"><img src="<?php echo $category['thumb']; ?>"><?php echo $category['name']; ?></a>
      <?php } ?>
    </div>
    <?php } ?>
  <?php } ?>
<?php } ?>


<ul class="breadcrumb breadcrumb-center">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li class="breadcrumb__item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><i class="icon-arrow-right icons"></i></li>
  <?php } ?>
</ul>

<h1 class="categoryshop__h1"><?php echo $heading_title; ?></h1>

<?php if ($thumb || $description) { ?>
  <div class="row">
    <?php if ($thumb) { ?>
      <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" />
    <?php } ?>
    <?php if ($description) { ?>
      <?php echo $description; ?>
    <?php } ?>
  </div>
<?php } ?>

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
<?php echo $column_right; ?> 
<?php echo $footer; ?>