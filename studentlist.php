<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </head>
  <body>
    <style media="screen">
      #calc{
        cursor: pointer;
      }

      tr{
      	color:green;
      }
    </style>
 <?php

$id = $_GET['id'];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "notes";

function mysql_get_var($query,$y=0){
       $conn = mysqli_connect('localhost', 'root', '', 'notes');
       $res = $conn->query($query);
       $row = mysqli_fetch_array($res);
       mysqli_free_result($res);
       $rec = $row[$y];
       return $rec;
}

// Connection  a la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT id, name,sname FROM student WHERE id={$id}";

$result = $conn->query($sql);

if ($result->num_rows >= 0) {
    
    while($row = $result->fetch_assoc()) {
        //echo "id: " . $row["id"]. " - Name: " . $row["name"]. "<br>";
        $Name = ucfirst($row["name"])." ". ucfirst($row["sname"]);
    }
} else {
    echo "Aucun résultats ";
}
$math = mysql_get_var("SELECT notes FROM math WHERE id_student={$id}");
$uml = mysql_get_var("SELECT notes FROM uml WHERE id_student={$id}");
$html = mysql_get_var("SELECT notes FROM html WHERE id_student={$id}");
$php = mysql_get_var("SELECT notes FROM php WHERE id_student={$id}");
$plp= mysql_get_var("SELECT notes FROM plannification_projet WHERE id_student={$id}");
//$Name = ucfirst($Name);
echo "
<title>notes - {$Name}</title>
<br/>
<h1>{$Name}</h1>
<br/>
<table class='table table-bordered table-dark'>
<thead class='thead-dark'>
<tr>
<th scope='col'>#</th>
<th scope='col'>Math</th>
<th scope='col'>uml</th>
<th scope='col'>html</th>
<th scope='col'>php</th>
<th scope='col'>plannification_projet</th>
<th scope='col'>calcul moyenne</th>
<button type='button' onclick='moyenne({$math},{$plp},{$html},{$php},{$uml});'class='btn btn-info'>Calcul</button>
<a href='index.php'>
		<button type='button' class='btn btn-link'>Accueil</button>
</a>
</tr>
</thead>

<tbody>";

echo "
<tr>
<th scope='row'>{$id}</th>
<td id='math'>{$math}</td>
<td id='uml'>{$uml}</td>
<td id='html'>{$html}</td>
<td id='php'>{$php}</td>
<td id='plp'>{$plp}</td>
<td id='mean_field'></td>
</tr>
";




$conn->close();
?>
<script type="text/javascript">
  function moyenne(math,plp,html,php,uml){
    var moyenne = (math +plp   + html + php + uml) / 5;

   
    $("#mean_field").text(moyenne);
   
   if (moyenne>=13)
   {
   
   	alert("L'étudiant doit poursuivre ses efforts");
    /* tentative de rajouter une appréciation  de l'étudiant sur la page releve de notes
    var table = document.getElementById("table"); 
   	var rem =document.createElement("div");
    rem.textContent= "L'étudiant doit poursuivre ses efforts";
    table.appendChild(rem);*/
   }
  if(moyenne<=8)
  {
 		
 	alert("L'étudiant rencontre des difficultés");
 	/* 	
    var table = document.getElementById("table"); 
  	var rem =document.createElement("div");
    rem.textContent= "L'étudiant rencontre des difficultés";
    table.appendChild(rem);*/
	}
    
  console.log("Voici quelques appréciations");
    /* vérification de moyenne
    console.log(moyenne);
	console.log(typeof(moyenne));*/ 
	}  

	


</script>
	
  </body>
</html>
