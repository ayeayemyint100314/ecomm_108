<?php
require_once "dbconn.php";
if (!isset($_SESSION)) {
    session_start();
}

function itemInfo($id)
{
    global $conn;
    try {
        $sql = "select i.item_id, i.iname,
		            i.price, i.description, 
		            i.quantity, i.img_path, c.cname as category
                    from item i, category c
                    where i.category = c.cid AND 
                    i.item_id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->execute([$id]);
        $item = $stmt->fetch();
        return $item;
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
} // function end


?>






<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
           <?php  require_once "cnavbar.php"; ?>
        </div>
        <div class="row my-5">
            <div class="col-12 col-md-6 col-lg-3 mx-auto">
                <?php
                if (isset($_SESSION['cart'])) {
                    echo "<div class=display-6>Items in your cart !!!!!</div>";
                    $cart = $_SESSION['cart'];
                    $total = 0;                    
                    echo "<table class='table table-striped'>";
                    foreach ($cart as $id => $qty) {
                        $item = itemInfo($id);
                         $total += $qty * $item['price'];
                        $amount = $qty * $item['price'];
                        echo   "<tr>
                                <td class=w-50>$item[iname]  </td>
                                <td>$item[price]  </td>
                                <td>$item[category]  </td>
                                <td><img style=width:60px; height:60px   src=../$item[img_path]>  </td>
                                <td>$qty  </td>
                                <td class='text-end'> $amount</td>
                                <td><a href=addCart.php?did=$item[item_id]><img style=width:30px; height:30px; src=profile/remove.png> 
                                </a> <td>        
                                </tr>";
                    } // end foreach
                    echo "</table>";
                }
                ?>
                <div class="text-end"><?php echo "Total Amount ".$total; ?></div>

            </div>


        </div>




    </div>


</body>

</html>