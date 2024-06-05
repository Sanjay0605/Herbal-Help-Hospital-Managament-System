<!DOCTYPE html>
<?php #include("func.php");?>
<html>

<head>
    <title>Herb Details</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
wt
<body>
<?php
include("newfunc.php");
if (isset($_POST['herb_search_submit'])) {
    $ingredient = $_POST['herb_name'];
    $query = "SELECT * FROM herb WHERE ingredient LIKE '%$ingredient%' OR localname LIKE '$ingredient%' OR sciname LIKE '%$ingredient%' ";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) > 0) {
        echo "<div class='container-fluid' style='margin-top:50px;'>
                <div class ='card'>
                    <div class='card-body' style='background-color:#9ACD32;color:#ffffff;'>
                        <table class='table table-hover'>
                            <thead>
                                <tr>
                                    <th scope='col'>Herb ID</th>
                                    <th scope='col'>Ingredient</th>
                                    <th scope='col'>Local Name</th>
                                    <th scope='col'>Scientific Name</th>
                                </tr>
                            </thead>
                            <tbody>";
        
        while ($row = mysqli_fetch_array($result)) {
            $hid = $row['hid'];
            $ingredient = $row['ingredient'];
            $localname = $row['localname'];
            $sciname = $row['sciname'];

            echo "<tr>
                    <td>$hid</td>
                    <td>$ingredient</td>
                    <td>$localname</td>
                    <td>$sciname</td>
                  </tr>";
        }

        echo "</tbody></table><center><a href='admin-panel.php' class='btn btn-light'>Back to dashboard</a></div></center></div></div></div>";
    } else {
        echo "<script> alert('No entries found!'); 
              window.location.href = 'admin-panel.php#lisk-pres';</script>";
    }
}
?>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
        integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>
</body>

</html>