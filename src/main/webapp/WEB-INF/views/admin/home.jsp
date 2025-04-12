<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trang quản trị</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <style>
        .stat-box {
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            color: white;
            position: relative;
            overflow: hidden;
            transition: all 0.3s;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .stat-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .stat-box .icon {
            position: absolute;
            right: 20px;
            top: 20px;
            font-size: 48px;
            opacity: 0.3;
        }
        .stat-box h2 {
            font-size: 28px;
            margin: 0;
            font-weight: 700;
        }
        .stat-box p {
            margin: 5px 0 0;
            font-size: 16px;
        }
        .stat-box.buildings {
            background: linear-gradient(135deg, #2193b0, #6dd5ed);
        }
        .stat-box.users {
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
        }
        .stat-box.customers {
            background: linear-gradient(135deg, #4e54c8, #8f94fb);
        }
        .stat-box.revenue {
            background: linear-gradient(135deg, #11998e, #38ef7d);
        }
        .chart-container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .chart-container h3 {
            margin-top: 0;
            color: #333;
            font-size: 18px;
            font-weight: 600;
        }
        .activity-list {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 20px;
        }
        .activity-list h3 {
            margin-top: 0;
            color: #333;
            font-size: 18px;
            font-weight: 600;
        }
        .activity-item {
            padding: 15px 0;
            border-bottom: 1px solid #eee;
            display: flex;
            align-items: center;
        }
        .activity-item:last-child {
            border-bottom: none;
        }
        .activity-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            color: white;
        }
        .bg-primary {
            background-color: #4e73df;
        }
        .bg-success {
            background-color: #1cc88a;
        }
        .bg-warning {
            background-color: #f6c23e;
        }
        .bg-danger {
            background-color: #e74a3b;
        }
        .activity-details h4 {
            margin: 0;
            font-size: 16px;
            color: #333;
        }
        .activity-details p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<%@ include file="/WEB-INF/views/token-utils.jsp" %>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->
        </div>
        
        <div class="page-content">
            <div class="page-header">
                <h1>
                    Dashboard
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Tổng quan hệ thống
                    </small>
                </h1>
            </div><!-- /.page-header -->
            
            <div class="row">
                <div class="col-xs-12">
                    <!-- Thống kê -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="stat-box buildings">
                                <div class="icon">
                                    <i class="fas fa-building"></i>
                                </div>
                                <h2>26</h2>
                                <p>Tòa nhà</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="stat-box users">
                                <div class="icon">
                                    <i class="fas fa-users"></i>
                                </div>
                                <h2>42</h2>
                                <p>Người dùng</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="stat-box customers">
                                <div class="icon">
                                    <i class="fas fa-user-tie"></i>
                                </div>
                                <h2>156</h2>
                                <p>Khách hàng</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="stat-box revenue">
                                <div class="icon">
                                    <i class="fas fa-chart-line"></i>
                                </div>
                                <h2>5.2 tỷ</h2>
                                <p>Doanh thu</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Biểu đồ -->
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="chart-container">
                                <h3>Biểu đồ doanh thu theo tháng</h3>
                                <div style="height: 300px; background: #f8f9fc; text-align: center; padding-top: 120px;">
                                    <i class="fas fa-chart-bar" style="font-size: 36px; color: #dddfeb;"></i>
                                    <p style="color: #858796; margin-top: 10px;">Dữ liệu biểu đồ sẽ hiển thị ở đây</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="chart-container">
                                <h3>Phân bố theo loại bất động sản</h3>
                                <div style="height: 300px; background: #f8f9fc; text-align: center; padding-top: 120px;">
                                    <i class="fas fa-chart-pie" style="font-size: 36px; color: #dddfeb;"></i>
                                    <p style="color: #858796; margin-top: 10px;">Dữ liệu biểu đồ sẽ hiển thị ở đây</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Hoạt động gần đây -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="activity-list">
                                <h3>Hoạt động gần đây</h3>
                                <div class="activity-item">
                                    <div class="activity-icon bg-primary">
                                        <i class="fas fa-building"></i>
                                    </div>
                                    <div class="activity-details">
                                        <h4>Thêm mới tòa nhà</h4>
                                        <p>Admin đã thêm mới tòa nhà "The Gold View" - 15 phút trước</p>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon bg-success">
                                        <i class="fas fa-user-plus"></i>
                                    </div>
                                    <div class="activity-details">
                                        <h4>Khách hàng mới</h4>
                                        <p>Nguyễn Văn A đã đăng ký tài khoản - 2 giờ trước</p>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon bg-warning">
                                        <i class="fas fa-pen"></i>
                                    </div>
                                    <div class="activity-details">
                                        <h4>Cập nhật thông tin</h4>
                                        <p>Admin đã cập nhật thông tin tòa nhà "Vinhomes Central Park" - 5 giờ trước</p>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon bg-danger">
                                        <i class="fas fa-trash"></i>
                                    </div>
                                    <div class="activity-details">
                                        <h4>Xóa tài khoản</h4>
                                        <p>Admin đã xóa tài khoản người dùng "user123" - 1 ngày trước</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<script>
    // Đoạn mã JavaScript có thể được thêm vào đây để tạo biểu đồ thực tế
    // Ví dụ: Chart.js, ApexCharts, hoặc các thư viện tương tự
</script>
</body>
</html>