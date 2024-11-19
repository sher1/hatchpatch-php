<?php
require 'vendor/autoload.php';

// $whoops = new \Whoops\Run;
// $whoops->allowQuit(false);
// $whoops->writeToOutput(false);
// $whoops->pushHandler(new \Whoops\Handler\PrettyPageHandler);
// $html = $whoops->handleException($e);

$config = parse_ini_file(".config.ini");
$user = "dpadmin";
$server = "localhost";
$password = "cougars09";
$dbname = "hp-php";

// $pdo = new PDO("mysql:host={$config['servername']};dbname={$config['dbname']}","{$config['username']}", "{$config['password']}");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hatch Patch Creations - Christian Songs</title>

    <script src="//code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="//cdn.datatables.net/2.1.8/css/dataTables.dataTables.min.css">
    <script src="//cdn.datatables.net/2.1.8/js/dataTables.min.js"></script>
    <!--
    <link rel="stylesheet" href="css/dataTables.dataTables.css" />
    <script src="js/jquery-3.7.1.js"></script>
    <script src="js/dataTables.js"></script>
    -->
    <script>
      $(document).ready(function () {
        $('#example').DataTable({
          "pageLength": -1,
          "lengthChange": false

        });
      });
    </script>

</head>
<body>
<table id="example" class="display dataTable" style="width: 100%">
      <thead>
        <tr>
          <th>Title(Click to Download)</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <?php
$user = "dpadmin";
$server = "localhost";
$password = "cougars09";
$dbname = "hp-php";
$file_path = 'https://raw.githubusercontent.com/sher1/hatchpatch/refs/heads/main';
$pdo = new \PDO("mysql:host=$server;dbname=$dbname", $user, $password);
$result = $pdo->query("SELECT * FROM songs");
foreach ($result as $row) {
    echo ('<tr><td><a href="' . $file_path . strtolower($row['file']) . '" download>' . $row['title'] . '</a></td><td>' . $row['description'] . '</td></tr>');
}
?>
      </tbody>
</table>
</body>
</html>


