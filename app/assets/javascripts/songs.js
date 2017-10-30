function deleteAllSongs(){

  var songs = $(".song-group").children();
  songs.each(function() {
    deleteSong($(this).attr("id"));

    $(".deleteButton").remove();

 })

 }

function deleteSong(id){

  var artistId = $("h1").attr("id")
  // var buttonId = $("button").attr("id")

  $.ajax({
   type: "DELETE",
   url: artistId + "/songs/" + id + ".json",
   contentType: "application/json",
   dataType: "json"
 })
 .done(function(data) {
     $('li[id="'+id+'"]').remove();
    //  $('button[id="'+buttonId+'"]').remove();
     $(".deleteButton[id="+id+"]").remove();

    //  event.target.remove();

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

   var songId = data.id;
   var songName = data.name;

   $("ul").append('<li id="'+songId+'">'+songName+'</li><button onclick="deleteSong('+songId+')" id="'+songId+'" class="deleteButton">Delete Song</button>');



   });
 }
