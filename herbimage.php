<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Herb Search</title>
    <style>
        body {
            font-family: Georgia, serif;
            margin: 0;
            padding: 0;
            background-image: linear-gradient(to right, #9ACD32, #BDB76B);
        }
        .container {
            width: 700px;
            margin: 50px auto;
            padding: 20px;
            height:500px;
            background-color: #FFFACD;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
     
        .container h1 {
            color: #8B4513; /* Set the color to brown */
        }
        
        h1, h2 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button[type="submit"] {
            background-color: #8B4513;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        .contain{
            background-color: #8B4513;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top:100px;
            width: 100%;
        }

        .contain:hover {
            background-color: #9ACD32;
        }
        p {
            margin-top: 20px;
        }

        button[type="submit"]:hover {
            background-color: #9ACD32;
        }
        p {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Herb Search</h1>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            
            <input type="text" id="herb" name="herb" placeholder="Enter Local Herb Name* ">
            <button type="submit" name="submit" style=" font-family: Georgia, serif;">Search</button>
        </form>

        <?php
if (isset($_POST['submit'])) {
    // Read CSV file
    $file = 'herbimage.csv';
    $herb = strtolower($_POST['herb']); // Convert input to lowercase for case-insensitive comparison
    $found = false;

    if (($handle = fopen($file, 'r')) !== false) {
        // Read headers
        $headers = fgetcsv($handle);

        // Search for the herb
        while (($data = fgetcsv($handle)) !== false) {
            if (strpos(strtolower($data[3]), $herb) !== false) { // Case-insensitive comparison
                $found = true;
                echo '<h2>Herb: ' . $data[1] . '</h2>';
                echo '<p><strong>Herb Image and Uses:</strong> <a href="' . $data[4] . '" target="_blank">' . $data[4] . '</a></p>';
                break;
            }
        }

        fclose($handle);

        if (!$found) {
            echo '<p>Herb not found.</p>';
        }
    } else {
        echo '<p>Error reading file.</p>';
    }
}
?>

         <button class="contain" onclick="window.location.href='admin-panel.php';">Go to Dashboard</button>
    </div>
    <h2> Information taken from Digital Archives of Botanical Survey of India</h2>

</body>
</html>
