<!DOCTYPE html>
<html lang="en">

<head>
    <title>home</title>
    <link rel="stylesheet" href="/public/css/home.css">
</head>

<body>
    <div class='home flex-sb'>
        <div class="home-left">
            <?php
            include __DIR__ . '/../components/sidebarTeacher.php';
            ?>
        </div>
        <div class="home-right flex-grow-1">
            <?php
            include __DIR__ . '/../components/header.php';
            ?>
            <div class="container-body pad-12-0" id="notShowStudents">
                <div class="list-card">
                    <div class="card-item">
                        <div class="card-item-content">
                            <h1>Sinh viên</h1>
                            <p>Số lượng: <?php echo $qofStudent; ?> </p>
                        </div>
                        <div class="card-item-image">
                            <img src="/public/images/students.png" alt="student">
                        </div>
                    </div>
                    <div class="card-item">
                        <div class="card-item-content">
                            <h1>Giáo viên</h1>
                            <p>Số lượng: <?php echo $qofTeacher; ?> </p>
                        </div>
                        <div class="card-item-image">
                            <img src="/public/images/teacher.png" alt="">
                        </div>
                    </div>
                    <div class="card-item">
                        <div class="card-item-content">
                            <h1>Doanh nghiệp</h1>
                            <p>Số lượng: <?php echo $qofCompany; ?> </p>
                        </div>
                        <div class="card-item-image">
                            <img src="/public/images/office-building.png" alt="">
                        </div>
                    </div>
                    <div class="card-item">
                        <div class="card-item-content">
                            <h1>Chuyến tham quan</h1>
                            <p>Số lượng: <?php echo $qofTour; ?> </p>
                        </div>
                        <div class="card-item-image">
                            <img src="/public/images/tour-bus.png" alt="">
                        </div>
                    </div>
                </div>
                <h1 class='title'>Danh sách các chuyến tham quan hôm nay của bạn</h1>
                <div class="container-table table-pad">
                    <table class="table table-borderless table-hover table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Mã chuyến</th>
                                <th scope="col">Tên chuyến</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Công ty</th>
                                <th scope="col">Giáo viên</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (mysqli_num_rows($getTourNow) > 0) {
                                $i = 0;
                                while ($row = mysqli_fetch_assoc($getTourNow)) {
                                    $i += 1;
                                    $formattedDate = date('d/m/Y', strtotime($row['startDate']));
                                    echo "<tr>";
                                    echo "<th scope='row'>" . $i . "</th>";
                                    echo "<td>" . $row['code'] . "</td>";
                                    echo "<td class='w-25'>" . $row['name'] . "</td>";
                                    echo "<td class='w-25'>" . $row['description'] . "</td>";
                                    echo "<td>" . $row['availables'] . "</td>";
                                    echo "<td>" . $row['companyName'] . "</td>";
                                    echo "<td>" . $row['teacherName'] . "</td>";
                                    echo "<td>
                                            <form method='POST' class='form-inline'>
                                                <input type='hidden' name='tourIDToShowData' value='" . $row['tourID'] . "'>
                                                <button type='submit' class='showData' name='showDataStudents'>Xem DSSB</button>
                                            </form>
                                        </td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr>";
                                echo "<td colspan='7' class='text-center'>Không có chuyến tham quan nào diễn ra trong ngày hôm nay</td>";
                                echo "</tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="container-body pad-12-0" id="showStudents" hidden>
                <div class="container-table table-pad">
                    <div class="flex-sb-center pad-20-0">
                        <h1 class="h1-title">Danh sách sinh viên của chuyến tham quan</h1>
                        <button type="button" class="btn btn-primary" id="showDataToutNow" class="showDataToutNow">DS CTQ ngày hôm nay</button>
                    </div>
                    <?php
                    if ($rowDataTour != '') {
                        echo "
                            <ul class='list-infor list-infor-3'>
                                <div>
                                    <li>Mã chuyến tham quan: <b>" . $rowDataTour['code'] . "</b></li>
                                    <li>Tên chuyến: <b>" . $rowDataTour['name'] . "</b></li>
                                    <li>Mô tả: <b>" . $rowDataTour['description'] . "</b></li>
                                </div>
                                <div>
                                    <li>Số lượng: <b>" . $rowDataTour['availables'] . "</b></li>
                                    <li>Công ty: <b>" . $rowDataTour['companyName'] . "</b></li>
                                    <li>Giáo viên: <b>" . $rowDataTour['teacherName'] . "</b></li>
                                </div>
                            </ul>";
                    }
                    ?>
                    <table class="table table-borderless table-hover table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">MSV</th>
                                <th scope="col">Họ và tên</th>
                                <th scope="col">Giới tính</th>
                                <th scope="col">Ngày sinh</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Email</th>
                                <th scope="col">Lớp</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (mysqli_num_rows($getDataStudents) > 0) {
                                $i = 0;
                                while ($rowDataStudent = mysqli_fetch_assoc($getDataStudents)) {
                                    $i += 1;
                                    echo "<tr>";
                                    echo "<th scope='row'>" . $i . "</th>";
                                    echo "<td>" . $rowDataStudent['code'] . "</td>";
                                    echo "<td>" . $rowDataStudent['fullName'] . "</td>";
                                    echo "<td>" . $rowDataStudent['gender'] . "</td>";
                                    echo "<td>" . $rowDataStudent['birthDate'] . "</td>";
                                    echo "<td>" . $rowDataStudent['address'] . "</td>";
                                    echo "<td>" . $rowDataStudent['phoneNumber'] . "</td>";
                                    echo "<td>" . $rowDataStudent['email'] . "</td>";
                                    echo "<td>" . $rowDataStudent['classname'] . "</td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr>";
                                echo "<td colspan='9' class='text-center'>Không có chuyến tham quan nào diễn ra trong ngày hôm nay</td>";
                                echo "</tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        <?php echo $scriptShowData ?>
        document.getElementById('showDataToutNow').addEventListener('click', function() {
            document.getElementById('notShowStudents').hidden = false;
            document.getElementById('showStudents').hidden = true;
        });
    </script>
</body>

</html>