<?php
// Include database connection file
include_once("config.php");
 
// Fetch all library data from database
$result = mysqli_query($mysqli, "SELECT * FROM library ORDER BY id DESC");
?>
 
<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
 
<body>
    <br>
    <div class="container">
        <button type="button" class="btn btn-primary" onclick="location.href='add.php'">Add New Book</button><br /><br />
 
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Picture</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Publisher</th>
                    <th scope="col">Count</th>
                    <th scope="col">Update</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                while ($user_data = mysqli_fetch_array($result)) {
                    echo "<tr>";
                    echo "<td>" . $no . "</td>";
                    $no++;
 
                    // Menampilkan gambar
                    echo "<td><img src='picture/" . $user_data['picture'] . "' width='100'></td>";
                    echo "<td>" . $user_data['name'] . "</td>";
                    echo "<td>" . $user_data['category'] . "</td>";
                    echo "<td>" . $user_data['publisher'] . "</td>";
                    echo "<td>" . $user_data['count'] . "</td>";
                    echo "<td>
                        <a href='edit.php?id=$user_data[id]'>Edit</a> | 
                        <a href='delete.php?id=$user_data[id]' onclick=\"return confirm('Are you sure you want to delete this item?')\">Delete</a>
                    </td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>