<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<?php
$accountId = (isset($_SESSION["accountIdNow"]) && $_SESSION["accountIdNow"]) ? $_SESSION["accountIdNow"] : -1;
$getCurrentUserInfor = "SELECT * FROM teacher WHERE accountID = $accountId";
$curentUserInfor = mysqli_query($conn, $getCurrentUserInfor);
if ($curentUserInfor && mysqli_num_rows($curentUserInfor) > 0) {
    $row = mysqli_fetch_assoc($curentUserInfor);
    $code = $row['code'];
    $fullName = $row['fullName'];
    $birthDate = $row['birthDate'];
    $phoneNumber = $row['phoneNumber'];
    $email = $row['email'];
    $gender = $row['gender'];
    $timestamp = strtotime(str_replace('/', '-', $birthDate));
    $formattedDate = '';
    if ($timestamp !== false) {
        $dateObj = new DateTime();
        $dateObj->setTimestamp($timestamp);
        $formattedDate = $dateObj->format('Y-m-d');
    }
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        if (
            isset($_POST['fullName'])
            && isset($_POST['changeInfor'])
            && isset($_POST['gender'])
            && isset($_POST['birthDate'])
            && isset($_POST['phoneNumber'])
            && isset($_POST['email'])
        ) {
            $newFullName = $_POST['fullName'];
            $newGender = $_POST['gender'];
            $newBirthDate = $_POST['birthDate'];
            $newPhoneNumber = $_POST['phoneNumber'];
            $newEmail = $_POST['email'];
            $changeInforSql = "UPDATE teacher SET fullName = '$newFullName', gender = '$newGender', birthDate = '$newBirthDate', phoneNumber = '$newPhoneNumber', email = '$newEmail' WHERE code = '$code' AND accountID = $accountId";
            $data = mysqli_query($conn, $changeInforSql);
            if ($data) {
                echo "<script>
                        document.addEventListener('DOMContentLoaded', function() {
                            document.getElementById('modalMessage').innerText = 'Cập nhật thông tin thành công';
                            $('#notificationModal').modal('show');
                            $('#notificationModal').on('hidden.bs.modal', function () {
                                window.location.href = '/index.php?controller=TeacherHomeController';
                            });
                        });
                    </script>";
            } else {
                echo "<script>
                        document.addEventListener('DOMContentLoaded', function() {
                            document.getElementById('modalMessage').innerText = 'Cập nhập thông tin thất bại';
                            $('#notificationModal').modal('show');
                        });
                        </script>";
            }
        }
    }
} else {
    echo "<script>
            document.addEventListener('DOMContentLoaded', function() {
                document.getElementById('modalMessage').innerText = 'Lấy dữ liệu người dùng thất bại';
                $('#notificationModal').modal('show');
            });
        </script>";
    header("Location: /index.php?controller=HomeController");
}
require_once __DIR__ . '/../views/pages/teacherChangeInfor.php';
