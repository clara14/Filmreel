<?php
require_once 'header.php';

if (!$loggedin) {
    header("Location: login.php");
}
if (!isset($_SESSION['isAdmin'])) {
    header("Location: index.php");
}

echo "<div class='container min-vh-100'>";

echo <<<_ADMINOPTIONS
<div class="row no-gutters row-bordered row-border-light" style="padding-top: 100px">
	<div class="col-md-2 pt-0">
	  <div class="list-group list-group-flush account-settings-links" id="myTab">
		<h4 class="list-group-item">$user</h4>
		<a class="list-group-item list-group-item-action active" data-toggle="tab" href="#admin-admininfo">Admin Info</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#admin-change-password">Change password</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#admin-statistics">Statistics</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#admin-users">Users</a>
		<a class="list-group-item list-group-item-action" data-toggle="tab" href="#admin-films">Films</a>
	  </div>
	</div>
_ADMINOPTIONS;
?>

	<div class="col-md-10" style="padding-left: 25px">
	  <div class="tab-content">


		<div class="tab-pane fade show active" id="admin-admininfo">
		  <hr class="border-light m-0">
          <div class="card-body">
            <h3>Admin Info</h3>
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


		<div class="tab-pane fade" id="admin-change-password">
		  <div class="card-body pb-2">


		  </div>
		</div>

<?php
$columns = array('id', 'username', 'age', 'lists', 'films_per_list', 'reviews', 'avg_score');
$column = isset($_GET['column']) && in_array($_GET['column'], $columns) ? $_GET['column'] : $columns[0];
$sort_order = isset($_GET['order']) && strtolower($_GET['order']) == 'desc' ? 'DESC' : 'ASC';

$up_or_down = str_replace(array('ASC','DESC'), array('up','down'), $sort_order); 
$asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
?>

<div class="tab-pane fade" id="admin-statistics">
<div class="card-body pb-2">
<h3>User Statistics</h3>
<hr class="border-top border-dark">
<table class="table">
<thead>
<tr>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=id&order=<?php echo $asc_or_desc; ?>">User ID
		<i class="fas fa-sort<?php echo $column == 'id' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=username&order=<?php echo $asc_or_desc; ?>">Username
		<i class="fas fa-sort<?php echo $column == 'username' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=age&order=<?php echo $asc_or_desc; ?>">Age
		<i class="fas fa-sort<?php echo $column == 'age' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col"
		><a class="text-dark" href="admin.php?column=lists&order=<?php echo $asc_or_desc; ?>">Lists
		<i class="fas fa-sort<?php echo $column == 'lists' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=films_per_list&order=<?php echo $asc_or_desc; ?>">Films per List
		<i class="fas fa-sort<?php echo $column == 'films_per_list' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=reviews&order=<?php echo $asc_or_desc; ?>">Reviews
		<i class="fas fa-sort<?php echo $column == 'reviews' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=avg_score&order=<?php echo $asc_or_desc; ?>">Avg Score
		<i class="fas fa-sort<?php echo $column == 'avg_score' ? '-' . $up_or_down : ''; ?>"></i></a></th>
</tr>
</thead>
<tbody>

<?php
$db = get_connection();
$stats = $db->prepare("SELECT * FROM user_stats ORDER BY " . $column . " " . $sort_order);
if ($stats->execute()) {
	if (mysqli_stmt_bind_result($stats, $id, $uname, $uage, $ulists, $fpl, $reviews, $avg)) {
		while ($stats->fetch()) {
echo <<<_TROWS
    <tr>
        <th scope="row">$id</th>
        <td>$uname</td>
        <td>$uage</td>
        <td>$ulists</td>
        <td>$fpl</td>
        <td>$reviews</td>
        <td>$avg</td>
    </tr>
_TROWS;
		}
		
	}
	$stats->close();
} else {
	echo "Error executing query: " . mysqli_error($db);
	die();
}
?>

                </tbody>
            </table>
		  </div>
		</div>
<?php
$columns = array('account_id', 'username', 'email', 'birth_date', 'first_name', 'last_name');
$column = isset($_GET['column']) && in_array($_GET['column'], $columns) ? $_GET['column'] : $columns[0];
$sort_order = isset($_GET['order']) && strtolower($_GET['order']) == 'desc' ? 'DESC' : 'ASC';

$up_or_down = str_replace(array('ASC','DESC'), array('up','down'), $sort_order); 
$asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
?>

