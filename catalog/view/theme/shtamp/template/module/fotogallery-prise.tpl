<div id="carousel<?php echo $module; ?>" class="works">
  <div class="worksitems worksitems-prise-page">
  <?php foreach ($banners as $banner) { ?>  
    <div class="worksitems__item worksitems__item-page-gallery">
      <?php if ($banner['link']) { ?>
      <div class="wr">
        <a href="<?php echo $banner['link']; ?>">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        </a>
      </div>
      <a class="cloud-download" href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?> <i class="icon-cloud-download icons"></i></a>
    	<?php } else { ?>
			<div class="wr">
        <a href="<?php echo $banner['image']; ?>" class="mpopup">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        </a>
      </div>
      <a class="cloud-download" href="<?php echo $banner['image']; ?>" target="_blank"><?php echo $banner['title']; ?> <i class="icon-cloud-download icons"></i></a>
    	<?php } ?>
    </div>
  <?php } ?>
  </div>
</div>