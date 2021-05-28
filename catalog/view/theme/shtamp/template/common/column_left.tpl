<div class="mobile animate">
	<div class="button-openmenu"><i class="icon-close icons"></i></div>
</div>
<div class="sidebar">
	<div class="sidebar-fixed">
		<div class="sitename">
			<?php if ($logo) { ?>
			<a class="sitename__name" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/></a>
			<?php } else { ?>
			<a class="sitename__name" href="<?php echo $home; ?>"><?php echo $name; ?></a>
			<?php } ?>
			<?php echo $language; ?>
		</div>
		<div class="button-openmenu"><i class="icon-menu icons"></i></div>
		<?php if ($modules) { ?>
			<?php foreach ($modules as $module) { ?>
				<?php echo $module; ?>
			<?php } ?>
		<?php } ?>
		<a href="tel:+<?php echo preg_replace('/[^0-9]/', '', $telephone); ?>" class="tell"><i class="icons icon-phone"></i><?php echo $telephone; ?></a>
		<a class="button button-color1 button-popup" href="#popup"><?php echo $title_button_popup; ?></a>
		<?php echo $search; ?>
	</div>
</div>