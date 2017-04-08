<?php

include 'connect.php';

$post_id = $_POST['post_id'];
$comment = $_POST['comment'];
//if($comment!='')
{
echo $sql="INSERT INTO comment (post_id, comment) values('".$post_id."','".addslashes($comment)."')";
$res=mysql_query($sql);
echo 'success';
}

?>
