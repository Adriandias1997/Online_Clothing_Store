<?php 

session_start();
require_once 'config/connect.php';
include 'inc/header.php'; 
include 'inc/nav.php'; 

 ?>
<!DOCTYPE html>
<html>
<head>
  <title>Bimak ChatBot</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="icon" type="image/png" href="../ITP_Project/Bimak/images/icon/logo.png">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
</head>

<style>

   .chat
   {
   
     position:fixed;
     bottom:0;
     right:0;
     margin-right: 20px;
     max-width:300px;
     z-index:999;
     box-shadow: 4px 4px 4px 4px;
     border: : 2px solid rgb(22,118,134);
   }



     #sc
     {
      background-color: rgb(22,118,134);
      padding:15px;
      color:white;
      font-size: 16px;
      width:300px;
      height: 45px;


     }

     #panel
     {
       
        background-color: white;
        display: none;
        margin:0;
        width:300px;
        height: 300px;

     }

     #div
     {
        padding:10px;
        height: 240px;
        position: relative;
        overflow-y: auto;
        
     }
  
     input[type=text] 
     {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          box-sizing: border-box;
     }

     .ou
     {
        background-color:rgb(241,240,240);
        color:black;
        padding:10px; 
        left:5; 
        width:130px;
        text-align: center;
        height:auto;
        border-radius: 15px;
  
      }
      .stt
      {
         margin-top:5px;
        
      }

  

</style>


<body>

