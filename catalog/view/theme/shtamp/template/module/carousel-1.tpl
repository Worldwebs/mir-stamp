<div class="slider">
  <h2><?php echo $title_module; ?></h2>
  <div id="carousel<?php echo $module; ?>" class="worksitems slider-container">
    <?php foreach ($banners as $banner) { ?>
      <?php if ($banner['link']) { ?>
      <div class="worksitems__item">
        <div class="wr">
          <a href="<?php echo $banner['image']; ?>" class="mpopup">
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
          </a>
        </div>
        <a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a>
      </div>            
      <?php } else { ?>
      <div class="worksitems__item">
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