<body class="hold-transition register-page">
    <div class="register-box">
        <div class="register-logo">
            <a href="../../index2.html"><b>Admin</b>LTE</a>
        </div>

        <div class="card">
            <small class="card-body register-card-body">
                <p class="login-box-msg">Register a new membership</p>


                <form action="<?= base_url('auth/regis'); ?>" method="post">
                    <div class="input-group mb-3">
                        <input type="text" name="nama" class="form-control" placeholder="Full name" value="<?= set_value('nama'); ?>">

                        <div class="input-group-append input-group-text">
                            <span class="fas fa-user"></span>
                        </div>

                    </div>
                    <?= form_error('nama', '<small class="text-danger">', '</small>'); ?>
                    <div class="input-group mb-3">
                        <input type="email" name="email" class="form-control" placeholder="Email" placeholder="Password" value="<?= set_value('email'); ?>">

                        <div class="input-group-append input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>

                    </div>
                    <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                    <div class="input-group mb-3">
                        <input type="password" name="password" class="form-control" value="<?= set_value('password') ?>">
                        <div class="input-group-append input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                    <?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                    <div class="input-group mb-3">
                        <input type="password" name="c_password" class="form-control" placeholder="Retype password" value="<?= set_value('c_password') ?>">
                        <div class="input-group-append input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                    <?= form_error('c_password', '<small class="text-danger">', '</small>'); ?>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="agreeTerms" name="terms" value="agree">
                                <label for="agreeTerms">
                                    I agree to the <a href="#">terms</a>
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
                <a href="<?= base_url(); ?>" class="text-center">Sudah punya akun, login</a>
                <small>


        </div>
        <!-- /.card -->

    </div><!-- /.register box -->

    <!-- /.hold -->