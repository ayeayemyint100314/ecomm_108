<?php
if(!isset($_SESSION))
{
    session_start();
}
if(isset($_GET['detailId']))
{

    $item = $_SESSION['item'];
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail View</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-4 col-lg-3">
            <div class="card">
                <div class="card-title">
                    <?php echo "$item[iname]" ; ?>

                </div>
                <div class="card-body">
                    <?php echo "<p>".$item['price']."</p>"; ?>
                    <?php echo "<p class='text-wrap'>".$item['description']."</p>"; ?>
                    <?php echo "<img src=$item[img_path] >";  ?>            
    ?>

                </div>

            </div>

        </div>
    </div>



</div>



    
</body>
</html>