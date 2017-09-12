<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <style>
body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
    position: relative;
}

.navbar {
    font-family: Montserrat, sans-serif;
}
   
  .container {
      padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
   }
	.person:hover {
	    border-color: #f1f1f1;
	}

	.carousel-inner img {
    /*-webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */    
   /* margin: auto;*/
	}
	.carousel .item{
    height: 450px;
	}

	.carousel-caption h3 {
	    color: #fff !important;
	}

	@media (max-width: 600px) {
	    .carousel-caption {
	        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
	    }
	}

	 .header-fixed {
    width: 50% 
}

.header-fixed > thead,
.header-fixed > tbody,
.header-fixed > thead > tr,
.header-fixed > tbody > tr,
.header-fixed > thead > tr > th,
.header-fixed > tbody > tr > td {
    display: block;
}

.header-fixed > tbody > tr:after,
.header-fixed > thead > tr:after {
    content: ' ';
    display: block;
    visibility: hidden;
    clear: both;
}

.header-fixed > tbody {
    overflow-y: auto;
    height: 150px;
}

.header-fixed > tbody > tr > td,
.header-fixed > thead > tr > th {
    width: 33%;
    float: left;
}

.center_div{
    margin: 0 auto;
    width:80% /* value of your choice which suits your alignment */
}

#googleMap {
    width: 100%; /* Span the entire width of the screen */
    height: 400px; /* Set the height to 400 pixels */
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%); /* Change the color of the map to black and white */
}

/* Add a dark background color with a little bit see-through */ 
.navbar {
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity:0.9;
}

/* Add a gray color to all navbar links */
.navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
}

/* On hover, the links will turn white */
.navbar-nav li a:hover {
    color: #fff !important;
}

/* The active link */
.navbar-nav li.active a {
    color: #fff !important;
    background-color:#29292c !important;
}

/* Remove border color from the collapsible button */
.navbar-default .navbar-toggle {
    border-color: transparent;
}

/* Dropdown */
.open .dropdown-toggle {
    color: #fff ;
    background-color: #555 !important;
}

/* Dropdown links */
.dropdown-menu li a {
    color: #000 !important;
}

/* On hover, the dropdown links will turn red */
.dropdown-menu li a:hover {
    background-color: red !important;
}

/* Add a dark background color to the footer */
footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
}

footer a {
    color: #f5f5f5;
}

footer a:hover {
    color: #777;
    text-decoration: none;
}
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home">HOME</a></li>
        <li><a href="#band">BAND</a></li>
        <li><a href="#tour">TOUR</a></li>
        <li><a href="#contact">CONTACT</a></li>        
      </ul>
    </div>
  </div>
</nav>

<!-- CARROUSEL -->
<div id="home" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="https://u.tfstatic.com/restaurant_photos/479/66479/169/612/pizzeria-da-gennaro-vista-sala-5d811.jpg" alt="New York">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>The atmosphere in New York is lorem ipsum.</p>
      </div> 
    </div>

    <div class="item">
      <img src="https://ak5.picdn.net/shutterstock/videos/8009707/thumb/1.jpg" alt="Chicago">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago - A night we won't forget.</p>
      </div> 
    </div>

    <div class="item">
      <img src="http://exploresrilanka.lk/wp-content/uploads/2013/10/22-copy.jpg" alt="Los Angeles">
      <div class="carousel-caption">
        <h3>LA</h3>
        <p>Even though the traffic was a mess, we had the best time.</p>
      </div> 
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- PIZZAS -->
<div id="band" class="container text-center">
  <h3>NUESTRAS PIZZAS</h3>
  <p><em>Excelente calidad!</em></p>
  <p>Presiona en cada imagen para ver su descripcion<p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p><strong>Name</strong></p><br>
      <a href="#demo" data-toggle="collapse">
      <img src="http://www.homemadepizza.tips/wp-content/uploads/2016/04/Margherita-pizza-256x256.jpg" class="img-circle person" alt="Random Name">
      </a>
	     <div id="demo" class="collapse">
	      <p>Guitarist and Lead Vocalist</p>
	      <p>Loves long walks on the beach</p>
	      <p>Member since 1988</p>
   		 </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Name</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
      <img src="http://2.bp.blogspot.com/-O5fA6unXRoI/Tp8iikazZ3I/AAAAAAAADkM/Ywx4KWi4Pk0/s1600/PIZZAS+A+LA+PIEDRA%252C+PAPAS%252C+ALCAHUCILES%252C+PANCETA+011.JPG" class="img-circle person" alt="Random Name">
      </a>
      	 <div id="demo2" class="collapse">
	      <p>Guitarist and Lead Vocalist</p>
	      <p>Loves long walks on the beach</p>
	      <p>Member since 1988</p>
   		 </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Name</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
      <img src="https://i.pinimg.com/originals/1e/d6/cb/1ed6cb1a42a90a9dcf8355c87ae874cc.jpg" class="img-circle person"  alt="Random Name">
      </a>
      	  <div id="demo3" class="collapse">
	      <p>Guitarist and Lead Vocalist</p>
	      <p>Loves long walks on the beach</p>
	      <p>Member since 1988</p>
   		 </div>
    </div>
  </div>
</div>

<div id="tour" class="col-md-8 col-md-offset-4">
<div class="table-responsive">
<table class="table table-hover header-fixed">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
       <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
       <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
       <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
     
    </tbody>
  </table>
  </div>
  </div>

  <div id="contact" class="container">
  <h3 class="text-center">Contacto</h3>  
  <div class="row test">
    <div class="col-md-8 col-md-offset-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p> 
    </div>   
  </div>
</div>

<div id="googleMap"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(41.878114, -87.629798);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>

<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p> 
</footer>

<script>
$(document).ready(function(){
    // Initialize Tooltip
    $('[data-toggle="tooltip"]').tooltip(); 
})
</script>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

  // Make sure this.hash has a value before overriding default behavior
  if (this.hash !== "") {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){

      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
      });
    } // End if 
  });
})
</script>

</body>
</html>
