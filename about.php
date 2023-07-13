<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   


<div class="heading">
   <h3>About us</h3>
   <p><a href="home.php">Home</a> <span> / about</span></p>
</div>



<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>Choose MARRIOT for culinary excellence. Our diverse menu features exquisite flavors using the finest ingredients. Experience unforgettable dining with us today.</p>
         
      </div>

   </div>

</section>



<section class="steps">

   <h1 class="title">Simple Process</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>Choose order</h3>
         <p>Discover MARRIOT, an inviting  gem. Indulge in our exquisite  impeccable service, and captivating ambience. Book your table now for an unforgettable dining experience.</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>Fast delivery</h3>
         <p>Experience lightning-fast delivery with MARRIOT. Savor our delectable from the comfort of your home. Order now for a quick and satisfying dining experience.</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>Enjoy food</h3>
         <p>Savor the delectable flavors at MARRIOT. Indulge in mouthwatering cuisine that will delight your taste buds and leave you craving for more. Experience culinary bliss today.</p>
      </div>

   </div>

</section>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>


<script src="js/script.js"></script>



</body>
</html>