<?php 
session_start();
include '../core/functions.php';
$url->run();

//menanbah user
// $conn = mysqli_connect('localhost', 'root', '', 'ukk-perpus-kal'); 
// $password = password_hash('0101', PASSWORD_DEFAULT);
// mysqli_query($conn, "INSERT INTO users VALUES (null, 'KAL', '$password', 'kal0101@gmail.com', 'Haikal Mubarok', 'word', 1);
// ");