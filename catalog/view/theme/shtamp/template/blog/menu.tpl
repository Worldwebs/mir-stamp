<div class="catlinkbottom">
<?php foreach ($categories as $category) { ?>

	<?php if ($category['children']) { ?>
		<div class="catlinkbottom__item">
			<h3><?php echo $category['name']; ?></h3>
			<ul>
			<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				<?php foreach ($children as $child) { ?>
					<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
				<?php } ?>
			<?php } ?>
			</ul>
		</div>

	<?php } else { ?>
		<div class="catlinkbottom__item">
			<h3><?php echo $category['name']; ?></h3>	
		</div>
	<?php } ?>

<?php } ?>
</div>