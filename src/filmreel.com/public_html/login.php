<?php
require_once 'header.php';

if($loggedin) {
    if (isset($_SESSION['isAdmin'])) {
        header("Location: admin.php");
    } else {
        header("Location: myaccount.php");
    }
}
?>    
<div class="container min-vh-100">

<div class="row" style="padding-top: 100px">
	<div class="col-sm-9 col-md-7 col-lg-5 mx-auto my-auto">
    	<div class="card card-signin my-5">
        	<div class="card-body">
            	<h5 class="card-title text-center">Sign In</h5>
            	<form class="form-signin" method="post" action="login.php">
              		<div class="form-group">
                		<label for="username">Username</label>
                		<input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
              		</div>
              		<div class="form-group">
                		<label for="password">Password</label>
                		<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
              		</div>
              		<input class="btn btn-lg btn-primary btn-block" type="submit" name="Login" value="Login">
              		<hr class="my-4">
					<div class="text-center">
						<a href="register.php">No account? Register here</a><br><br>
            		</div>
				</form>
			</div>
        </div>
	</div>
</div>

<?php
include_once 'footer.php';

// If true, user is trying to log in
if (isset($_POST['Login'])) {
    unset($_POST['Login']);
    $db = get_connection();
    $username = $_POST['username'];
    $password = $_POST['password'];
    $validation = $db->prepare("SELECT * FROM Users WHERE username=?");
    $validation->bind_param('s', $username);
    if ($validation->execute()) {
        //if ($valid_result = $validation->get_result()) {
        if (mysqli_stmt_bind_result($validation, $res_id, $res_user, $res_password, $res_email, $res_bod, $res_fname, $res_lname, $res_utype)) {
            $result_count = 0;

            while ($validation->fetch()) {
                $result_count++;
            }

            if ($result_count == 0) {
                $_SESSION["error"] = "Error: the username and/or password combination was not found";
                header("Location: login.php");
            } else {
                require("password.php");
                $isGood = password_verify($password, $res_password);
                if ($isGood) {
                    $_SESSION["user_id"] = $res_id;
                    $_SESSION["user"] = $res_user;
                    $_SESSION["usertype"] = $res_utype;
                    if ($res_utype == 1) {
                        $_SESSION["isAdmin"] = true;
                    }
                    header("Location: index.php");
                } else {
                    $_SESSION["error"] = "Error: the username and/or password combination was not found";
                    header("Location: login.php");
                }
            }
        } else {
            echo "Error getting result: " . mysqli_error($db);
            die();
        }
    } else {
        echo "Error executing query: " . mysqli_error($db);
        die();
    }
}

?>
