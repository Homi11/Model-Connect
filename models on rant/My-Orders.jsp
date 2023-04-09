<%@ page import="models.Users" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Add Tailwind CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
      integrity="sha512-KWahO8OxJxS0hSfhfj6E5V6XDEMQCn1V7J1PSy2skVzD5xI+95V7YxlZZoWgZAZ3q3f2AKcyHjs+WzEe1GjUIw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
      rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://ompublicityjabalpur.com/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
      integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
      crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <title>model connect</title>
    <link rel = "icon" src="1200px-Eo_circle_light-blue_white_letter-s.svg.png" type ="image/x-icon">

    <style>
      .cart-img img{
        height: 45vh;
    }
    @media only screen and (max-width: 450px){
    /*Tablets [601px -> 1200px]*/
    .cart-img img{
        width: 100vw;
        height: auto;
    }
    }
    @media only screen and (max-width: 995px){
    /*Tablets [601px -> 1200px]*/
    .cart-img img{
        /* width: 100vw; */
        height: auto;
    }
    }
    </style>
</head>
<body>
    <!-- Featured Products Section - A -->
    <section class="py-12 px-4">
        <div class="container mx-auto">
          <h2 class="mb-4 text-4xl font-bold leading-tight">Popular Models</h2>
          <div class="-mx-4 flex flex-wrap">
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                <img
                  src="https://user-images.githubusercontent.com/130187245/230713325-c14c4a19-d5e6-481b-8dea-20f3f35d45ae.jpg?v=1670326503/800x600"
                  alt="Product Image" class="w-full"  />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Monika</h3><br>
                  <p class="text-gray-700">Rating </p>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <br>
                  <a href="addcart.do?id=1&name=Running Shoes&price=1200&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                  <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img"  >
                <img
                  src="https://user-images.githubusercontent.com/130187245/230713818-4786be08-6a00-4cb6-98aa-3ce01490441c.jpg"
                  alt="Product Image" class="w-full"  />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">John </h3><br>
                  <p class="text-gray-700">Rating </p>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <br>
                  <a href="addcart.do?id=2&name=Smart Watch&price=1000&category=watch"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                  <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                    
                </div>
              </div>
            </div>
  
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                <img src="https://user-images.githubusercontent.com/130187245/230713376-3fa9065d-cd3b-4d38-9f46-bc57d8b9f9c8.jpg?q=70" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Tanya</h3>
                  <p class="text-gray-700">Rating </p>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <br>
                  <a href="addcart.do?id=3&name=Spark's Men Canvas Shoes&price=769&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                    <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                <img src="https://user-images.githubusercontent.com/130187245/230713523-f318867a-0471-469a-9cfe-e770d21e0eaf.jpg" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Rahul</h3>
                  <p class="text-gray-700">Rating </p>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <br>
                  <a href="addcart.do?id=4&name=Road Runner Shoes&price=499&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                    <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                </div>
              </div>
            </div>
         

        <!--section 2-->
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                  <img
                    src="https://user-images.githubusercontent.com/130187245/230713325-c14c4a19-d5e6-481b-8dea-20f3f35d45ae.jpg?v=1670326503/800x600"
                    alt="Product Image" class="w-full"  />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Monika</h3><br>
                    <p class="text-gray-700">Rating </p>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <br>
                    <a href="addcart.do?id=1&name=Running Shoes&price=1200&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                    <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img"  >
                  <img
                    src="https://user-images.githubusercontent.com/130187245/230713818-4786be08-6a00-4cb6-98aa-3ce01490441c.jpg"
                    alt="Product Image" class="w-full"  />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">John </h3><br>
                    <p class="text-gray-700">Rating </p>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <br>
                    <a href="addcart.do?id=2&name=Smart Watch&price=1000&category=watch"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                    <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                      
                  </div>
                </div>
              </div>
    
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                  <img src="https://user-images.githubusercontent.com/130187245/230713376-3fa9065d-cd3b-4d38-9f46-bc57d8b9f9c8.jpg?q=70" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Tanya</h3>
                    <p class="text-gray-700">Rating </p>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <br>
                    <a href="addcart.do?id=3&name=Spark's Men Canvas Shoes&price=769&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                      <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md cart-img" >
                  <img src="https://user-images.githubusercontent.com/130187245/230713523-f318867a-0471-469a-9cfe-e770d21e0eaf.jpg" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Rahul</h3>
                    <p class="text-gray-700">Rating </p>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <br>
                    <a href="addcart.do?id=4&name=Road Runner Shoes&price=499&category=shoes"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Hire</button></a>
                      <a href="#"><button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">About us</button></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

</body>
</html>