<?php include "includes/head.php"; ?>
<body>
	
<div class="wrapper_my">
	<?php include "includes/header.php"; ?>

	<div class="main_content">
		<div class="container">
			<div class="col-lg-8 col-md-8">
				<?php 						
					if($_GET['top'] == 1){
						$articles = mysqli_query($connection, "SELECT * FROM `articles` ORDER BY `views` DESC");
					}
					else{
						$articles = mysqli_query($connection, "SELECT * FROM `articles` ORDER BY `publication_date` DESC, `id` DESC");
					}

					while ($art = mysqli_fetch_assoc($articles)){
				?>
				<div class="row">
					<div class="blog_content">
						<div class="box_blog">
							<h2 class="post_title"><a href="article.php?id=<?php echo $art['id']; ?>"><?php echo $art['title']; ?></a></h2>
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
									<li><a href="articles_by_cat.php?categorie=<?php echo $art_cat['id']; ?>">Categorie: <?php echo $art_cat['title']; ?></a></li>
									<li><a href="#"><?php echo $art['views'];?> views</a></li>
									<li><a href="#"><?php echo $art['publication_date'];?></a></li>
								</ul>
							</div>
							<a href="article.php?id=<?php echo $art['id']; ?>"><img class="miniatura" src="img/<?php echo $art['image']; ?>" alt="Miniatura"></a>
							<p><?php echo mb_substr(strip_tags($art['text']), 0, 200, 'utf-8') . ' ...'; ?></p>
							<div class="read_more"><a href="article.php?id=<?php echo $art['id'];?>">Read More</a></div>
						</div>
					</div>
				</div>
				<br/>
				<?php  
	        }     
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