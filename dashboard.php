<?php include_once "config.php";
    include_once "header.php";

    ?>

<!-- sidebar.php -->

<div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px; height: 100vh;">
  <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
    <span class="fs-4">Menu</span>
  </a>
  <hr>
  <ul class="nav nav-pills flex-column mb-auto">
    <li><a href="dashboard.php" class="nav-link text-white">Dashboard</a></li>

    <li><a href="#" class="nav-link text-white">Ecommerce</a></li>

    <li><a href="#" class="nav-link text-white">Analytics <span class="badge bg-primary ms-1">PRO</span></a></li>

    <li><a href="#" class="nav-link text-white">Marketing <span class="badge bg-primary ms-1">PRO</span></a></li>

    <li><a href="#" class="nav-link text-white">CRM <span class="badge bg-primary ms-1">PRO</span></a></li>

    <li><a href="#" class="nav-link text-white">Stocks <span class="badge bg-success ms-1">NEW</span> <span class="badge bg-primary ms-1">PRO</span></a></li>

    <li><a href="#" class="nav-link text-white">SaaS <span class="badge bg-success ms-1">NEW</span> <span class="badge bg-primary ms-1">PRO</span></a></li>

    <li><a href="#" class="nav-link text-white">Calendar</a></li>

    <li><a href="#" class="nav-link text-white">User Profile</a></li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-white" href="#" id="taskDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Task
      </a>
      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="taskDropdown">
        <li><a class="dropdown-item" href="#">View Tasks</a></li>
        <li><a class="dropdown-item" href="#">New Task</a></li>
      </ul>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-white" href="#" id="formsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Forms
      </a>
      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="formsDropdown">
        <li><a class="dropdown-item" href="#">Form 1</a></li>
        <li><a class="dropdown-item" href="#">Form 2</a></li>
      </ul>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle text-white" href="#" id="tablesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Tables
      </a>
      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="tablesDropdown">
        <li><a class="dropdown-item" href="#">Table 1</a></li>
        <li><a class="dropdown-item" href="#">Table 2</a></li>
      </ul>
    </li>
  </ul>
</div>


<?php 
    include_once "footer.php";

    ?>