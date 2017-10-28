function deleteSong(id){

  var artistId = $("h1").attr("id")
  var buttonId = $("button").attr("id")

  $.ajax({
   type: "DELETE",
   url: artistId + "/songs/" + id + ".json",
   contentType: "application/json",
   dataType: "json"
 })
 .done(function(data) {
     $('li[id="'+id+'"]').remove();
     $('button[id="'+buttonId+'"]').remove();
   });
 }


function addSong() {
  var name = $("#add").val();
  var artistId = $("h1").attr("id")


  $.ajax({
   type: "POST",
   url: artistId + "/songs.json" ,
   data: JSON.stringify({name: name}),
   contentType: "application/json",
   dataType: "json"
 })
 .done(function(data) {
   console.log(data);

   var songId = data.id

   var listItem = $('<ul class="song-group"></ul>')
      .attr('id', songId)
      .append($('<li>').append(songId))



   });
 }
