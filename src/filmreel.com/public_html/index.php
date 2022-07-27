<?php
require_once 'header.php';
?>

<div class="jumbotron jumbotron-fluid" style="height: 100vh; min-height: 500px; background: url(https://i.ibb.co/J3ngB3K/banner.png); background-position: center center; background-size: cover; background-repeat: no-repeat;">
<div class="container h-100">
    <div class="row h-100 align-items-center">
      <div class="col-12 text-center">
      </div>
    </div>
  </div>
</div>

<div class="container min-vh-100">

<div class="row" style="padding-top:">
    <div class="col-12">
        <div class="row mx-auto">
            <h2>Recent Releases</h2>
        </div>
        <hr class="border-top border-dark">
        <div class="row mx-auto">

<?php
$db = get_connection();
$recent = $db->prepare("SELECT film_id, film_name, image FROM film_stats ORDER BY release_date DESC LIMIT 5");
if ($recent->execute()) {
    if (mysqli_stmt_bind_result($recent, $fid, $filmname, $img)) {
        while($recent->fetch()) {
            
echo <<<_RECENT
       		<div class="col-sm-3 col-md-2 mx-auto">
				<div class="thumbail">
					<a href="film.php?id=$fid"><img class="img-thumbnail" src="$img" alt="$filmname"></a>
					<div class="caption text-center">
						<a class="text-dark" href="film.php?id=$fid"><p class="text-truncate">$filmname</p></a>
					</div>
				</div>
            </div> 
_RECENT;

        }
    } 
    $recent->close();
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}  
?>

		</div>
    </div>
</div>

<div class="row" style="padding-top: 50px; padding-bottom: 10px">
    <div class="col-12">
        <div class="row mx-auto">
            <h2>Most Popular</h2>
        </div>
        <hr class="border-top border-dark">
        <div class="row mx-auto">

<?php
$db = get_connection();
$popular = $db->prepare("SELECT film_id, film_name, image FROM film_stats ORDER BY reviews DESC LIMIT 5");
if ($popular->execute()) {
    if (mysqli_stmt_bind_result($popular, $fid, $filmname, $img)) {
        while($popular->fetch()) {
            
echo <<<_RECENT
       		<div class="col-sm-3 col-md-2 mx-auto">
				<div class="thumbail">
					<a href="film.php?id=$fid"><img class="img-thumbnail" src="$img" alt="$filmname"></a>
					<div class="caption text-center">
						<a class="text-dark" href="film.php?id=$fid"><p class="text-truncate">$filmname</p></a>
					</div>
				</div>
            </div> 
_RECENT;

        }
    } 
    $popular->close();
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}  
?>

		</div>
    </div>
</div>
<?php
include_once 'footer.php';

?>
