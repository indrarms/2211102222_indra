<?php
// Include database connection file
include_once("config.php");
 
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $category = $_POST['category'];
    $publisher = $_POST['publisher'];
    $count = $_POST['count'];
 
    // Upload gambar
    $target_dir = "picture/";
    $target_file = $target_dir . basename($_FILES["picture"]["name"]);
    move_uploaded_file($_FILES["picture"]["tmp_name"], $target_file);
 
    $picture = $_FILES['picture']['name'];
 
    // Insert data ke database
    $result = mysqli_query($mysqli, "INSERT INTO library(picture, name, category, publisher, count) VALUES('$picture', '$name', '$category', '$publisher', '$count')");
 
    // Redirect ke index.php setelah berhasil tambah data
    header("Location: index.php");
}
?>
 
<html>
<head>
    <title>Add New User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
 
<body>
    <br>
    <div class="container">
        <a href="index.php" class="btn btn-secondary">Home</a>
        <br /><br />
 
        <form action="add.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="picture">Picture</label>
                <input type="file" class="form-control-file" id="picture" name="picture" required>
            </div>
            <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
                <label>Category</label>
                <input type="text" class="form-control" name="category" required>
            </div>
            <div class="form-group">
                <label>Publisher</label>
                <input type="text" class="form-control" name="publisher" required>
            </div>
            <div class="form-group">
                <label>Count</label>
                <input type="number" class="form-control" name="count" required>
            </div>
            <button type="submit" name="submit" class="btn btn-success">Add User</button>
        </form>
    </div>
</body>
</html>