<!-- Slide1 -->
	<section class="slide1">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1" style="background-image: url(images/slide-03.png);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="fadeInDown">
							Women Collection 2018
						</span>
					
						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-30" data-appear="fadeInUp">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
							<!-- Button -->
							<a href="product.php" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item2-slick1" style="background-image: url(images/slide-02.png);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text27 t-center animated visible-false m-b-15" data-appear="rollIn">
							Women Collection 2018
						</span>

						<h2 class="caption2-slide1 xl-text3 t-center animated visible-false m-b-37" data-appear="lightSpeedIn">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="slideInUp">
							<!-- Button -->
							<a href="product.php" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1" style="background-image: url(images/slide-01.webp);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rotateInDownLeft">
							Women Collection 2018
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="rotateInUpRight">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
							<!-- Button -->
							<a href="product.php" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- Banner -->
	<section class="banner bgwhite p-t-40 p-b-40">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/banner-02.png" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="#" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								GENTS COLLECTION
							</a>
						</div>
					</div>

					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/banner-05.png" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="#" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								FAMILY
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/banner-03.png" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="#" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								COUPLE  COLLECTION
							</a>
						</div>
					</div>

					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/banner-07.png" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="#" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								SHIRT COLLECTION
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/banner-04.png" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="#" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								LADIES COLLECTION

							</a>
						</div>
					</div>

					<!-- block2 -->
					<div class="block2 wrap-pic-w pos-relative m-b-30">
						<img src="images/icons/bg-01.jpg" alt="IMG">

						<div class="block2-content sizefull ab-t-l flex-col-c-m">
							<h4 class="m-text4 t-center w-size3 p-b-8">
								Sign up & get 20% off
							</h4>

							<p class="t-center w-size4">
								Be the frist to know about the latest fashion news and get exclusive offers
							</p>

							<div class="w-size2 p-t-25">
								<!-- Button -->
								<a href="register.php" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
									Sign Up
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- New Product -->
	<section class="newproduct bgwhite p-t-45 p-b-105">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Featured Products
				</h3>
			</div>

						<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
									
										
										
									<?php if(isset($_GET['smsg'])){
								if($_GET['smsg'] == 2){
						 ?><div class="alert alert-info" id="warnalert"  role="alert"> <?php echo "Add to cart"; ?> </div>

						 <?php } }?>	
										
									</div>
					
			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
								<?php 
								$sql = "SELECT * FROM products";
								if(isset($_GET['id']) & !empty($_GET['id'])){
									$id = $_GET['id'];
									$sql .= " WHERE categoryid=$id";
								}
								

								$res = mysqli_query($connection, $sql);
								while($r = mysqli_fetch_assoc($res)){
							?>
					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">


											<?php if($r['qty'] < 1){?>
										
									<img style="position: absolute;left: 0px;top: 0px;z-index: 2;width: 120px;" class="img1" src="images/icons/out of.png" >	
								

										

											<?php }else{ ?>

										<?php } ?>
									
							
									

								<img src="admin/<?php echo $r['thumbneil']; ?>" alt="IMG-PRODUCT">
					
		
								<div class="block2-overlay trans-0-4">
									<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
									
										<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>

										
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
											
											<?php if($r['qty'] > 1){?>
										
									<a href="addtocart.php?id=<?php echo $r['id']; ?>" class=" flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4  " id='add'> Add to Cart </a>	
								

										

											<?php }else{ ?>

										<?php } ?>
											
										
										<br>
										<a href="single.php?id=<?php echo $r['id']; ?>" class=" flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4  " id='add'> View </a>
										
										
										
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
							
								
								<a  class="block2-name dis-block s-text3 p-b-5" href="single.php?id=<?php echo $r['id']; ?>"><?php echo $r['name']; ?></a>

								<span class="block2-price m-text6 p-r-5">
									RS <?php echo $r['price']; ?>.00/-
								</span>
							</div>
						</div>
					</div>	
						<?php } ?>
				</div>
			</div>

		</div>
	</section>

	<!-- Banner2 -->
	<section class="banner2 bg5 p-t-55 p-b-55">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
					<div class="hov-img-zoom pos-relative">
						<img src="images/slide-9.png" alt="IMG-BANNER">

						<div class="ab-t-l sizefull flex-col-c-m p-l-15 p-r-15">
							<span class="m-text9 p-t-45 fs-20-sm">
								The Beauty
							</span>

							<h3 class="l-text1 fs-35-sm">
								Lookbook
							</h3>

							<a href="#" class="s-text4 hov2 p-t-20 ">
								View Collection
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
					<div class="bgwhite hov-img-zoom pos-relative p-b-20per-ssm">
						<img src="images/shop-item-09.png" alt="IMG-BANNER">

						<div class="ab-t-l sizefull flex-col-c-b p-l-15 p-r-15 p-b-20">
							<div class="t-center">
								<a href="product.php" class="dis-block s-text3 p-b-5">
									Gafas sol Hawkers one
								</a>

								<span class="block2-oldprice m-text7 p-r-5">
									$29.50
								</span>

								<span class="block2-newprice m-text8">
									$15.90
								</span>
							</div>

							<div class="flex-c-m p-t-44 p-t-30-xl">
								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 days">
										69
									</span>

									<span class="s-text5">
										days
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 hours">
										04
									</span>

									<span class="s-text5">
										hrs
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 minutes">
										32
									</span>

									<span class="s-text5">
										mins
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 seconds">
										05
									</span>

									<span class="s-text5">
										secs
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Blog -->
<section class="shipping bgwhite p-t-62 p-b-46">
		<div class="flex-w p-l-15 p-r-15">
			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					<script type="text/javascript" src="https://freehitcounters.org/count/2pti"></script><br>
 <a href='https://thesiswritingservice.net/'>thesiswritingservice.net</a> <script type='text/javascript' src='https://www.whomania.com/ctr?id=731b03eab315103506d85bbe69e012d291faae39'></script>
					Free Delivery Worldwide
				</h4>

				<a href="#" class="s-text11 t-center">
					Click here for more info
				</a>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 bo2 respon2">
				<h4 class="m-text12 t-center">
					30 Days Return
				</h4>

				<span class="s-text11 t-center">
					Simply return it within 30 days for an exchange.
				</span>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					Store Opening
				</h4>

				<span class="s-text11 t-center">
					Shop open from Monday to Sunday
				</span>
			</div>
		</div>
	</section>

	<!-- Instagram -->
	<section class="instagram p-t-20">
		<div class="sec-title p-b-52 p-l-15 p-r-15">
			<h3 class="m-text5 t-center">
				@ follow us on Instagram
			</h3>
		</div>

		<div class="flex-w">
			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="images/bim/37144103_219139085453583_5972566455072325632_n.jpg" alt="IMG-INSTAGRAM">

				<a href="https://www.instagram.com/p/BoZRxj8FbP7/" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							
						</p>

						<span class="s-text9">
							Art of fashion ❤️❤️❤️
