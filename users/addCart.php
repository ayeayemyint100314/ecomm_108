<?php
if (!isset($_SESSION)) {
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == "GET" && isset($_GET['addCart'])) // name of the submit button in GET global
{
    $itemID = $_GET['itemID']; // input hidden name = itemID
    $qty = $_GET['qty']; // input text box name = qty
    // echo "$itemID is clicked";
    if (array_key_exists('cart', $_SESSION)) {
        $cart = $_SESSION['cart']; // getting current cart from session
        if (!array_key_exists($itemID, $cart)) // newly clicked item
        {
            $cart[$itemID] = $qty;
        } else {
            $cart[$itemID] = $qty;
        }
    } else { // if not cart key exists when user click addtocart first time
        $cart = array();
        $cart[$itemID] = $qty; // itemid 3 is clicked, its quantity value will be 1      
    }
    $_SESSION['cart'] = $cart;
    header("Location:customerViewItem.php");
}
if (isset($_GET['did'])) { // remove button action fires
    unset($_SESSION['cart'][$_GET['did']]);
    header("Location:viewCart.php");
}
