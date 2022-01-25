<?php 
// DB credentials.
define('DB_HOST','sql101.hyperphp.com');
define('DB_USER','hp_30283542');
define('DB_PASS','Philips997');
define('DB_NAME','hp_30283542_contactform');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>