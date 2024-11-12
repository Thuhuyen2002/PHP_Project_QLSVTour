<?php
// $conn = mysqli_connect('localhost', 'root', '', 'school_bussiness_tour_management');
$conn = mysqli_connect('localhost', 'root', '', 'MVC_project_1');
if (!$conn) {
    die("Kết nối không thành công: " . mysqli_connect_error());
}
