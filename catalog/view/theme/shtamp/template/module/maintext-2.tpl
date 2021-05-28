<div class="itemtextimg" id="banner<?php echo $module; ?>">
  <?php foreach ($banners as $banner) { ?>
  <div class="itemtextimg__text itemtextimg__text-c itemtextimg__text-c2 itemtextimg__text-l">
    <h2><?php echo $banner['title']; ?></h2>
    <p><?php echo $banner['subtitle']; ?></p>
  </div>
  <div class="itemtextimg__img itemtextimg__img-r">
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
  </div>
  <?php } ?>
</div>
