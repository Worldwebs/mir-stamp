<?php if ($categories) { ?>
<div id="category_menu" class="catlinkbottom">
	<?php foreach ($categories as $category) { ?>
		<?php if ($category['image']) { ?>
			<div class="catlinkbottom__item">
				<a href="<?php echo $category['href']; ?>">
					<h3><img src="<?php echo $category['image']; ?>"><?php echo $category['name']; ?></h3>
				</a>
		<?php }else{ ?>
			<div class="catlinkbottom__item">
				<h3><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h3>
		<?php } ?>
		<?php if ($category['children']) { ?>
			<?php for ($i = 0; $i < count($category['children']);) { ?>
				<ul class="catlinkbottom__submemu2">
				<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
				<?php for (; $i < $j; $i++) { ?>
					<?php if (isset($category['children'][$i])) { ?>
						<?php  if ($category['children'][$i]['top'] == 1) { ?>
							<?php if ($category['children'][$i]['image']) { ?>
								<li>
									<a href="<?php echo $category['children'][$i]['href']; ?>">
										<img src="<?php echo $category['children'][$i]['image']; ?>"><?php echo $category['children'][$i]['name']; ?>
									</a>
							<?php } else { ?>
								<li>
									<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
							<?php } ?>
						<?php } ?>
						</li>
					<?php } ?>
				<?php } ?>
				</ul>
			<?php } ?>
		<?php } ?>
	</div>
	<?php } ?>
</div>
<?php } ?>