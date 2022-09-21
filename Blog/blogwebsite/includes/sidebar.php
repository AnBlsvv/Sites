<div class="col-lg-4 col-md-4">
	<div class="row">
		<div class="sidebar_my">
			<div class="sidebar_box">
				<?php 
				  $categories = mysqli_query($connection, "SELECT * FROM `articles_categories`");
				?>
				<h3>Categories</h3>
				<ul>
					<li><a href="index.php?top=1">Top</a></li>
					<li><a href="/">New</a></li>
					<?php 
			          while ( $cat = mysqli_fetch_assoc($categories)) {
			        ?>
			          <li><a href="articles_by_cat.php?categorie=<?php echo $cat['id']; ?>"><?php echo $cat['title']; ?></a></li>
			        <?php
			          }
			        ?>
				</ul>
			</div>
		</div>
	</div>
</div>