<footer>
    <div class="container-fluid padding">
        <div class="row text-center">
            <div class="col-md-4 p-0">
                <h5 class="mt-3">THÔNG TIN </h5>
                <hr class="light">
                <p>SĐT: 0964093547</p>
                <p>Email: buithanhtrong32@gmail.com</p>
                <p>Địa chỉ: 36/44/13A-BINH THANH </p>
                
            </div>
            <div class="col-md-4 p-0">
                <h5 class="mt-3">LOẠI SÁCH</h5>
                <hr class="light">
                <ul class="nav flex-column">
                    <?php
                    require('./connect/connect.php');
                    $sql = "Select * from tbl_dmloai order by IDLoai asc";
                    $query = mysqli_query($con, $sql);
                    if (mysqli_num_rows($query) > 0) {
                        while ($rows = mysqli_fetch_array($query)) { ?>
                            <li class="nav-item"><a class="nav-link" href="index.php?action=loaisp&idloai=<?php echo $rows['IDLoai']; ?>"><?php echo $rows['TenLoai']; ?></a></li><?php
                        }
                    } else echo "Không có dữ liệu";
                    ?>
            </div>
            </ul>

            
            <div class="col-12">
                <hr class="light-100">
                <h5>&copy; Bui thanh trong</h5>
                <h5>&copy; Mai pham minh khoi</h5>
                <h5>&copy; Nguyen duc gia huy</h5>
            </div>
        </div>
    </div>
</footer>