<?php
define('DB_SERVER','sql101.hyperphp.com');
define('DB_USER','hp_30283542');
define('DB_PASS' ,'Philips997');
define('DB_NAME','hp_30283542_newsportal');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>