<div class="content">
  <div class="catnavig">
    <?php if ($categories) { ?>
      <?php $item = 1; ?>
      <div class="catnavig__item catnavig__item-1">
      <?php foreach ($categories as $category) { ?>
        <?php if ($item == 9) { ?>
          </div><div class="catnavig__item catnavig__item-2">
        <?php } else if ($item == 17) { ?>
          </div><div class="catnavig__item catnavig__item-3">
        <?php } else if ($item == 25) { ?>
          </div><div class="catnavig__item catnavig__item-4">
        <?php } ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php $item ++;?>
      <?php } ?>     
    <?php } ?>
    </div>
  </div>

  <?php foreach ($modules as $module) { ?>
    <?php echo $module; ?>
  <?php } ?>      