<?php
require('vendor/autoload.php');

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
    <title>Datatables test with php</title>
    
    <script src="//code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="//cdn.datatables.net/2.1.8/css/dataTables.dataTables.min.css">
    <script src="//cdn.datatables.net/2.1.8/js/dataTables.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.4/jquery.colorbox-min.js" integrity="sha512-DAVSi/Ovew9ZRpBgHs6hJ+EMdj1fVKE+csL7mdf9v7tMbzM1i4c/jAvHE8AhcKYazlFl7M8guWuO3lDNzIA48A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
        $("a.enclosed").colorbox();
      });
    </script>

</head>
<body>
  <nav>
    <sidebar></sidebar>
  </nav>
<table id="example" class="display dataTable" style="width: 100%">
      <thead>
        <tr>
          <th>SKU</th>
          <th>Title(Click type to Download)</th>
          <th>Enclosed Image</th>
          <th>Packet Type</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $user = "dpadmin";
        $server = "localhost";
        $password = "cougars09";
        $dbname = "hp-php";
        $pdf_path = 'https://raw.githubusercontent.com/sher1/hatchpatch/refs/heads/main/packets/';
        $image_path = 'https://raw.githubusercontent.com/sher1/hatchpatch/refs/heads/main/enclosed_images/';
        $pdo = new \PDO("mysql:host=$server;dbname=$dbname",$user, $password);
            $result = $pdo->query("SELECT * FROM pdfs_and_enclosed");
            foreach ($result as $row) {
               echo('<tr><td>'. $row['sku'] . '</td><td><a href="'. $pdf_path . strtolower($row['packet_type']) . '/' . $row['pdf_name'] . '" download>' . $row['title'] . '</a></td><td>' . $row['image_name'] . '</td><td>' . $row['packet_type'] . '</td></tr>');
            } 
        ?>
      </tbody> 
</table>
</body>
</html>


