<!DOCTYPE html>
<html lang="en">
<head>  
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link rel = "stylesheet" type = "text/css" href = "../../static/css/app.css" />

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.6/angular.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.6/angular-animate.js"></script>    
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.5.0/ui-bootstrap-tpls.min.js"></script>

  <script src="../../static/js/app.js"></script>
  <script src="../../static/js/service/user_service.js"></script>
  <script src="../../static/js/controller/user_controller.js"></script>
</head>

<body ng-app="pizzeria" ng-controller="PizzeriaController as ctrl" id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#band">PIZZAS</a></li>
        <li><a href="#tour">PRECIOS</a></li>
        <li><a href="#contact">CONTACTO</a></li>                
      </ul>
    </div>
  </div>
</nav>

<div class="container"> 
     <div style="height:550px; width: 100%;" uib-carousel active="active" interval="ctrl.myInterval" no-wrap="ctrl.noWrapSlides"> 
      <div uib-slide ng-repeat="slide in ctrl.slides track by slide.id" index="$index">
        <img ng-src="{{slide.imageUrl}}" style="margin:auto; height:550px; width:100%;">    
      </div>
    </div>
</div>

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

<div id="tour" class="">
 <div class="container">

  <div class="col-md-6">
    <h2 class="">Precios</h2>  
    <div class="table-responsive">  
    <table style="width: auto;" class="table table-condensed table-hover">
      <thead>
        <tr>
          <th class="col-md-8">Nombre</th>
          <th class="col-md-2">Chica</th>
          <th class="col-md-2">Grande</th>
        </tr>
      </thead>
      <tbody>
        <tr ng-repeat="precio in ctrl.precios track by precio.id" index="$index">
          <td><a ng-click="ctrl.showDetail(precio)">{{precio.nombre}}</a></td>
          <td>{{precio.chica}}</td>
          <td>{{precio.grande}}</td>
        </tr>        
      </tbody>
    </table>
    </div>
  </div>

  <div ng-if="ctrl.showPriceDetail" class="col-md-6" style="padding-top: 2cm; text-align:center;">  
     <p class="text-center">{{ctrl.priceShown.descripcion}} </p>
  </div>

</div>
</div>

<div id="contact" class="container">
 <h3 class="text-center">Contacto</h3>  
  <div class="row test">
    <div class="col-md-6">
      <p>Nosotros</p>
      <p>Hola HolaHolaHolaHola HolaHolaHolaHola Email: mail@mail.com
      Somos SomosSomosSomosSomosSomos Somos Somos Email: mail@mail.com
      Email: mail@mail.com Email: mail@mail.com Email: mail@mail.com</p> 
    </div>  
    <div class="col-md-6">
      <p>Sugerencias? Contanos!</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Lanús, Bs. As., Argentina</p>
      <p><span class="glyphicon glyphicon-phone"></span>Tel.: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p> 
    </div>  
  </div>
</div>

<!-- Add Google Maps -->
<div id="googleMap"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(-34.7177498,-58.3724496);
var mapProp = {center:myCenter, zoom:17, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDWlv6XsuM04GbViUqiPEplMP0n5rfNTP4&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
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