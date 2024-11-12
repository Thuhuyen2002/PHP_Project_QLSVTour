<?php
// Bắt đầu session
session_start();

// Hủy tất cả các session
session_unset();
session_destroy();

// Chuyển hướng về trang chính (hoặc trang đăng nhập) sau khi đăng xuất
header("Location: /index.php");
exit();
