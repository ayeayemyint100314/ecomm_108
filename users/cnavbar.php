<?php

?>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="" alt=""></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="#">Features</a>
        <a class="nav-link" href="#">Pricing</a>
        <?php if (!isset($_SESSION['customerEmail']) && !isset($_SESSION['clogin'])) { ?>
          <a class="nav-link" href="clogin.php">Customer Login</a>
        <?php } else { ?>
          
          <a class="nav-link" href="clogout.php">Logout</a>
        <?php  } ?>
      </div>
    </div>


  </div>
</nav>