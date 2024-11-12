<?php
include 'C:\xampp\htdocs\project_DoAn_\models\connect.php';

// Chỉ gọi session_start() nếu session chưa bắt đầu
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Sau đó, tiếp tục xử lý các mã PHP khác của bạn

$usernameErrorMessage = '';
$passwordErrorMessage = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['username']) && isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        if (empty($username)) {
            $usernameErrorMessage = 'Vui lòng nhập tên đăng nhập';
        } else if (empty($password)) {
            $passwordErrorMessage = 'Vui lòng nhập mật khẩu';
        } else {
            $stmt = $conn->prepare("SELECT * FROM account WHERE username = ? AND password = ?");
            $stmt->bind_param("ss", $username, $password);
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();
            if ($result->num_rows > 0) {
                $sql = "SELECT * FROM account WHERE username = '$username' AND password = '$password'";
                // $sql = "SELECT * FROM account WHERE username = '$username' ";

                $user = mysqli_query($conn, $sql);
                if ($user) {
                    $row = mysqli_fetch_assoc($user);
                    $_SESSION["username"] = $username;
                    $_SESSION["accountIdNow"] = $row['accountID'];
                    switch ($row["role"]) {
                        case 'Tài khoản sinh viên':
                            $_SESSION['role'] = 2;
                            header("Location: /index.php?controller=HomeController");
                            // echo "Tài khoản sinh viên";
                            break;
                        case 'Tài khoản giáo viên':
                            $_SESSION['role'] = 1;
                            header("Location: /index.php?controller=TeacherHomeController");
                            // echo "Tài khoản giáo viên";
                            break;
                        case 'Toàn quyền hệ thống':
                            $_SESSION['checkRegularAmin'] = false;
                            $_SESSION['role'] = 0;
                            header("Location: /index.php");
                            // echo "Toàn quyền hệ thống";
                            break;
                        case 'Quản lý thông thường':
                            $_SESSION['checkRegularAmin'] = true;
                            $_SESSION['role'] = 0;
                            header("Location: /index.php");
                            header("Location: /Project_Doan_/controllers/AdminController.php");
                            // echo "Quản lý thông thường";
                            break;
                        default:
                            header("Location: /index.php?controller=LoginController");
                            break;
                    }
                }
            } else {
                echo "<script>
                    document.addEventListener('DOMContentLoaded', function() {
                        document.getElementById('modalMessage').innerText = 'Tên đăng nhập hoặc mật khẩu không đúng';
                        $('#notificationModal').modal('show');
                    });
                    </script>";
            }
        }
    }
}
include_once __DIR__ . '/../views/pages/login.php';
