<div id="carousel<?php echo $module; ?>" class="works">
  <div class="worksitems">
  <?php foreach ($banners as $banner) { ?>  
    <?php if ($banner['link']) { ?>
    <div class="worksitems__item worksitems__item-page-gallery">
      <div class="wr">
        <a href="<?php echo $banner['image']; ?>" class="mpopup">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        </a>
      </div>
      <a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a>
    </div>    
          
    <?php } else { ?>
    <div class="worksitems__item worksitems__item-page-gallery">
      <div class="wr">
        <a href="<?php echo $banner['image']; ?>" class="mpopup">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        </a>
      </div>
      <?php echo $banner['title']; ?>
    </div>
    <?php } ?>
  <?php } ?>
    </div>
</div>