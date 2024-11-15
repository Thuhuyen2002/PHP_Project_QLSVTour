<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/project_DoAn_/node_modules/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="/public/css/base.css">
    <link rel="stylesheet" href="/public/css/admin.css">



</head>

<body>
    <script src="/project_DoAn_/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="/project_DoAn_/node_modules/@popperjs/core/dist/umd/popper.min.js"></script>
    <script src="/project_DoAn_/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <?php
    include 'C:\xampp\htdocs\project_DoAn_\models\connect.php';
    if (isset($_SESSION['role'])) {
        if ($_SESSION['role'] == 0) {
            $controller = isset($_GET['controller']) ? $_GET['controller'] : 'AdminController';

            switch ($controller) {
                    //case 'LogoutController':
                case 'AdminController': {
                        require_once('controllers/AdminController.php');
                        break;
                    }
                case 'TourController': {
                        require_once('controllers/TourController.php');
                        break;
                    }
                case 'ClassController': {
                        require_once('controllers/ClassController.php');
                        break;
                    }
                case 'StudentController': {
                        require_once('controllers/StudentController.php');
                        break;
                    }
                case 'TeacherController': {
                        require_once('controllers/TeacherController.php');
                        break;
                    }
                case 'CompanyController': {
                        require_once('controllers/CompanyController.php');
                        break;
                    }
                case 'AccountController': {
                        require_once('controllers/AccountController.php');
                        break;
                    }
                default: {
                        // require_once('controllers/LoginController.php');
                        echo "helo";
                        break;
                    }
            }
        } elseif ($_SESSION['role'] == 1) {
            $controller = isset($_GET['controller']) ? $_GET['controller'] : 'TeacherHomeController';

            switch ($controller) {
                    //case 'LogoutController':
                case 'TeacherHomeController': {
                        require_once('controllers/TeacherHomeController.php');
                        break;
                    }
                case 'TeacherChangePasswordController': {
                        require_once('controllers/TeacherChangePasswordController.php');
                        break;
                    }
                case 'TeacherChangeInforController': {
                        require_once('controllers/TeacherChangeInforController.php');
                        break;
                    }
                case 'EvaluateStudentController': {
                        require_once('controllers/EvaluateStudentController.php');
                        break;
                    }
                default: {
                        require_once('controllers/TeacherHomeController.php');
                        break;
                    }
            }
        } elseif ($_SESSION['role'] == 2) {
            $controller = isset($_GET['controller']) ? $_GET['controller'] : 'HomeController';

            switch ($controller) {
                    //case 'LogoutController':
                case 'HomeController': {
                        require_once('controllers/HomeController.php');
                        break;
                    }
                case 'StudentChangePasswordController': {
                        require_once('controllers/StudentChangePasswordController.php');
                        break;
                    }
                case 'StudentChangeInforController': {
                        require_once('controllers/StudentChangeInforController.php');
                        break;
                    }
                case 'StudentTourHistoryController': {
                        require_once('controllers/StudentTourHistoryController.php');
                        break;
                    }
                case 'StudentRegisterTourController': {
                        require_once('controllers/StudentRegisterTourController.php');
                        break;
                    }
                case 'StudentDeleteTourRegistrationController': {
                        require_once('controllers/StudentDeleteTourRegistrationController.php');
                        break;
                    }
                default: {
                        require_once('controllers/HomeController.php');
                        break;
                    }
            }
        }
    } else {
        $controller = 'LoginController';
        require_once('controllers/LoginController.php');
    }

    mysqli_close($conn);
    ?>
</body>


</html>