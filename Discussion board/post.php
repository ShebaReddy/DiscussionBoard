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
<b><font size="5">Post Your Discussion Here : </font></b>
<br/><br/>
<form method='post'>
<?php
if(isset($_POST['message']) && !empty($_POST['message'])){
	$message = nl2br($_POST['message']);
	mysql_query("INSERT INTO post VALUES('', '$message', now(), now())");
	echo "<p>Sucessfully Posted. Go to View the post. </p>";
}
?>
<textarea name='message' rows ="5" cols = "50"></textarea>
<br/>
<input type='submit' value='post' />
</form>

<script src='jquery.js'></script>
<script src='index.js'></script>
</body>
</html>
