<?php session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>  
    <title>web bán truyện </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>
    <!-- navbar -->
    <nav class="nnavbar navbar-dark bg-dark bg-dark navbar-dark sticky-top fixed-top p-0 border-bottom">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.php"><i class='fa fa-camera-retro fa-lg'></i>TRANG CHỦ</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Sản phẩm
                    </a>
                    <div class="dropdown-menu bg-black">
                        <?php
                        require('./connect/connect.php');
                        $sql = "Select * from tbl_hangsx where TrangThai = 1 order by IDHang asc";
                        $query = mysqli_query($con, $sql);
                        if (mysqli_num_rows($query) > 0) {
                            while ($rows = mysqli_fetch_array($query)) { ?>
                                <a class="dropdown-item" href="index.php?action=hang&idhang=<?php echo $rows['IDHang']; ?>"><?php echo $rows['TenHang']; ?></a><?php
                                                                                                                                                            }
                                                                                                                                                        } else echo "Không có dữ liệu";
                                                                                                                                                                ?>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=tintuc">Tin tức</a>
                </li>
               
                <li class="nav-item">
                    <?php
                    //Đếm số sản phảm trong giỏ hàng
                    // session_start();
                    if (isset($_SESSION["giohang"]) && $_SESSION["giohang"] != null) {
                        $count = count($_SESSION["giohang"]);
                    } else {
                        $count = 0;
                    }
                    ?>
                    <a class="nav-link active" href="index.php?action=giohang"><i class='fas fa-cart-plus mr-1'></i>Giỏ hàng <?php echo $count; ?></a>
                </li>
                <?php
                if (isset($_SESSION['tendn']) && $_SESSION['tendn']) { ?>
                    <li class="nav-item dropdown mr-2">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                            <i class='fas fa-user-alt mr-1'></i><?php echo $_SESSION['tendn']; ?>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right bg-dark">
                            <a class="dropdown-item" href="index.php?action=donhang">
                                <i class="fas fa-sign-out"></i> ĐƠN TRUYỆN
                            </a>
                            <a class="dropdown-item" href="logout.php">
                                <i class="fas fa-sign-out"></i> Đăng xuất
                            </a>
                        </div>
                    </li>
                <?php } else { ?>
                    <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#login" href=" #">Đăng nhập</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#dangky" href=" #">Đăng ký</a></li>
                <?php
                }
                ?>
            </ul>
        </div>
    </nav>
    <!-- end navbar -->
    <?php require('login.php'); ?>
    <?php require('dangky.php'); ?>
    <!-- start carousel -->
    <div id="carouselExampleIndicators" class="carousel carousel-fade slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./images/anh7.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="./images/anh8.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="./images/anh9.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="./images/anh10.jpg" class="d-block w-100">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- end carousel -->
    <!--  DANH SÁCH SẢN PHẨM -->
    <?php
    if (isset($_GET['action'])) {
        switch ($_GET['action']) {
            case 'hang': {
                    include('view_theo_hangSX.php');
                    break;
                }
                case 'loaisp': {
                    include('view_loai_sp.php');
                    break;
                }    
            case 'giohang': {
                    include('view_cart.php');
                    break;
                }

            case 'chitiet': {
                    include('chitietsp.php');
                    break;
                }
            case 'thanhtoan': {
                    include('thanhtoan.php');
                    break;
                }
            case 'add': {
                    include('dathang.php');
                    break;
                }
           /* case 'gioithieu': {
                    include('gioithieu.php');
                    break;
                }*/
            case 'tintuc': {
                    include('tintuc.php');
                    break;
                }
            case 'chitiettintuc': {
                    include('chitiettintuc.php');
                    break;
                }
            case 'donhang': {
                    include('donhangcuatoi.php');
                    break;
                }
                case 'huydh': {
                    include('xulyhuydonhang.php');
                    break;
                }
            case 'chitietdh': {
                    include('chitietdh.php');
                    break;
                }
            default;
                break;
        }
    } else {
        require('danhsachsp.php');
    }
    ?>
    <!-- end DANH SÁCH SẢN PHẨM -->
    
    </div> -->
    <!-- start footer -->
    <?php
    require('footer.php');
    ?>
    <!-- end footer -->
    <script>
        function anqc() {
            document.getElementById("tatqc").style.display = "none";
            document.getElementById("noidungqc").style.display = "none";
            document.getElementById("hienqc").style.display = "block";
        }

        function hienqc() {
            document.getElementById("tatqc").style.display = "block";
            document.getElementById("noidungqc").style.display = "block";
            document.getElementById("hienqc").style.display = "none";
        }
    </script>
</body>
<!-- Messenger Chat -->
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            xfbml: true,
            version: 'v4.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<!-- Your customer chat code -->
<div class="fb-customerchat" attribution=setup_tool page_id="304704343559118" theme_color="#13cf13" logged_in_greeting="Xin chào! Tôi có thể giúp gì cho ban?" logged_out_greeting="Xin chào! Tôi có thể giúp gì cho ban?">
</div>
<!-- end Messenger Chat -->

</html>