<?php
require_once 'header.php';
?>

<div class="container min-vh-100">

<div class="row" style="padding-top: 100px">
    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto my-auto">
        <div class="card card-signin my-5">
            <div class="card-body">
                <h5 class="card-title text-center">Register</h5>
                <form class="form-signin" method="post" action="register.php">
                    <div class="form-group">
                        <label for="email">Username</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Email" required autofocus>
                    </div>
                    <div class="form-group">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="fname" class="form-control" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <label for="lname">Last Name</label>
                        <input type="text" id="lname" name="lname" class="form-control" placeholder="Last Name" required>
                    </div>
                    <div class="form-group">
                        <label for="birthdate">Date of Birth</label>
                        <input type="date" id="birthdate" name="birthdate" class="form-control" placeholder="Date of Birth" required>
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                    </div>
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="Register" value="Register">
                    <hr class="my-4">
                    <div class="text-center">
                        <a href="login.php">Already have an account? Login here!</a><br><br>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
include_once 'footer.php';

if (isset($_POST['Register'])) {
    unset($_POST['Register']);
    $db = get_connection();
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $birthdate = $_POST['birthdate'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $validation = $db->prepare("SELECT * FROM Users WHERE username=?");
    if (!$validation) {
        echo "Error getting result: " . mysqli_error($db);
        die();
    }
    $validation->bind_param('s', $username);
    if ($validation->execute()) {
        //if ($valid_result = $validation->get_result()) {
        if (mysqli_stmt_bind_result($validation, $res_id, $res_user, $res_password, $res_email, $res_bod, $res_fname, $res_lname, $res_utype)) {

            $result_count = 0;

            while ($validation->fetch()) {
                $result_count++;
            }

            //echo $res_id . " " . $res_user . " " . $res_password;
            //die();
            //if (mysqli_num_rows($valid_result) > 0) {
            if ($result_count > 0) {
                $_SESSION["error"] = "Error: username " . $username . " already registered";
                //$resx = $valid_result->fetch_array(MYSQLI_ASSOC);
                header("Location: register.php");
            }
            else {
                echo "Registering user!";
                require("password.php");
                $hash = password_hash($password, PASSWORD_DEFAULT);
                $statement = $db->prepare("INSERT INTO Users(username,password,email,birth_date,first_name,last_name)
                                           VALUES (?,?,?,?,?,?)");
                $statement->bind_param('ssssss', $username, $hash, $email, $birthdate, $fname, $lname);
                if ($statement->execute()) {
                    echo "Registered!";
                    header("Location: login.php");
                }
                // session_unset();
                // session_destroy();
                //header("Location: midterm.php");
            }
        }
        else {
            echo "Error getting result: " . mysqli_error($db);
            die();
        }
    }
    else {
        echo "Error executing query: " . mysqli_error($db);
        die();
    }
}
?>
