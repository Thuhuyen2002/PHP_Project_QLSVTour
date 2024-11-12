<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/public/css/login.css">
</head>

<body>
    <?php
    // include_once __DIR__ . '/../../controllers/LoginController.php';
    ?>
    <div class="auth flex-center">
        <div class="auth-container flex-center">
            <div class="auth-img">
                <img src="/public/images/login.png" alt="login image">
            </div>
            <form method="POST" class="auth-form" action="/controllers/LoginController.php">
                <h3>Đăng nhập</h3>
                <div class="mb-3 row">
                    <label for="username" class="col-form-label">Tên đăng nhập<span>*</span> </label>
                    <div class="col-sm-12">
                        <input required type="text" class="form-control" id="username" name="username">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="password" class="col-form-label">Mật khẩu<span>*</span></label>
                    <div class="col-sm-12">
                        <input required type="password" class="form-control" id="password" name="password">
                    </div>
                </div>
                <button type="submit" class="btn-login">Đăng nhập</button>
            </form>
        </div>
    </div>
    <!-- <div class="modal fade" id="notificationModal" tabindex="-1" role="dialog"
        aria-labelledby="notificationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="notificationModalLabel">Thông báo</h5>
                </div>
                <div class="modal-body" id="modalMessage">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>
</body>


</html>