<div class="tab-pane fade" id="admin-users">
<div class="card-body pb-2">
<h3>Filmreel Users</h3>
<hr class="border-top border-dark">
<table class="table">
<thead>
<tr>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=account_id&order=<?php echo $asc_or_desc; ?>">User ID
		<i class="fas fa-sort<?php echo $column == 'account_id' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=username&order=<?php echo $asc_or_desc; ?>">Username
		<i class="fas fa-sort<?php echo $column == 'username' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=email&order=<?php echo $asc_or_desc; ?>">Email
		<i class="fas fa-sort<?php echo $column == 'email' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=birth_date&order=<?php echo $asc_or_desc; ?>">Date of Birth
		<i class="fas fa-sort<?php echo $column == 'birth_date' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=first_name&order=<?php echo $asc_or_desc; ?>">First Name
		<i class="fas fa-sort<?php echo $column == 'first_name' ? '-' . $up_or_down : ''; ?>"></i></a></th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=last_name&order=<?php echo $asc_or_desc; ?>">Last Name
		<i class="fas fa-sort<?php echo $column == 'last_name' ? '-' . $up_or_down : ''; ?>"></i></a></th>
</tr>
</thead>
<tbody>

<?php
$db = get_connection();
$uinfo = $db->prepare("SELECT account_id, username, email, birth_date, first_name, last_name FROM Users WHERE user_type=0 ORDER BY " . $column . " " . $sort_order);
if ($uinfo->execute()) {
	if (mysqli_stmt_bind_result($uinfo, $aid, $username, $uemail, $udob, $fname, $lname)) {
        while ($uinfo->fetch()) {
            $longdate = date('F j, Y',strtotime($udob));
echo <<<_TROWS
    <tr>
        <th scope="row">$aid</th>
        <td>$username</td>
        <td>$uemail</td>
        <td>$longdate</td>
        <td>$fname</td>
        <td>$lname</td>
    </tr>
_TROWS;
		}
		
	}
	$uinfo->close();
} else {
	echo "Error executing query: " . mysqli_error($db);
	die();
}
?>

                </tbody>
            </table>



		  </div>
		</div>



		<div class="tab-pane fade" id="admin-films">
		  <div class="card-body pb-2">
			<div class="row">
            	<h3>Films</h3>
			</div>
            <hr class="border-top border-dark">

<?php
$columns = array('film_id','film_name','release_date','duration','rating','reviews','avg_score','listings');
$column = isset($_GET['column']) && in_array($_GET['column'], $columns) ? $_GET['column'] : $columns[0];
$sort_order = isset($_GET['order']) && strtolower($_GET['order']) == 'desc' ? 'DESC' : 'ASC';

$up_or_down = str_replace(array('ASC','DESC'), array('up','down'), $sort_order); 
$asc_or_desc = $sort_order == 'ASC' ? 'desc' : 'asc';
?>
<div class="table-responsive">
<table class="table">
<thead>
<tr>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=film_id&order=<?php echo $asc_or_desc; ?>">ID
		<i class="fas fa-sort<?php echo $column == 'film_id' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=film_name&order=<?php echo $asc_or_desc; ?>">Name
		<i class="fas fa-sort<?php echo $column == 'film_name' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=release_date&order=<?php echo $asc_or_desc; ?>">Release Date
		<i class="fas fa-sort<?php echo $column == 'release_date' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=duration&order=<?php echo $asc_or_desc; ?>">Duration (minutes)
		<i class="fas fa-sort<?php echo $column == 'duration' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=rating&order=<?php echo $asc_or_desc; ?>">Rating
		<i class="fas fa-sort<?php echo $column == 'rating' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=reviews&order=<?php echo $asc_or_desc; ?>">Reviews
		<i class="fas fa-sort<?php echo $column == 'reviews' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=avg_score&order=<?php echo $asc_or_desc; ?>">Avg Score
		<i class="fas fa-sort<?php echo $column == 'avg_score' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">
		<a class="text-dark" href="admin.php?column=listings&order=<?php echo $asc_or_desc; ?>">Listings
		<i class="fas fa-sort<?php echo $column == 'listings' ? '-' . $up_or_down : ''; ?>"></i></a>
	</th>
	<th scope="col">Genre</th>
</tr>
</thead>
<tbody>

<?php
$db = get_connection();
$finfo = $db->prepare("SELECT * FROM film_stats ORDER BY " . $column . " " . $sort_order);
if ($finfo->execute()) {
	if (mysqli_stmt_bind_result($finfo, $fid, $filmname, $rdate, $dur, $rating, $img, $revs, $avgs, $lists,$genre, $syn)) {
        while ($finfo->fetch()) {
            $longdate = date('F j, Y',strtotime($rdate));
echo <<<_TROWS1
    <tr class="accordian-toggle collapsed" id="accordian1" data-toggle="collapse" data-parent="#accordian1" href="#collapse$fid">
        <th scope="row">$fid</th>
        <td>$filmname</td>
        <td>$longdate</td>
        <td>$dur</td>
        <td>$rating</td>
        <td>$revs</td>
        <td>$avgs</td>
        <td>$lists</td>
		<td>$genre</td>

    </tr>

	<tr>
	<td></td>
	<td colspan="8">
		<div id="collapse$fid" class="collapse in p-3">
		  <div class="row">
			<h6>Image URL: $img</h6>
		  </div>
		  <div class="row"
			<p><b>Synopsis:</b> $syn</p>
		  </div>
		</div>
	</td>
	</tr>
_TROWS1;
		}
		
	}
	$finfo->close();
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
