<header class="top_header">
	<?php 
		$categories = mysqli_query($connection, "SELECT * FROM `articles_categories`");
	?>
	<div class="header_topline">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="soc_button">
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>			
					</div>
					<div class="contacts_head">
						<p><span><i class="fa fa-phone" aria-hidden="true"></i>+1111</span></p>
						<p><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:lits.1610@gmail.com">somebody@gmail.com</a></p>
					</div>
				</div>				
			</div>
		</div>
	</div>
	<div class="header_shapka">
		<div class="container">
			<div class="col-md-12"> 
				<div class="row">					
					<a href="/" class="logotyp"><img src="img/logo.png" alt="logo"></a>
					<button class="main_menu_button hidden-lg hidden-md"><i class="fa fa-bars" aria-hidden="true"></i></button>
					<div class="main_menu">
						<ul>
							<?php 
							  $categories = mysqli_query($connection, "SELECT * FROM `articles_categories`");
							?>
							<li class="icon-submenu"><a href="#">RSS</a>
								<ul class="sub_menu">
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
							</li>
							<li><a href="about.php">About Us</a></li>
							<li class="active"><a href="about.php">Text</a></li>							
						</ul>
					</div>	
				</div>
			</div>
		</div>
	</div>
</header>