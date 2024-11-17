<?php
include 'koneksi.php';

if (isset($_POST['submit'])) { 
    
    $email = mysqli_real_escape_string($koneksi, $_POST['email']); 
    $message = mysqli_real_escape_string($koneksi, $_POST['feedback']); 

    $query = "INSERT INTO form (email, message, created_at)
            VALUES ('$email', '$message', CURRENT_TIMESTAMP)";

    if (mysqli_query($koneksi, $query)) {
        header('Location: index.php?status=success'); 
        exit();
    } else {
        echo "error: " . mysqli_error($koneksi);    
    }
    mysqli_close($koneksi);
}
?>
