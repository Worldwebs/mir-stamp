<div class="itemtextimg-link">
	<div class="col">
		<div id="carousel<?php echo $module; ?>" class="itemtextimg-link__slider itemtextimg-link__slider-left">
		<?php foreach ($banners as $banner) { ?>
			<div class="itemtextimglink itemtextimglink-type1">
				<span><?php echo $banner['badge']; ?></span>
				<div class="itemtextimglink__wrtext">
					<h2><?php echo $banner['title']; ?></h2>
					<p><?php echo $banner['subtitle']; ?></p>
					<?php if ($banner['link']) { ?>
						<a class="button button-color3 button-size2" href="<?php echo $banner['link']; ?>"><?php echo $banner['button'] ? $banner['button'] : 'Подробнее'; ?></a>
					<?php } ?>
				</div>
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
			</div>
		<?php } ?>
	</div>
</div>