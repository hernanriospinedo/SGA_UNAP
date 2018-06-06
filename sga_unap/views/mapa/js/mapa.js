var map 
$(document).ready(function(){
 Google();
 
});

function SSM(){
    map= new ol.Map({
        target: 'map',
        layers: [
          new ol.layer.Tile({
           // source: new ol.source.MapQuest({layer: 'sat'})
            source: new ol.source.OSM()
          })
        ],
        view: new ol.View({
          center: ol.proj.transform([37.41, 8.82], 'EPSG:4326', 'EPSG:3857'),
          zoom: 4
        })
});

    
}

function Google(){

 //Instancia Mapa de Google
var gmap = new google.maps.Map(document.getElementById('map'), {
  disableDefaultUI: true,
  keyboardShortcuts: false,
  draggable: false,
  disableDoubleClickZoom: true,
  scrollwheel: false,
  streetViewControl: false
});
// Seta la Vista, configurandolo con google
var view = new ol.View({
  // make sure the view doesn't go beyond the 22 zoom levels of Google Maps
  maxZoom: 21
});
view.on('change:center', function() {
  var center = ol.proj.transform(view.getCenter(), 'EPSG:3857', 'EPSG:4326');
  gmap.setCenter(new google.maps.LatLng(center[1], center[0]));
});
view.on('change:resolution', function() {
  gmap.setZoom(view.getZoom());
});

var vector = new ol.layer.Vector({
  source: new ol.source.GeoJSON({
    url: 'data/geojson/countries.geojson',
    projection: 'EPSG:3857'
  }),
  style: new ol.style.Style({
    fill: new ol.style.Fill({
      color: 'rgba(255, 255, 255, 0.6)'
    }),
    stroke: new ol.style.Stroke({
      color: '#319FD3',
      width: 1
    })
  })
});

var olMapDiv = document.getElementById('olmap');
map = new ol.Map({
  layers: [vector],
  interactions: ol.interaction.defaults({
    altShiftDragRotate: false,
    dragPan: false,
    rotate: false
  }).extend([new ol.interaction.DragPan({kinetic: null})]),
  target: olMapDiv,
  view: view
});
view.setCenter([0, 0]);
view.setZoom(1);

olMapDiv.parentNode.removeChild(olMapDiv);
gmap.controls[google.maps.ControlPosition.TOP_LEFT].push(olMapDiv);
    
}