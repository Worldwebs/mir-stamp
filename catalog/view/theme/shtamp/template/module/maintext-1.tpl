<div class="itemtextimg" id="banner<?php echo $module; ?>">
  <?php foreach ($banners as $banner) { ?>
    <div class="itemtextimg__img itemtextimg__img-l">
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
  </div>
  <div class="itemtextimg__text itemtextimg__text-c itemtextimg__text-c1 itemtextimg__text-r">
    <h2><?php echo $banner['title']; ?></h2>
    <p><?php echo $banner['subtitle']; ?></p>
  </div>
  <?php } ?>
</div>
