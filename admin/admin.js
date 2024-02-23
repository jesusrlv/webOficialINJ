// LOGIN
$(document).ready(function() {
    $('#pwdForm').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: 'acceso.php',
            dataType:'json',
            data: $(this).serialize(),
            success: function(response)
            {
                var jsonData = JSON.parse(JSON.stringify(response));
                var success = jsonData.success;
                // user is logged in successfully in the back-end
                // let's redirect
                console.log(success);
                if (success == 1){
                    // location.href = 'my_profile.php';
                    Swal.fire({
                        icon: 'success',
                        title: 'Usuario Admin',
                        text: 'Credenciales correctas',
                        footer: 'JCN'
                    }).then(function(){window.location='dashboard.html';});
                }
                else {
                    // alert('Invalid Credentials!');
                    Swal.fire({
                        icon: 'error',
                        title: 'Datos incorrectos',
                        text: 'Credenciales incorrectas',
                        footer: 'JCN'
                    }).then(function(){window.location='index.html';});
                    // });
                }
           }
       });
     });
});

// tabla de secciones

function tablaSecciones(){
    $.ajax({
        type: "POST",
        url: 'secciones.php',
        dataType:'html',
        success: function(response)
        {
            $('#secciones').html(response);
        }
    });
    
}