<?php 
require 'includes/snippet.php';
    require 'includes/db-inc.php';
include "includes/header.php"; 

if(isset($_POST['submit'])) {

    $reg = sanitize(trim($_POST['reg_no']));
    $password = sanitize(trim($_POST['password']));
    $password2 = sanitize(trim($_POST['password2']));
    $username = sanitize(trim($_POST['username']));
    $email = sanitize(trim($_POST['email']));
    $dept = sanitize(trim($_POST['dept']));
    $books = sanitize(trim($_POST['num_books']));
    $money = sanitize(trim($_POST['money_owed']));
    $phone = sanitize(trim($_POST['phone']));
    $name = sanitize(trim($_POST['name']));
    $filename =''; 



    // echo $filename;

   if ($password == $password2) {
      $sql = "INSERT INTO students( reg_no, password, username, email, dept, numOfBooks, moneyOwed, phoneNumber, name)
 VALUES ('$reg', '$password', '$username', '$email', '$dept', '$books', '$money', '$phone', '$name' ) ";

      $query = mysqli_query($conn, $sql);
      $error = false;
      if($query){
       $error = true;
      }
      else{
        echo "<script>alert('Not Registered successful!! Try again.');
                    </script>"; 
      }
   }
   else {
    echo  "<script>alert('Password mismatched!')</script>";
   }
    

}

?>

<div class="container">
    <?php include "includes/nav.php"; ?>
    
    

              <?php if(isset($error)===true) { ?>
        <div class="alert alert-success alert-dismissable">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <strong>Record Added Successfully!</strong>
            </div>
            <?php } ?>
        <div class="container  col-lg-9 col-md-11 col-sm-12 col-xs-12 col-lg-offset-2" style="margin-top: 20px">
        <div class="jumbotron login2 col-lg-10 col-md-11 col-sm-12 col-xs-12">
            <p class="page-header" style="text-align: center; color:#FFFFFF;font-weight:bolder;">ADD STUDENTS</p>
			

            <div class="container form">
                <form class="form-horizontal" role="form" action="addstudent.php" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="Username" class="col-sm-2 control-label" style="text-align:center;color:white;">FULL NAME</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name" placeholder="Full name" id="name" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">Reg No</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="reg_no" placeholder="Reg Number" id="password" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">DEPT</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="dept" placeholder="Department" id="Address" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">EMAIL</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="email" placeholder="Email" id="password" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">USERNAME</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="username" placeholder="Username" id="password" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">PASSWORD</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password" placeholder="password" id="password" required>
                        </div>      
                    </div>
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">CONFRIM PASSWORD</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password2" placeholder="Confirm password" id="password" required>
                        </div>      
                    </div>
                     
                     <input type="hidden" class="form-control" name="num_books" placeholder="books" id="password" required value="null">
                     <input type="hidden" class="form-control" name="money_owed" placeholder="Money" id="password" required value="null">
                    <div class="form-group">
                        <label for="Password" class="col-sm-2 control-label" style="text-align:center;color:white;">PHONE NUMBER</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="phone" placeholder="phone" id="phone" required>
                        </div>      
                    </div>     
                         
                    
                     
                    
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button  class="btn btn-info col-lg-12" data-toggle="modal" data-target="#info" name="submit">
                                ADD MEMBER
                            </button>
                            
                        </div>
                    </div>

                    
                </form>
            </div>
			
        </div>
        
    </div>
</div>  
</div>
</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
 	window.onload = function () {
		var input = document.getElementById('name').focus();
	}
 </script>
</body>
</html>