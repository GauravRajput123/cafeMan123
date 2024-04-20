<!DOCTYPE html>
<html lang="en">
<head>
  <title>FAQ</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel = "icon" href ="img/logo.jpg" type = "image/x-icon">
</head>
<body>
<?php include 'partials/_dbconnect.php';?>
<?php require 'partials/_nav.php'; ?>

<div class="container mt-3">
  <h2>FAQ</h2>
  <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
         1) What are your opening hours?
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
        <div class="card-body">
             Answer : We are open from 9 am to 11 pm everyday.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
         2) Is Wi-Fi available?
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
        <div class="card-body">
             Answer : Yes, we provide complimentary Wi-Fi for our customers. Please ask our staff for the password.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
         3) Can I host a private event at your café?
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
        <div class="card-body">
             Answer : Absolutely! We have space available for private events such as parties, meetings, and gatherings. Please get in touch with us to discuss your requirements.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
         4) Is parking available nearby?
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
        <div class="card-body">
             Answer : There are parking facilities located 200 meter from our café.   Alternatively, street parking may be available nearby.
        </div>
      </div>
    </div>
  </div>
</div>
    
<!-- <?php require 'partials/_footer.php' ?> -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>         
    <script src="https://unpkg.com/bootstrap-show-password@1.2.1/dist/bootstrap-show-password.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="assets/js/main1.js"></script>
 <script src="assets/js/block.js"></script></body>
</html>
