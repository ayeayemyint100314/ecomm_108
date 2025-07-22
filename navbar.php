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
        <?php if (!isset($_SESSION['adminId']) && !isset($_SESSION['login'])) { ?>
          <a class="nav-link" href="login.php">Login</a>
        <?php } else { ?>
          <form class="d-flex" role="search" method="get" action="viewItem.php">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"  name="wSearch"/>
            <button class="btn btn-outline-primary" type="submit" name="bSearch">Search</button>
          </form>
          <a href="dashboard.php" class="btn btn-outline-secondary mx-5">Dashboard</a>
          <a class="nav-link" href="logout.php">Logout</a>
        <?php  } ?>
      </div>
    </div>


  </div>
</nav>