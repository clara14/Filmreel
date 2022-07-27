<?php
require_once 'header.php';
?>

<div class="container min-vh-100">

<?php

$button = $_GET['submit'];
$search = $_GET['search'];

$db = get_connection();
$results = $db->prepare("SELECT * FROM Film WHERE film_name LIKE '%$search%'");
if (!$results) {
    echo "Error getting result: " . mysqli_error($db);
    die();
}
if ($results->execute()) {

	$results->store_result();
    $numrows = $results->num_rows;
echo <<<_NOTE
<hgroup class="mb-20" style="padding-top: 100px">
    <h1>Search Results</h1>
	<h2 class="lead"><strong class="text-danger">$numrows</strong> results were found for the search for <strong class="text-danger">'$search'</strong></h2>								
</hgroup>
<hr class="border-top border-dark"> 
_NOTE;

    if (mysqli_stmt_bind_result($results, $fid, $filmname, $rdate, $dur, $rating, $img, $syn)) {
        $result_count = 0;

        while ($results->fetch()) {
            $smallsyn = substr($syn, 0, 600);
            $longdate = date('F j, Y',strtotime($rdate));

echo <<<_RESULTS1

<div class="row mb-3">
	<div class="col-3 df-image-search">
		<a href="#">
			<figure>
				<div class="figure-img text-center">
					<img src="$img" onerror="//via.placeholder.com/2700x4000?text=$filmname" alt="Lorem ipsum" class="img-fluid rounded img-thumbnail shadow" loading="lazy" style="max-width: 100%; max-height: 100%; height: auto"/>
				</div>
									
			</figure>
		</a>
	</div>
    <div class="col-9 df-text-search">
    <div class="row">
        <div class="col-7">
        <a href="film.php?id=$fid"><h4 class="text-truncate">$filmname</h4></a>
        </div>
_RESULTS1;

if ($loggedin) {
    if (!$admin) {
    echo <<<_ADDTO
        <div class="dropdown">
            <button type="button" class="btn btn-primary dropdown-toggle" id="userlists"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Add To List</button>
            <div class="dropdown-menu" aria-labelledby="userlists">
_ADDTO;
$lists = $db->prepare("SELECT l.list_id, l.list_title FROM List l WHERE l.account_id=?");
$lists->bind_param('i', $userid);
if ($lists->execute()) {
    if (mysqli_stmt_bind_result($lists, $lid, $lname)) {
        while($lists->fetch()) {

echo <<<_RECENT
            <form method="post" action="addtoList.php">
                <input name="fid" id="fid" value="$fid" type="hidden">
                <input name="url" id="url" value="search.php?search=$search" type="hidden">
                <input name="lid" id="lid" value="$lid" type="hidden">
                <input type="submit" class="dropdown-item btn" name="Add" value="$lname">
            </form>
_RECENT;
        }
    }
    $lists->close();
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}
echo <<<_ADDTO3
            </div>
        </div>
_ADDTO3;
    }
}

echo <<<_RESULTS2
    </div>
    <div class="row" style="padding-left: 15px">
        <span class="df-text-search-icon text-secondary">
			<i class="fas fa-calendar fa-fw mr-2"></i>
			<span>Release Date: $longdate</span>
		</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="df-text-search-icon text-secondary">
            <i class="fas fa-eye"></i>
			<span>Rated: $rating</span>
        </span>
    </div>
        <hr class="border-top border-light">
		<p class="df-text-search-content"><i>Synopsis:</i> $smallsyn</p>
	</div>
</div>
<hr>
_RESULTS2;

        }
    $results->close();
    } else {
        echo "Error executing query: " . mysqli_error($db);
        die();
    }
}
require_once 'footer.php';
?>
