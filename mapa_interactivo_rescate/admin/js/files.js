// función antes
function _(el) {
    return document.getElementById(el);
  }
  
  function uploadFileAntes() {
    var file = _("file1").files[0];
    var formdata = new FormData();
    var id = document.getElementById("idAntes").value;
    var tipo = document.getElementById("evAntes").value;
    // variable del name file
    formdata.append("file", file);
    formdata.append("id", id);
    formdata.append("tipo", tipo);
    // variables post
    var ajax = new XMLHttpRequest();
    ajax.upload.addEventListener("progress", progressHandler, false);
    ajax.addEventListener("load", completeHandler, false);
    ajax.addEventListener("error", errorHandler, false);
    ajax.addEventListener("abort", abortHandler, false);
    ajax.open("POST", "query/upload.php"); 
    
    // http://www.developphp.com/video/JavaScript/File-Upload-Progress-Bar-Meter-Tutorial-Ajax-PHP
    //use file_upload_parser.php from above url

    //ARCHIVO CON EL PROCEDIMIENTO PARA MOVER ELUMENTO AL SERVIDOR
    ajax.send(formdata);

    function progressHandler(event) {
    //   queryPhotos();
        _("loaded_n_total").innerHTML = "Cargado " + event.loaded + " bytes de " + event.total;
        var percent = (event.loaded / event.total) * 100;
        _("progressBar").value = Math.round(percent);
        _("status").innerHTML = Math.round(percent) + "% subido... espere un momento";
      }
      
      function completeHandler(event) {
        _("status").innerHTML = event.target.responseText;
        _("progressBar").value = 0; //wil clear progress bar after successful upload
          _("file1").style.display='none';
          _("progressBar").style.display='none';
      }
      
      function errorHandler(event) {
        _("status").innerHTML = "Fallo en la subida";
      }
      
      function abortHandler(event) {
        _("status").innerHTML = "Fallo en la subida";
      }
      
  }
  
  function uploadFileDespues() {
    var file = _("file2").files[0];
    var formdata = new FormData();
    var id = document.getElementById("idDespues").value;
    var tipo = document.getElementById("evDespues").value;
    // variable del name file
    formdata.append("file", file);
    formdata.append("id", id);
    formdata.append("tipo", tipo);
    // variables post
    var ajax = new XMLHttpRequest();
    ajax.upload.addEventListener("progress", progressHandler, false);
    ajax.addEventListener("load", completeHandler, false);
    ajax.addEventListener("error", errorHandler, false);
    ajax.addEventListener("abort", abortHandler, false);
    ajax.open("POST", "query/upload.php"); 
    
    // http://www.developphp.com/video/JavaScript/File-Upload-Progress-Bar-Meter-Tutorial-Ajax-PHP
    //use file_upload_parser.php from above url

    //ARCHIVO CON EL PROCEDIMIENTO PARA MOVER ELUMENTO AL SERVIDOR
    ajax.send(formdata);

    function progressHandler(event) {
    //   queryPhotos();
        _("loaded_n_total2").innerHTML = "Cargado " + event.loaded + " bytes de " + event.total;
        var percent = (event.loaded / event.total) * 100;
        _("progressBar2").value = Math.round(percent);
        _("status2").innerHTML = Math.round(percent) + "% subido... espere un momento";
      }
      
      function completeHandler(event) {
        _("status2").innerHTML = event.target.responseText;
        _("progressBar2").value = 0; //wil clear progress bar after successful upload
          _("file2").style.display='none';
          _("progressBar2").style.display='none';
      }
      
      function errorHandler(event) {
        _("status2").innerHTML = "Fallo en la subida";
      }
      
      function abortHandler(event) {
        _("status2").innerHTML = "Fallo en la subida";
      }
      
  }