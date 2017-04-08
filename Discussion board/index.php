<html>
<head>
<title>Discussion Board</title>
<link rel='stylesheet' href='style.css' />
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: black;
    background-color: cyan;
    clear: left;
    text-align: center;
}
</style>
</head>
<body>
<?php include 'connect.php' ; ?>

<div class="container">
<header>
   <h1>Discussion Board</h1>
</header>

<?php include 'title_bar.php' ; ?>

<br/><br/>

<?php 
	$post_query = mysql_query("SELECT id, post, date, time FROM post");
	while($run_post = mysql_fetch_array($post_query)){
			$post_id = $run_post['id'];
			$post = $run_post['post'];
			$post_date = $run_post['date'];
			$post_time = $run_post['time'];
	
?>
		<div class='box'>
		<b>User : </b> | <font color='#4aaee7'> Date : <?php echo $post_date; ?> | Time : <?php echo $post_time; ?></font>
		<br/>
		<p><?php echo $post; ?></p>
		<div class="comments<?php echo $post_id; ?>">
		<?php
			$comment_query = mysql_query("SELECT id, comment FROM comment WHERE post_id='$post_id'");
			while($run_comment = mysql_fetch_array($comment_query)){
				$comment_id = $run_comment['id']; 
				$comment = $run_comment['comment'];
		?>
			<div class='view'>
			<b>Viewer : </b> <?php echo $comment; ?>
			</div>
		<?php
				
			}
		?>
		</div>
		</br>
		<input type='text' id='comment<?php echo $post_id; ?>'  class='comment' onclick="getcomment('<?php echo $post_id; ?>')"  />
		
		</div>
<?php
	}
?>

<script src='jquery.js'></script>
<script src='index.js'></script>
</body>
</html>
