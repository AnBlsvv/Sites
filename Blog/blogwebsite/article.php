<?php include "includes/head.php"; ?>
<body>

<div class="wrapper_my">
	<?php include "includes/header.php"; ?>

	<div class="main_content">
		<div class="container">
			<div class="col-lg-8 col-md-8">
				<?php 
					$article = mysqli_query($connection, "SELECT * FROM `articles` WHERE `id` = " . (int) $_GET['id']);

      		if (mysqli_num_rows($article) <= 0) {
				?>
				<div class="row">
					<div class="blog_content">
						<div class="box_blog">
							<h2 class="post_title"><a>Oops!</a></h2>
							<div class="post_meta">
							</div>
							<p>Sorry, article is not found!</p>
						</div>
					</div>
				</div>
				<?php
	      } else {
	        $art = mysqli_fetch_assoc($article);
	        mysqli_query($connection, "UPDATE `articles` SET `views` = `views` + 1 WHERE `id` = " . (int) $art['id']);
	    	?>
				<div class="row">
					<div class="blog_content">
						<div class="box_blog">
							<h2 class="post_title"><a><?php echo $art['title']; ?></a></h2>
							<div class="post_meta">
								<?php 
                  $art_cat = false;
                  foreach ($categories as $cat) {
                    if($cat['id'] == $art['categorie_id']){
                      $art_cat = $cat;
                      break;
                    }
                  }
                ?>
								<ul>
									<li><a href="all_articles.php?categorie=<?php echo $art_cat['id']; ?>">Categorie: <?php echo $art_cat['title']; ?></a></li>
									<li><a href="#"><?php echo $art['views'];?> views</a></li>
									<li><a href="#"><?php echo $art['publication_date'];?></a></li>
								</ul>
							</div>
							<a href="#"><img class="miniatura" src="img/<?php echo $art['image']; ?>" alt="Miniatura"></a>
							<p><?php echo $art['text']; ?></p>
						</div>
					</div>
				</div>
				<br/>

				<p>Comments</p> 
				<?php 
				  $comments = mysqli_query($connection, "SELECT * FROM `comments` WHERE `articles_id` = " . (int) $art['id'] . " ORDER BY `id` DESC");
				  if (mysqli_num_rows($comments) <= 0) {
				    echo "No Comments";
				  }
				  while ($comment = mysqli_fetch_assoc($comments)){
				?> 

				<div class="row">
					<div class="comments_content">
						<div class="box_blog">
							<p><?php echo $comment['nickname']; ?></p>
							<p><?php echo $comment['text']; ?></p>
						</div>
					</div>
				</div>
				<br/>

				<?php
	        }  }      
	      ?>
			</div>
			<?php include "includes/sidebar.php"; ?>
		</div>
	</div>
	<?php include "includes/footer.php"; ?>
	<div class="up_button"><img src="img/up.png" alt="up"></div>

</div>
<?php include "includes/scripts.php"; ?>
</body>
</html>