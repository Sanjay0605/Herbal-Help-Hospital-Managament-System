<!DOCTYPE html>
<?php
include ('func.php');
include ('func1.php');
include ('newfunc.php');

$con = mysqli_connect("localhost", "root", "", "myhmsdb");

session_start();

$pid = $_SESSION['pid'];
$username = $_SESSION['username'];
$email = $_SESSION['email'];
$fname = $_SESSION['fname'];
$gender = $_SESSION['gender'];
$lname = $_SESSION['lname'];
$contact = $_SESSION['contact'];

if (isset($_POST['app_search_submit'])) {
    $doctor = $_POST['app_contact'];
    $query = "SELECT * FROM appointmenttb WHERE doctor = '$doctor'";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) == 0) {
        echo "<script>
            alert('No entries found! Please enter valid details'); 
            window.location.href = 'admin-panel1.php#list-doc';
            </script>";
    } else {
        echo "<div class='container-fluid' style='margin-top:50px;'>
              <div class='card'>
              <div class='card-body' style='background-color:#342ac1;color:#ffffff;'>
              <table class='table table-hover'>
              <thead>
              <tr>
              <th scope='col'>First Name</th>
              <th scope='col'>Last Name</th>
              <th scope='col'>Email</th>
              <th scope='col'>Contact</th>
              <th scope='col'>Doctor Name</th>
              <th scope='col'>Consultancy Fees</th>
              <th scope='col'>Appointment Date</th>
              <th scope='col'>Appointment Time</th>
              <th scope='col'>Appointment Status</th>
              </tr>
              </thead>
              <tbody>";

        while ($row = mysqli_fetch_array($result)) {
            $fname = $row['fname'];
            $lname = $row['lname'];
            $email = $row['email'];
            $contact = $row['contact'];
            $doctor = $row['doctor'];
            $docFees = $row['docFees'];
            $appdate = $row['appdate'];
            $apptime = $row['apptime'];
            $appstatus = "";

            if (($row['userStatus'] == 1) && ($row['doctorStatus'] == 1)) {
                $appstatus = "Active";
            } elseif (($row['userStatus'] == 0) && ($row['doctorStatus'] == 1)) {
                $appstatus = "Cancelled by You";
            } elseif (($row['userStatus'] == 1) && ($row['doctorStatus'] == 0)) {
                $appstatus = "Cancelled by Doctor";
            }

            echo "<tr>
                  <td>$fname</td>
                  <td>$lname</td>
                  <td>$email</td>
                  <td>$contact</td>
                  <td>$doctor</td>
                  <td>$docFees</td>
                  <td>$appdate</td>
                  <td>$apptime</td>
                  <td>$appstatus</td>
                  </tr>";
        }
        echo "</tbody></table>
              <center><a href='admin-panel1.php' class='btn btn-light'>Back to your Dashboard</a></center>
              </div></div></div></div>";
    }
}

if (isset($_POST['med-submit'])) {
    $pid = $_SESSION['pid'];
    $medication = $_POST['medication'];
    $condition = $_POST['condition'];
    $allergy = $_POST['allergy'];
    $surgreq = $_POST['surgreq'];

    $data = array(
        'pid' => $pid,
        'medication' => $medication,
        'condition' => $condition,
        'allergy' => $allergy,
        'surgreq' => $surgreq
    );

    $data = json_encode($data);

    $query = "UPDATE patreg SET medical_record = '$data' WHERE pid = '$pid'";

    if (mysqli_query($con, $query)) {
        echo "<script>alert('Your medical record successfully submitted');</script>";
    } else {
        echo "<script>alert('Unable to process your request. Please try again!');</script>";
    }
}
?>