<?php
session_start();

$hostname = "localhost";
$username = "root";
$password = "";
$dbname = "zentao";

$conn = mysqli_connect($hostname, $username, $password, $dbname);

$id = $_GET['id'];

?>
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stylee.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="CSS/task.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
    <link href='css/css.sass' rel='stylesheet' type='text/css'>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <title>TO DO LIST</title>
  </head>

  <body style="font-family: 'Poppins';">

    <header class="header_area">
      <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container box_1620">
            <h1 class="navbar-brand logo_h" style="color: white; font-family: 'Poppins Medium'; font-size: x-large;">pharmacie</h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
             
            </div> 
          </div>
        </nav>
      </div>
    </header>


    <section class="home_banner_area">
      <div class="container box_1620">
        <div class="banner_inner d-flex align-items-center">
          <div class="banner_content">
            <div class="media" style="margin-top: -10%; margin-bottom: -10%;">
              <div class="d-flex" style="width: 55%;">
              </div>
             
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


    <section style="margin-top:15%">
      <h2 style="margin-top:5%;text-align:center;"> <br> </h2>
      <div class="todolist" style="margin-top:3%;">
        <div class="column">
          <h1 class="title">pharmacie
            <a href='<?php echo "form_phara.php?id=".$id ?>'><i> ajoute +</i></a>
          </h1>
          <?php
            $posts = "SELECT * FROM phara WHERE ville_id = $id";
            $all_posts = mysqli_query($conn, $posts);
            while ($row = mysqli_fetch_array($all_posts)) {
              echo "
              <div class='item'>
              <table>
                  <thead>
                    <tr>
                      <th>Nom</th>
                      <th>tel</th>
                      <th>mail</th>
                      <th>address</th>
                      <th>day</th>
                    </tr>
                  </thead>

                  <tr>
                  <td> ".$row['name']."</td>  
                  <td> ".$row['tel']."</td>  
                  <td> ".$row['mail']."</td>  
                  <td> ".$row['addrsse']."</td>  
                  <td> ".$row['day']."</td>  
                  <a href='update_phara.php?id=".$row['phara_id'].'&t_id='.$row['ville_id']."' style='float:right'><i class='fa fa-edit'></i></a> <br> <br>
                  <a href='deleteTask.php?id=".$row['phara_id']. '&t_id='.$row['ville_id']."' style='float:right'><i class='fa fa-trash'></i></a>
                </tr>
                
                
              </div>";
            }
          ?>
        </div>
      </div>
    </section>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dragula/3.7.2/dragula.min.js"></script>
    <script>
      var d = dragula({
        moves: function (el, cont, handle) {
          return handle.className !== 'title'
        }
      })
      var cs = document.querySelectorAll('.column')
      for (var i in cs) {
        d.containers.push(cs[i])
      }
    </script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>

</html>
