/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var map;
function initialize() {
    
  var options = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)
  };
  var map = new
       google.maps.Map(document.getElementById('map'),options);

var marker = new google.maps.Marker({position :{ lat:-34, lng: 151},map:map});
}
google.maps.event.addDomListener(window, 'load', initialize);