#art #fashion #bimakfashions
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="images/bim/43087031_319217548931054_7426279710702559681_n.jpg" alt="IMG-INSTAGRAM">

				<a href="https://www.instagram.com/p/BoZRxj8FbP7/" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="images/bim/41441984_475971819574063_3208727216693161086_n.jpg" alt="IMG-INSTAGRAM">

				<a href="https://www.instagram.com/p/BoZRxj8FbP7/" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="images/bim/40517463_541545236298077_7425959289132238320_n.jpg" alt="IMG-INSTAGRAM">

				<a href="https://www.instagram.com/p/BoZRxj8FbP7/" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="images/bim/38487940_216076342584953_8194279464503345152_n.jpg" alt="IMG-INSTAGRAM">

				<a href="https://www.instagram.com/p/BoZRxj8FbP7/" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>
		</div>
	</section>

	<!-- Shipping -->
	<section class="shipping bgwhite p-t-62 p-b-46">
		<div class="flex-w p-l-15 p-r-15">
			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					
				</h4>

				<a href="#" class="s-text11 t-center">
					
				</a>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 bo2 respon2">
				<h4 class="m-text12 t-center">
					
				</h4>

				<span class="s-text11 t-center">
					
				</span>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					
				</h4>

				<span class="s-text11 t-center">
					
				</span>
			</div>
		</div>
	</section>

<div class="container">



<div class="row">


<div class="col-sm-5">

</div>

<div class="col-sm-7">





<div class="chat">
<a style="text-decoration:none;" href="#"><div id="sc"><center><img style="float:left;" src="../Bimak/images/icon/logo.png" width="40px" height="20px"/><b>Chat with Bimak Clothing Store</b></center></div></a>
<div id="panel">
  

<script>

$(document).ready(function(){

    var i=0;
    var st;

    $("#sc").click(function(){

         
          i++;

          $("#panel").slideToggle();

          if(i==1)
          {
              $('#div').html("<div class=\"ou\"> Hello Customer. Welcome To Bimak Clothing Store</div><br>");

          }
          

           

        });



});



</script>


<script type="text/javascript">
  
  $(document).ready(function(){

     $("#st").click(function(){

           var str=$("#tt").val();
  
           $("#div").html(str);



     });

  });


</script>

<script>
//wait for page load to initialize script
$(document).ready(function(){

 window.alreadySubmit = false;

  $('#tt').keypress(function(f){

     
     if(f.which == 13 && !alreadySubmit) {
        window.alreadySubmit = true;

    //listen for form submission

    $('form').on('submit', function(e){
      //prevent form from submitting and leaving page
      e.preventDefault();

      // AJAX 
      $.ajax({
            type: "POST", //type of submit
            cache: false, //important or else you might get wrong data returned to you
            url: "process.php", //destination
            datatype: "html", //expected data format from process.php
            data: $('form').serialize(), //target your form's data and serialize for a POST
            success: function(result) { // data is the var which holds the output of your process.php

                // locate the div with #result and fill it with returned data from process.php
               

                $('#div').append("<div class=\"stt\""+result+"</div>");

                $('#tt').val("");

            }
        });
    });
  }
    
       
  
});

   
});

               
</script>

<div id='div' name="output" >
  
  <div id="div1"></div>


</div>
<br>

<!--<script>
"use strict";
function submitForm(oFormElement)
{
  var xhr = new XMLHttpRequest();
  var display=document.getElementById('div');
  xhr.onload = function(){ display.innerHTML=xhr.responseText; }
  xhr.open (oFormElement.method, oFormElement.action, true);
  xhr.send (new FormData (oFormElement));
  return false;
}
</script>-->
<!--<label for="out">Output</label>
<textarea id='div' class="form-control" name="output" rows="10" cols="50"></textarea><br><br>-->

<div class="form-group">
<form action="process.php" id="form" name="f2" method="POST" >

<input type="textarea" id="tt" name="input" placeholder="Ask for Anything" style="position:absolute; bottom:0; height:30px; width:100%; height:50px;" required />


</form>


</div>




</div></div>

</div>

</div>

</div>

<?php include'inc/footer.php';?>
	</body></html>	