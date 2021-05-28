		<div id="carousel<?php echo $module; ?>" class="itemtextimg-link__slider">
		  <?php foreach ($banners as $banner) { ?>
		  <div class="itemtextimglink itemtextimglink-type2">
		  	<div class="itemtextimglink__wrtext">
		  		<div class="toptitle"><?php echo $banner['subtitle']; ?></div>
		  		<h2><?php echo $banner['title']; ?></h2>
		    	<?php if ($banner['link']) { ?>
		    	<a class="button button-color2" href="<?php echo $banner['link']; ?>"><?php echo $banner['button'] ? $banner['button'] : 'Подробнее'; ?></a>
		    </div>
			  <?php } ?>
		   <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
		  </div>
		  <?php } ?>
		</div>
	</div>
</div>