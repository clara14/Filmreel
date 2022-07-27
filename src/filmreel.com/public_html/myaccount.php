<?php
require_once 'header.php';

if (!$loggedin) {
    header("Location: login.php");
}
if (isset($_SESSION['isAdmin'])) {
    header("Location: admin.php");
}

echo "<div class='container min-vh-100'>";

echo <<<_USEROPTIONS
<div class="row no-gutters row-bordered row-border-light" style="padding-top: 100px">
	<div class="col-md-2 pt-0">
	  <div class="list-group list-group-flush account-settings-links" id="myTab">
		<h4 class="list-group-item">$user</h4>
		<a class="list-group-item list-group-item-action active" data-toggle="tab" href="#user-userinfo">User Info</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#user-change-password">Change password</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#user-lists">My Lists</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#user-reviews">Reviews</a>
	  </div>
	</div>
_USEROPTIONS;
?>

	<div class="col-md-10" style="padding-left: 25px">
	  <div class="tab-content">


		<div class="tab-pane fade show active" id="user-userinfo">
		  <hr class="border-light m-0">
          <div class="card-body">
            <h3>User Info</h3>
            <hr class="border-top border-dark">
<?php
$db = get_connection();
$info = $db->prepare("SELECT * FROM Users WHERE account_id=?");
$info->bind_param('i', $userid);
if ($info->execute()) {
	if (mysqli_stmt_bind_result($info, $aid, $auser, $apassword, $aemail, $abod, $afname, $alname, $atype)) {
		if ($info->fetch()) {
		$longdate = date('F j, Y',strtotime($abod));
echo <<<_ADMININFO
			<div class="form-group row">
    			<label for="staticID" class="col-sm-2 col-form-label">Account ID:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticID" value="$aid">
    			</div>
  			</div>
			<div class="form-group row">
    			<label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticEmail" value="$aemail">
    			</div>
  			</div>
			<div class="form-group row">
    			<label for="staticUser" class="col-sm-2 col-form-label">Username:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticUser" value="$auser">
    			</div>
  			</div>
			<div class="form-group row">
    			<label for="staticFname" class="col-sm-2 col-form-label">First Name:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticFname" value="$afname">
    			</div>
  			</div>
			<div class="form-group row">
    			<label for="staticLname" class="col-sm-2 col-form-label">Last Name:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticLname" value="$alname">
    			</div>
  			</div>
			<div class="form-group row">
    			<label for="staticDOB" class="col-sm-2 col-form-label">Date of Birth:</label>
    			<div class="col-sm-8">
      				<input type="text" readonly class="form-control-plaintext" id="staticDOB" value="$longdate">
    			</div>
  			</div>
_ADMININFO;
		}
		
	}
	$info->close();
} else {
	echo "Error executing query: " . mysqli_error($db);
	die();
}
?>
		  </div>

		</div>


		<div class="tab-pane fade" id="user-change-password">
		  <div class="card-body pb-2">


		  </div>
		</div>


<div class="tab-pane fade" id="user-lists">
<div class="card-body pb-2">
    <div class="row mx-auto">
        <h3>My Lists</h3>
    </div>
    <hr class="border-top border-dark">
	<div class="row mx-auto">
    	<div class="dropdown">
  			<button class="btn btn-secondary dropdown-toggle bg-white text-dark mr-3" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		-- Select a List -- 
  			</button>
  			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
<?php
$db = get_connection();
$lists = $db->prepare("SELECT l.list_id, l.list_title FROM List l WHERE l.account_id=?");
$lists->bind_param('i', $userid);
if ($lists->execute()) {
    if (mysqli_stmt_bind_result($lists, $lid, $lname)) {
        while($lists->fetch()) {

echo <<<_RECENT
				<a class="dropdown-item" href="myaccount.php?list_id=$lid">$lname</a>
_RECENT;
        }
    }
    $lists->close();
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}
?>
  			</div>
		</div>
		<a class="btn btn-secondary ml-auto" data-toggle="collapse" href="#listForm" role="button" aria-expanded="false" aria-controls="listForm">
			Create List
		</a>
	</div>
	<div class="row mx-auto">
		<div class="collapse" id="listForm" style="padding-top: 25px">
			<form method="post" action="addList.php">
			<div class="form-inline">
				<input id="listname" name="listname" type="text" placeholder="Enter name of new list"  class="form-control mr-3" required>
				<input type="submit" class="btn btn-primary" name="Submit" value="Submit">
			</div>
			</form>
		</div>
	</div>
<hr class="border-top border-dark">

