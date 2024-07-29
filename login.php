<?php
session_start();

// if ((isset($_SESSION['auth']) && $_SESSION['auth'] === true)) {
// 	header("Location: admin.php");
// 	exit();
// }

// 	if (isset($_GET['access'])) {
// 		$alert_user = true;
// 	}

require 'includes/snippet.php';
require 'includes/db-inc.php';
include "includes/header.php";

// Error check

// 					echo"<br>";
// 					echo mysqli_errno($conn);

if(isset($_POST['submit'])){
	$username = sanitize(trim($_POST['username']));
	$password = sanitize(trim($_POST['password']));

	$sql_admin = "SELECT * from admin where username = '$username' and  password = '$password' ";
	$query = mysqli_query($conn, $sql_admin);
	// echo mysqli_error($conn);
	if(mysqli_num_rows($query) > 0){

				while($row = mysqli_fetch_assoc($query)){
					$_SESSION['auth'] = true;
					$_SESSION['admin'] = $row['username'];
					}
					if ($_SESSION['auth'] === true) {
				header("Location: admin.php");
				exit();
					}
	}

		else{
			$sql_stud = "SELECT * from students where username='$username' and password = '$password'";
				$query = mysqli_query($conn, $sql_stud);
				$row = mysqli_fetch_assoc($query);
				if($row['username'] == $username && $row['password'] == $password){
					$_SESSION['student-username'] = $row['username'];
					$_SESSION['student-name'] = $row['name'];
					$_SESSION['student-reg'] = $row['reg_no'];
						header("Location:studentportal.php");
					}
					else {
						echo"<div class='alert alert-danger alert-dismissable'>
						<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						<strong style='text-align: center'> Login Failed.  Please check your details.</strong>
				  </div>";
					}




			}


}


?>

<link rel="stylesheet" href="css/login.css" />

<div class="container">

	
		
			<!-- <div class="alert alert-success alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				  <strong>Warning!</strong> Better check yourself, you're not looking too good.
			</div> -->
			

			<div class="container">
				<div class="loginBox"> <img class="user" src="images/awkum.png" height="100px" width="100px">
        <h3>Please Provide the details</h3>
        <form action="login.php" method="post">
            <div class="inputBox"> <input id="uname" type="text" name="username" id="username" placeholder="Username"> <input type="password" name="password" id="password" placeholder="Password"> </div> <input type="submit" name="submit" value="Login">
        </form> 
        
      
        
    </div>
			</div>
		</div>
	</div>

</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/sweetalert.min.js"> </script>
	<?php if (isset($alert_user)) { ?>
	<script type="text/javascript">
		swal("Oops...", "You are not allowed to view this page directly...!", "error");
	</script>
	<?php } ?>

</body>
</html>
