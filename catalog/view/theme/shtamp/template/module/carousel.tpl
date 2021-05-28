<div class="slider">
  <div id="carousel<?php echo $module; ?>" class="worksitems slider-container">
    <?php foreach ($banners as $banner) { ?>
      <?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>" class="worksitems__item">
        <div class="wr">
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        </div>
        <?php echo $banner['title']; ?>
      </a>
      <?php } else { ?>
        <div class="worksitems__item">
          <div class="wr">
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slider__slide" />
          </div>
          <?php echo $banner['title']; ?>
        </div>
      <?php } ?>
    <?php } ?>
  </div>
</div>