<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="sitename__lang" id="language">
  <div class="btn-downlang">
    <?php foreach ($languages as $language) { ?>
      <?php if ($language['code'] == $code) { ?>
        <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
      <?php } ?>
    <?php } ?>
    <span><?php echo $text_language; ?></span>  
    <div class="lang-list">
      <?php foreach ($languages as $language) { ?>
      <a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
      <?php } ?>
    </div>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>