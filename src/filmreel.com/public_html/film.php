<?php
require_once 'header.php';
?>

<div class="container min-vh-100">

<?php

$fid = $_GET['id'];

$db = get_connection();
$film = $db->prepare("SELECT * FROM Film WHERE film_id=?");
if (!$film) {
    echo "Error getting result: " . mysqli_error($db);
    die();
}
$film->bind_param('i', $fid);
if ($film->execute()) {

	$film->store_result();
    $numrows = $film->num_rows;

    if (mysqli_stmt_bind_result($film, $fid, $filmname, $rdate, $dur, $rating, $img, $syn)) {
        if ($film->fetch()) {
            $longdate = date('F j, Y',strtotime($rdate));
        }

    } else {
        echo "Error binding results: " . mysqli_error($db);
        die();
    }
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}
$film->close();

echo <<<_FILMCARD
<div class="row mb-3" style="padding-top: 100px">
    <div class="col-4">
        <figure>
            <div class="figure-img text-center">
                 <img src="$img" onerror="//via.placeholder.com/2700x4000?text=$filmname" alt="Lorem ipsum" class="img-fluid rounded img-thumbnail shadow" loading="lazy" style="max-width: 100%; max-height: 100%; height: auto"/>
            </div>
        </figure>
    </div>
    <div class="col-8">
        <div class="row mx-auto" style="">
            <h1>$filmname</h1>
_FILMCARD;

if ($loggedin) {
    if (!$admin) {
    echo <<<_ADDTO
        <div class="dropdown ml-auto">
            <button type="button" class="btn btn-primary dropdown-toggle ml-auto" id="userlists"
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


echo <<<_FILMCARD2
        </div>
        <hr>
        <div class="row text-secondary" style="padding-left: 15px">
            <h5>Release Date: $longdate</h5>
        </div>
        <div class="row text-secondary" style="padding-left: 15px">
            <h5>Rating: $rating</h5>
        </div>
_FILMCARD2;

$genre = $db->prepare("select g.name from Genre g inner join Film_Genre fg on g.genre_id = fg.genre_id inner join Film f on fg.film_id = f.film_id where f.film_id=?;");
if (!$genre) {
    echo "Error getting result: " . mysqli_error($db);
    die();
}
$genre->bind_param('i', $fid);
if ($genre->execute()) {

	$genre->store_result();
    $numrows = $genre->num_rows;
   
    if (mysqli_stmt_bind_result($genre, $gname)) {
        echo "<div class='row text-secondary' style='padding-left: 15px'>";
        echo "<h5>Genre:";
        while ($genre->fetch()) {
            echo " $gname";
        }
        echo "</h5>";
        echo "</div>";

    } else {
        echo "Error binding results: " . mysqli_error($db);
        die();
    }
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}
$genre->close();


echo <<<_FILMCARD2
        <div class="row text-secondary" style="padding-left: 15px">
            <h5>Duration: $dur minutes</h5>
        </div>
        <hr class="border-top border-light">
        <div class="row text-secondary" style="padding-left: 15px">
            <p><h5>Synopsis: </h5>$syn</p>
        </div>
    </div>
</div>
_FILMCARD2;

echo <<<_RHEADER
<hr class="border-top border-dark">
<div class="row mb-3" style="padding-top: 20px; padding-bottom: 20px">
<div class="col-12">
    <div class="row justify-content-center">
        <h2>Reviews for $filmname</h2>
    </div>
    <hr class="border-top border-light">
_RHEADER;

if ($user === 'Guest') {
echo <<<_GHEAD
    <div class="row justify-content-center">
        <p><a href="login.php">Log in</a> or <a href="register.php">Register</a> to start writing reviews</p>
    </div> 
_GHEAD;
} else {
echo <<<_REVFORM
<div class="row justify-content-center">
	<div class="col-md-12">
                <form method="post" action="addReview.php">
                        <legend class="text-center header">Leave a Review</legend>
                        <input name="fid" id="fid" value="$fid" type="hidden">
                        <div class="form-group">
                            <div class="col-md-8 mx-auto">
                                <input id="title" name="title" type="text" placeholder="Review Title" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 mx-auto">
								<select class="form-control" id="score" name="score" required>
									<option value="" disabled selected>--Select List--</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 mx-auto">
                                <textarea class="form-control" id="description" name="description" placeholder="Share your thoughts on the film" rows="7" required></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <input type="submit" class="btn btn-primary btn-lg" name="Submit" value="Submit">
                            </div>
                        </div>
                </form>
        </div>
    </div>
_REVFORM;

}

echo "</div></div>";

$reviews = $db->prepare("select * from Review r where r.film_id=? ORDER BY review_date DESC");
if (!$reviews) {
    echo "Error getting result: " . mysqli_error($db);
    die();
}
$reviews->bind_param('i', $fid);
if ($reviews->execute()) {

	$reviews->store_result();
    $numrows = $reviews->num_rows;
   
    if (mysqli_stmt_bind_result($reviews, $rid, $aid, $fid, $rtitle, $rscore, $rdesc, $revdate)) {
        while ($reviews->fetch()) {
            $longdate = date('F j, Y',strtotime($revdate));

            $ruser = $db->prepare("select u.username from Users u where u.account_id=?");
            if (!$ruser) {
                echo "Error getting result: " . mysqli_error($db);
                die();
            }
            $ruser->bind_param('i', $aid);
            if ($ruser->execute()) {
                if (mysqli_stmt_bind_result($ruser, $rname)) {
                    $ruser->fetch();
                } 
            } else {
                echo "Error executing ruser query: " . mysqli_error($db);
                die();
            }
            $ruser->close();

echo <<<_REVIEWS1
<hr>
<div class="row mb-3">
<div class="col-12">
    <div class="row" style="padding-left: 10px; padding-right: 20px">
        <div class="col-8">
            <h4>$rtitle</h4>
        </div>
_REVIEWS1;

if ($aid === $userid || $admin === true) {
    echo <<<_DELREV
        <form method="post" action="removeReview.php" class="ml-auto">
            <input name="rid" id="rid" value="$rid" type="hidden">
            <input name="url" id="url" value="film.php?id=$fid" type="hidden">
            <input type="submit" class="btn btn-secondary ml-auto" name="Remove" value="Remove">
        </form>            
_DELREV;
}

echo <<<_REVIEWS2
    </div>
    <div class="row text-secondary" style="padding-left: 25px">
        <p>posted by $rname on $longdate</p> 
    </div>    
    <div class="row" style="padding-left: 25px">
        <p><b>Score:</b> $rscore/10</p> 
    </div>    
    <div class="row" style="padding-left: 25px">
        <p>$rdesc</p> 
    </div>    
</div>
</div>
_REVIEWS2;

        }

    } else {
        echo "Error binding results: " . mysqli_error($db);
        die();
    }
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}
$reviews->close();


require_once 'footer.php';

?>
