<!DOCTYPE html>
<?php #include("func.php");?>
<html>

<head>
    <title>Recipe Details</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<?php
include("newfunc.php");
if (isset($_POST['recipe_search_submit'])) {
    $rname = $_POST['recipe_name'];
    $query = "SELECT * FROM recipe WHERE rname LIKE '%$rname%' OR ingredient LIKE '%$rname%' ";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) > 0) {
        echo "<div class='container-fluid' style='margin-top:50px;'>
                <div class ='card'>
                    <div class='card-body' style='background-color:#9ACD32;color:#ffffff;'>
                        <table class='table table-hover'>
                            <thead>
                                <tr>
                                    <th scope='col'>Recipe ID</th>
                                    <th scope='col'>Recipe Name</th>
                                    <th scope='col'>Ingredient</th>
                                    <th scope='col'>Procedure</th>
                                    <th scope='col'>Video Link</th>
                                </tr>
                            </thead>
                            <tbody>";
        
        while ($row = mysqli_fetch_array($result)) {
            $rid = $row['rid'];
            $rname = $row['rname'];
            $ingredient = $row['ingredient'];
            $proced = $row['proced'];
            $videolink = $row['videolink'];

            echo "<tr>
                    <td>$rid</td>
                    <td>$rname</td>
                    <td>$ingredient</td>
                    <td>$proced</td>
                    <td>$videolink</td>
                  </tr>";
        }

        echo "</tbody></table><center><a href='admin-panel.php' class='btn btn-light'>Back to dashboard</a></div></center></div></div></div>";
    } else {
        echo "<script> alert('No entries found!'); 
              window.location.href = 'admin-panel.php#lisp-pres';</script>";
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