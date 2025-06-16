<?php
require_once "dbconn.php";

$sql = "select * from item";
$stmt = $conn->query($sql);
 $stmt->execute();
 $rows = $stmt->fetchAll();
foreach($rows as $data)
{
    echo $data['iname'];
    echo $data['price'];
    echo "<img src=$data[img_path]>";
    
}