<?php
if (isset($_GET['list_id'])) {
$listid = $_GET['list_id'];
$db = get_connection();
$listname = $db->prepare("SELECT list_title FROM List WHERE list_id = $listid");
$listname->execute();
if (mysqli_stmt_bind_result($listname, $ltit)) {
	$listname->fetch();
}
$listname->close();

echo <<<_SETUP
<div class="row mx-auto">
	<div class="col text-center">
		<h2>$ltit</h2>
	</div>
</div>
<div class="row mx-auto">
<table class="table">
<thead>
<tr>
	<th scope="col">Film Name</th>
	<th scope="col">Rating</th>
	<th scope="col">Duration (minutes)</th>
	<th scope="col">Genre</th>
</tr>
</thead>
<tbody>
_SETUP;

$db = get_connection();
$stats = $db->prepare("SELECT f.film_id, f.film_name, f.rating, f.duration, f.genre FROM film_stats f INNER JOIN List_Items li ON f.film_id = li.film_id INNER JOIN List l ON li.list_id = l.list_id WHERE l.list_id=?");
$stats->bind_param('i', $listid);
if ($stats->execute()) {
	if (mysqli_stmt_bind_result($stats, $filmid, $filmname, $frating, $fdur, $fgenre)) {
		while ($stats->fetch()) {
echo <<<_TROWS
    <tr>
        <th scope="row"><a class="text-dark" href="film.php?id=$filmid">$filmname</a></th>
        <td>$frating</td>
        <td>$fdur</td>
        <td>$fgenre</td>
    </tr>
_TROWS;
		}
		
	}
	$stats->close();
} else {
	echo "Error executing query: " . mysqli_error($db);
	die();
}


               echo "</tbody>
            </table>
			</div>";
}
?>
		  </div>
		</div>
<?php
$columns = array('review_id', 'film_name', 'score', 'review_date');
$column = isset($_GET['column']) && in_array($_GET['column'], $columns) ? $_GET['column'] : $columns[0];
$sort_order = isset($_GET['order']) && strtolower($_GET['order']) == 'desc' ? 'DESC' : 'ASC';

$up_or_down = str_replace(array('ASC','DESC'), array('up','down'), $sort_order); 
$asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
?>

<div class="tab-pane fade" id="user-reviews">
<div class="card-body pb-2">
<div class="row mx-auto">
<h3>My Reviews</h3>
</div>
<hr class="border-top border-dark">
<table class="table">
<thead>
<tr>
	<th scope="col">
		<a class="text-dark" href="myaccount.php?column=review_id&order=<?php echo $asc_or_desc; ?>">Review ID
		<i class="fas fa-sort<?php echo $column == 'account_id' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="myaccount.php?column=film_name&order=<?php echo $asc_or_desc; ?>">Film Name
		<i class="fas fa-sort<?php echo $column == 'username' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="myaccount.php?column=score&order=<?php echo $asc_or_desc; ?>">Score (10)
		<i class="fas fa-sort<?php echo $column == 'email' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="myaccount.php?column=review_date&order=<?php echo $asc_or_desc; ?>">Review Date
		<i class="fas fa-sort<?php echo $column == 'birth_date' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">Delete</th>
</tr>
</thead>
<tbody>

<?php
$db = get_connection();
$rinfo = $db->prepare("SELECT r.review_id, f.film_name, r.score, r.review_date, r.title, r.description FROM Review r INNER JOIN film_stats f ON r.film_id = f.film_id WHERE r.account_id=$userid ORDER BY " . $column . " " . $sort_order);
if ($rinfo->execute()) {
	if (mysqli_stmt_bind_result($rinfo, $rid, $filmname, $rscore, $rdate, $rtitle, $rdesc)) {
        while ($rinfo->fetch()) {
            $longdate = date('F j, Y',strtotime($rdate));
echo <<<_TROWS
    <tr class="accordian-toggle collapsed" id="accordian1" data-toggle="collapse" data-parent="#accordian1" href="#collapse$rid">
        <th scope="row">$rid</th>
        <td>$filmname</td>
        <td>$rscore</td>
        <td>$longdate</td>
		<td>
 		<form method="post" action="removeReview.php" class="ml-auto">
            <input name="rid" id="rid" value="$rid" type="hidden">
            <input name="url" id="url" value="myaccount.php" type="hidden">
            <input type="submit" class="btn btn-secondary ml-auto" name="Remove" value="Remove">
        </form>
		</td>
    </tr>

    <tr>
    <td></td>
    <td colspan="4">
        <div id="collapse$rid" class="collapse in p-3">
          <div class="row">
            <h6>Review Title: $rtitle</h6>
          </div>
          <div class="row"
            <p><b>Review Description:&nbsp;</b> $rdesc</p>
          </div>
        </div>
    </td>
    </tr>	
_TROWS;
		}
		
	}
	$rinfo->close();
} else {
	echo "Error executing query: " . mysqli_error($db);
	die();
}
?>

                </tbody>
            </table>



		  </div>
		</div>





		  </div>
		</div>

	  </div>
	</div>
  </div>

<script>
    $('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
        localStorage.setItem('activeTab', $(e.target).attr('href'));
    });

    var activeTab = localStorage.getItem('activeTab');
    if(activeTab){
        $('.list-group a[href="' + activeTab + '"]').tab('show');
    }
</script>
<?php
require_once 'footer.php';
?>
