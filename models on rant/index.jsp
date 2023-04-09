<%@ page import="models.Users" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

  <body style="padding: 0;margin: 0;;">
    <!-- nav bar -->
    <nav class="flex items-center justify-between bg-white p-4 shadow-md">
      <a href="index.jsp" class="text-xl font-bold text-gray-900" style="font-family: Brush Script MT;"><img src="https://user-images.githubusercontent.com/130187245/230723344-b3757905-db0f-4e29-b5ee-e5b425867509.png" alt="" ></a>
      <ul class="flex">
        <li><a href="http://localhost:8080/models%20on%20rant/My-Orders.jsp" class="mx-4 text-gray-600 hover:text-gray-800"
            style="font-family: cursive;">Models</a></li>
        <li><a href="cart.jsp" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;"><span class="badge badge-danger">${ cart_list.size()}</span></a></li>
      </ul>
      <% Users user=(Users)session.getAttribute("user"); %>
        <% if(user !=null) { %>
          <div class="dropdown">
            <button class="btn bg-primary text-white dropdown-toggle mr-5" type="button" data-toggle="dropdown"
              aria-expanded="false">
              <%= user.getName() %>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="del.do">Delete Account</a>
              <a class="dropdown-item" href="logout.do">LogOut</a>
              <a class="dropdown-item" href="https://forms.gle/tM1vzaEXE1tNiiq88">Feedback</a>
            </div>
          </div>

          <% } else { %>
            <button class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 hover:text"><a
                href="login-outer.jsp">
                Sign In</a></button>
            <% } %>

         <% String success = (String)session.getAttribute("success"); %>

         <% if(success == "yes") { %>

         

           <script>
                Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'LogIn Successfully',
                showConfirmButton: false,
                timer: 1500
                })
          </script>

      <% } session.removeAttribute("success"); %>

    </nav>

    <!-- banner section -->
    <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="https://user-images.githubusercontent.com/130187245/230760942-693c5ead-1413-4ba1-b4cd-585d1af49a28.jpg">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://user-images.githubusercontent.com/130187245/230760959-9521ab21-61c1-4e9d-88c0-1d53faaa0ecb.jpg"
            alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://user-images.githubusercontent.com/130187245/230760981-22e9da40-6cb5-48c8-bfc8-3fbb5fa40682.jpg"
            alt="Third slide">
        </div>
        <!-- <div class="carousel-item">
          <img class="d-block w-100" src="#"
          " alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="#"
            alt="Third slide">
        </div> -->
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Banner Section -->
    <section class="bg-blue-100 py-12 px-4 mt-10">
      <div class="container mx-auto flex flex-wrap items-center">
        <div class="w-full md:w-1/2 mb-10">
          <h1 class="mb-4 text-4xl font-bold leading-tight" style="font-family: cursive;">Looking for a chance to shine?
          </h1>
          <p class="mb-8 text-lg text-gray-700" style="font-family: cursive;">Step into the spotlight and make your modeling dreams a reality!<br>
            We believe in your potential. Join  us and unleash it
          </p>
          <a href="javascript:void(0) class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 rounded-full"> About us </a>
        </div>
        <div class="w-full md:w-1/2">
          <img
            src="https://user-images.githubusercontent.com/130187245/230703532-9947ea56-7629-4639-84fd-5c50c78b42fd.jpg"
            alt="Product Image" class="mx-auto" />
        </div>
      </div>
    </section>

    <!-- cetegories -->

    <!-- Product List Section: Categories Grid -->
    <div
      style="display: flex;justify-content: center; align-items: baseline;margin-top: 10vh; margin-bottom: -15vh; font-size: 60px;font-family: cursive;">
      Popular Categories for Hiring
    </div>
    <div class="bg-white">
      <div class="container xl:max-w-7xl mx-auto px-4 py-16 lg:px-8 lg:py-32">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
          <a href="javascript:void(0)"
            class="block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://user-images.githubusercontent.com/130187245/230704220-18f66a53-d8d3-412a-ac68-92849f55b01d.jpg" alt="Product Image"
              class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-black">
                Photo Shoot 
              </div>
            </div>
          </a>
          <a href="javascript:void(0)"
            class="block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://user-images.githubusercontent.com/130187245/230709497-3de41c26-ac3a-45ff-b759-2fddd5f3228a.jpg" alt="Product Image"
              class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-black">
                Social Media Influencer 
              </div>
            </div>
          </a>
          <a href="javascript:void(0)"
            class="sm:col-span-2 md:col-span-1 block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://user-images.githubusercontent.com/130187245/230704204-7301ac76-7c0f-44f9-91fe-5646f3fb45bc.jpg"
              alt="Product Image" class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-black">
                Advertise & Printables
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <!-- END Product List Section: Categories Grid -->

          <!-- get in touch section -->
          <form action="https://formsubmit.co/aman031298@gmail.com" method="post" style="margin-top: -15vh; margin-bottom: 10vh;">
            <div class="container-xxl py-5">
              <div class="container">
                <div class="row g-5">
                  <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="fs-5 fw-medium text-primary">Stay connected</p>
                    <h1 class="display-5 mb-4">Contact US for more information</h1>
                    <p>If you have any query please contact us, Usually we respond under 24 hours.</p>
                    <a class="d-inline-flex align-items-center rounded overflow-hidden border border-primary"
                      href="javascript:void(0)">
                      <span class="btn-lg-square bg-primary" style="width: 55px; height: 55px;">
                        <i class="fa fa-phone-alt text-white"></i>
                      </span>
                      <span class="fs-5 fw-medium mx-4">+91 9090909090</span>
                    </a>
                  </div>

                  <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <h2 class="mb-4">Contact Now</h2>
                    <input type="hidden" name="_subject" value="Swift Cart Enquiery mail">
                    <input type="hidden" name="_captcha" value="false">
                    <div class="row g-3">
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" name="name" id="name" placeholder="Your Name"
                            required>
                          <label for="name"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="email" class="form-control" name="email" id="mail" placeholder="Your Email"
                            required>
                          <label for="mail"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" name="phone" id="mobile" placeholder="Your Mobile"
                            required>
                          <label for="mobile"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a message here" name="message" id="message"
                            style="height: 130px"></textarea>
                          <label for="message"></label>
                        </div>
                      </div>
                      <div class="col-12 text-center">
                        <button class="btn btn-primary w-100 py-3 text-white" type="submit">Submit Now</button>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </form>
          <!-- footer starts   -->

          <div>
            <div class="bg-gray-800 p-3 space-y-10 md:grid grid-cols-2 md:-mt-6 lg:grid-cols-4"
              style=" width: 110.5%;margin-left: -4.8vw; margin-bottom: -3vh;">
              <div class="w-1/2 md:ml-24 md:mt-9 md:w-3/4">
                <h1 class="text-orange-500 text-xl font-medium">Address</h1> <br />
                <p class="text-gray-300/80 text-base"> Demo Street <br />
                  Jabalpur 482002 [M.P] <br /> India </p> <br />
                <p class="text-gray-200/80 text-base "> <strong
                    class="tracking-wide text-orange-500 font-normal">Phone:</strong> +91 9090909090 </p>
                <p class="text-gray-200/80 text-base "> <strong
                    class="tracking-wide text-orange-500 font-normal">Email:</strong> email@gmail.com </p>
              </div>
              <div class="leading-9 md:w-2/4 md:order-3 md:ml-24">
                <h1 class="text-orange-500 text-xl font-medium tracking-[0.030rem]"> Useful Links</h1>
                <ul class="mt-2 text-gray-300/80">
                  <li> <i class="fa fa-chevron-right text-orange-500"></i> <a href="javascript:void(0)" class="hover:text-blue-400" style="text-decoration: none;">
                      Home</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-500"></i> <a href="javascript:void(0)" class="hover:text-blue-400" style="text-decoration: none;">
                      About Us</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-500"></i> <a href="javascript:void(0)" class="hover:text-blue-400" style="text-decoration: none;">
                      Terms of service</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-500"></i> <a href="javascript:void(0)" class="hover:text-blue-400" style="text-decoration: none;">
                      Privacy policy</a> </li>
                </ul>
              </div>
              <div class="leading-9 md:w-3/4 md:order-4">
                <h1 class="text-orange-500 text-xl font-medium tracking-[0.030rem]"> Our model </h1>
                <ul class="mt-2 text-gray-300/80">
                  <li> <i class="fa fa-chevron-right text-orange-500"></i> <a href="javascript:void(0)" class="hover:text-blue-400" style="text-decoration: none;">
                      Hiring</a> </li>
                </ul>
              </div>
              <div class="md:order-2 lg:order-last">
                <h1 class="text-orange-500 text-xl font-medium tracking-[0.030rem]"> Join Our Newsletter </h1> <br />
                <p class="text-gray-300/80 w-3/5 leading-7 mb-5 md:w-3/4"> Join us now for more future updated before everyone. </p>
                  <!--  <input type="email" placeholder="Enter E-mail Here"
                  class="py-1 px-2 placeholder-gray-400 rounded-tl-xl focus: outline-none focus:border border-orange-600 md:w-1/2 lg:w-3/5" /> -->
              </div>
            </div>
            <div
              class="bg-gray-900 flex flex-col text-center pt-3 space-y-8 md:flex-row md:justify-between md:space-y-0"
              style="width: 110.5%; margin-left: -4.8vw; margin-bottom: -25vh;height:10px;">
            </div>
            <script src="https://use.fontawesome.com/03f8a0ebd4.js"></script>
            <script src="https://cdn.tailwindcss.com"></script>


  </body>

  </html>