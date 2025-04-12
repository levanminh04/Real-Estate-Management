<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="author" content="Untree.co" />
  <link rel="shortcut icon" href="favicon.png" />

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap5" />

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
          href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
          rel="stylesheet"
  />
<%--update update update--%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/icomoon/style.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tiny-slider.css">

  <style>
    .property-header {
      background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('${building.image_url[0]}');
      background-size: cover;
      background-position: center;
      color: white;
      padding: 100px 0 50px;
      margin-bottom: 40px;
    }
    .property-price {
      font-size: 28px;
      font-weight: bold;
      color: #35bf76;
      margin: 15px 0;
    }
    .property-features {
      display: flex;
      flex-wrap: wrap;
      margin: 20px 0;
      gap: 15px;
    }
    .feature-item {
      display: flex;
      align-items: center;
      gap: 8px;
      background-color: #f8f9fa;
      padding: 10px 15px;
      border-radius: 50px;
      font-size: 14px;
    }
    .gallery-container {
      position: relative;
      margin-bottom: 30px;
    }
    .main-image {
      width: 100%;
      height: 450px;
      object-fit: cover;
      border-radius: 10px;
    }
    .thumbnail-container {
      display: flex;
      gap: 10px;
      margin-top: 10px;
      overflow-x: auto;
    }
    .thumbnail {
      width: 100px;
      height: 70px;
      object-fit: cover;
      cursor: pointer;
      border-radius: 5px;
      transition: all 0.3s;
    }
    .thumbnail:hover {
      opacity: 0.8;
    }
    .active-thumbnail {
      border: 3px solid #35bf76;
    }
    .property-description {
      margin: 30px 0;
      line-height: 1.8;
    }
    .agent-card {
      background: white;
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.08);
      padding: 25px;
      margin-bottom: 30px;
    }
    .agent-image {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      object-fit: cover;
      margin-right: 20px;
    }
    .contact-buttons {
      display: flex;
      gap: 10px;
      margin-top: 20px;
    }
    .contact-btn {
      flex: 1;
      padding: 12px;
      border-radius: 5px;
      text-align: center;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s;
    }
    .call-btn {
      background-color: #35bf76;
      color: white;
    }
    .message-btn {
      background-color: #e9ecef;
      color: #212529;
    }
    .property-details-section {
      margin: 40px 0;
    }
    .section-title {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
      padding-bottom: 10px;
      border-bottom: 2px solid #f1f1f1;
    }
    .amenities-list {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 15px;
    }
    .amenity-item {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .location-map {
      height: 350px;
      border-radius: 10px;
      margin-top: 20px;
    }
    .similar-properties {
      margin: 40px 0;
    }
    .property-card {
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 5px 15px rgba(0,0,0,0.05);
      transition: all 0.3s;
      height: 100%;
    }
    .property-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    }
    .property-card-image {
      height: 200px;
      object-fit: cover;
    }
    .property-card-content {
      padding: 20px;
    }
  </style>
</head>
<body>

<header>
  <!-- MENU  -->
  <div class="p-4" style = "font-size: 16px; font-family: 'Roboto', sans-serif;">
    <div class="row navbar" style="width: 100%; display: flex; align-items: center; justify-content: space-between; padding: 0.5rem 1rem; background-color: #fff; flex-wrap: wrap; font-size: 16px; font-family: 'Roboto', sans-serif;">
      <div class="col-12 col-md-3 logo-container" style="display: flex; align-items: center; justify-content: center;">
        <div class="logo">
          <a href="">
            <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"
                 alt="Logo" style="max-height: 50px;">
          </a>
        </div>
      </div>

      <div class="col-12 col-md-6 menu-container" style="display: flex; justify-content: center; font-size: 16px; font-family: 'Roboto', sans-serif;">
        <div class="item-menu" >
          <div class="nav nav1" style="display: flex; gap: 20px; font-size: 16px; font-family: 'Roboto', sans-serif;">
            <div class="nav-item" style="padding: 10px; font-size: 15.2px; font-family: 'Roboto', sans-serif;">
              <a class="nav-item-link" href="/trang-chu" style="font-size: 15.2px; font-family: 'Roboto', sans-serif; font-weight: bold; color: #35bf76; text-decoration: none;">
                <span style="font-size: 18px !important; font-family: 'Roboto', sans-serif;">Trang chủ</span>
              </a>
            </div>
            <div class="nav-item" style="padding: 10px; font-size: 16px; font-family: 'Roboto', sans-serif;" >
              <a class="nav-item-link" href="/gioi-thieu" style=" font-family: 'Roboto', sans-serif; font-weight: bold; color: #35bf76; text-decoration: none;">
                <span style="font-size: 18px !important; font-family: 'Roboto', sans-serif;">Giới thiệu</span>
              </a>
            </div>
            <div class="nav-item" style="padding: 10px; font-size: 15.2px; font-family: 'Roboto', sans-serif;">
              <a class="nav-item-link" href="/san-pham" style="font-size: 15.2px; font-family: 'Roboto', sans-serif; font-weight: bold; color: #35bf76; text-decoration: none;">
                <span style="font-size: 18px !important; font-family: 'Roboto', sans-serif;">Sản phẩm</span>
              </a>
            </div>
            <div class="nav-item" style="padding: 10px; font-size: 15.2px; font-family: 'Roboto', sans-serif;">
              <a class="nav-item-link" href="/tin-tuc" style="font-size: 15.2px; font-family: 'Roboto', sans-serif; font-weight: bold; color: #35bf76; text-decoration: none;">
                <span style="font-size: 18px !important; font-family: 'Roboto', sans-serif;">Tin tức</span>
              </a>
            </div>
            <div class="nav-item" style="padding: 10px; font-size: 15.2px; font-family: 'Roboto', sans-serif;">
              <a class="nav-item-link" href="/lien-he" style="font-size: 15.2px; font-family: 'Roboto', sans-serif; font-weight: bold; color: #35bf76; text-decoration: none;">
                <span style="font-size: 18px !important; font-family: 'Roboto', sans-serif;">Liên hệ</span>
              </a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-3 button-container" style="display: flex; justify-content: flex-end;">
        <a href="https://zalo.me/${building.managerphone}" target="_blank" style="text-decoration: none;">
          <button class="btn btn-primary" style="background-color: #35bf76; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px; color: white; font-weight: bold;">
            Liên hệ tư vấn
          </button>
        </a>
      </div>
    </div>
  </div>
</header>

<!-- Header khi co màn hình -->
<div class="site-mobile-menu site-navbar-target">
  <div class="site-mobile-menu-header">
    <div class="site-mobile-menu-close">
      <span class="icofont-close js-menu-toggle"></span>
    </div>
  </div>
  <div class="site-mobile-menu-body"></div>
</div>

<!-- Property Header Banner -->
<div class="property-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <h1 style="font-size: 42px; font-weight: bold;">${building.name}</h1>
        <p style="font-size: 18px; margin-top: 10px;"><i class="fas fa-map-marker-alt mr-2"></i> ${building.street}, ${building.ward}, ${building.district}</p>
      </div>
    </div>
  </div>
</div>

<!-- Main Content -->
<div class="section">
  <div class="container">
    <div class="row">
      <!-- Left Column - Property Details -->
      <div class="col-lg-8">
        <!-- Gallery -->
        <div class="gallery-container">
          <img src="${building.image_url[0]}" alt="Property Image" class="main-image" id="mainImage">
          <div class="thumbnail-container">
            <c:forEach var="image" items="${building.image_url}" varStatus="status">
              <img src="${image}" alt="Property Thumbnail" class="thumbnail ${status.index == 0 ? 'active-thumbnail' : ''}"
                   onclick="changeMainImage('${image}', this)">
            </c:forEach>
          </div>
        </div>

        <!-- Property Overview -->
        <div class="property-details-section">
          <h2 class="section-title">Tổng quan</h2>
          <div class="property-price">
            <span>Giá từ: </span>
            <span>Liên hệ</span>
          </div>
          <div class="property-features">
            <div class="feature-item">
              <i class="fas fa-ruler-combined"></i>
              <span>Diện tích: Đang cập nhật</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-bed"></i>
              <span>Phòng ngủ: Đang cập nhật</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-bath"></i>
              <span>Phòng tắm: Đang cập nhật</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-arrow-up"></i>
              <span>Số tầng: Đang cập nhật</span>
            </div>
          </div>

          <!-- Property Description -->
          <div class="property-description">
            <p>${building.note}</p>
          </div>
        </div>

        <!-- Amenities -->
        <div class="property-details-section">
          <h2 class="section-title">Tiện ích</h2>
          <div class="amenities-list">
            <div class="amenity-item">
              <i class="fas fa-swimming-pool"></i>
              <span>Hồ bơi</span>
            </div>
            <div class="amenity-item">
              <i class="fas fa-dumbbell"></i>
              <span>Phòng gym</span>
            </div>
            <div class="amenity-item">
              <i class="fas fa-child"></i>
              <span>Khu vui chơi trẻ em</span>
            </div>
            <div class="amenity-item">
              <i class="fas fa-store"></i>
              <span>Trung tâm thương mại</span>
            </div>
            <div class="amenity-item">
              <i class="fas fa-car"></i>
              <span>Bãi đỗ xe</span>
            </div>
            <div class="amenity-item">
              <i class="fas fa-shield-alt"></i>
              <span>An ninh 24/7</span>
            </div>
          </div>
        </div>

        <!-- Location Map -->
        <div class="property-details-section">
          <h2 class="section-title">Vị trí</h2>
          <p><i class="fas fa-map-marker-alt"></i> ${building.street}, ${building.ward}, ${building.district}</p>
          <div class="location-map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2312404166964!2d106.80086067492125!3d10.870008089259568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527587e9ad5bf%3A0xafa66f9c8be3c91!2sUniversity%20of%20Information%20Technology%20-%20VNUHCM!5e0!3m2!1sen!2s!4v1700158586432!5m2!1sen!2s"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </div>

      <!-- Right Column - Agent Info & Contact -->
      <div class="col-lg-4">
        <!-- Agent Card -->
        <div class="agent-card">
          <div class="d-flex align-items-center mb-4">
            <img src="${pageContext.request.contextPath}/images/person.jpg" alt="Agent Image" class="agent-image">
            <div>
              <h3 class="mb-1" style="font-weight: bold;">${building.managername}</h3>
              <p class="mb-0" style="color: #666;">Chuyên viên tư vấn</p>
            </div>
          </div>

          <p><i class="fas fa-phone-alt mr-2"></i> ${building.managerphone}</p>
          <p style="font-size: 14px; line-height: 1.6;">
            Chuyên môi giới, định giá, sàn giao dịch bất động sản; Kinh doanh bất động sản;
            Tư vấn bất động sản; Cho thuê bất động sản; Quản lý bất động sản;
            Đại lý bán hàng hưởng hoa hồng
          </p>

          <div class="contact-buttons">
            <a href="tel:${building.managerphone}" class="contact-btn call-btn">
              <i class="fas fa-phone-alt mr-2"></i> Gọi ngay
            </a>
            <a href="https://zalo.me/${building.managerphone}" target="_blank" class="contact-btn message-btn">
              <i class="fas fa-comment mr-2"></i> Nhắn tin
            </a>
          </div>

          <div class="mt-4">
            <ul class="list-unstyled social dark-hover d-flex" style="gap: 15px;">
              <li><a href="https://zalo.me/${building.managerphone}" class="social-icon"><span class="icon-instagram"></span></a></li>
              <li><a href="https://zalo.me/${building.managerphone}" class="social-icon"><span class="icon-twitter"></span></a></li>
              <li><a href="https://zalo.me/${building.managerphone}" class="social-icon"><span class="icon-facebook"></span></a></li>
              <li><a href="https://zalo.me/${building.managerphone}" class="social-icon"><span class="icon-linkedin"></span></a></li>
            </ul>
          </div>
        </div>

        <!-- Email Form -->
        <div class="agent-card mt-4">
          <h4 style="font-weight: bold; margin-bottom: 20px;">Đăng ký nhận thông tin</h4>
          <form>
            <div class="mb-3">
              <input type="text" class="form-control" placeholder="Họ và tên" required>
            </div>
            <div class="mb-3">
              <input type="email" class="form-control" placeholder="Email" required>
            </div>
            <div class="mb-3">
              <input type="tel" class="form-control" placeholder="Số điện thoại" required>
            </div>
            <div class="mb-3">
              <textarea class="form-control" rows="4" placeholder="Nội dung"></textarea>
            </div>
            <button type="submit" class="btn w-100" style="background-color: #35bf76; color: white; font-weight: bold; padding: 12px;">
              Gửi thông tin
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="site-footer" style="font-size: 16px; font-family: 'Roboto', sans-serif;">
  <div class="container">
    <div class="row">
      <div class="col-lg-4" >
        <div class="widget" style="font-size: 16px; font-family: 'Roboto', sans-serif;">
          <h3 style="font-size: 18px; font-family: 'Roboto', sans-serif;">Liên hệ </h3>
          <address>Số 46 Man Thiện, TP Thủ Đức, TP HCM</address>
          <ul class="list-unstyled links">
            <li><a href="tel://0583122004">0583122004</a></li>
            <li>
              <a href="mailto:levanminh031204@gmail.com">levanminh031204@gmail.com</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="widget">
          <h3 style="font-size: 18px; font-family: 'Roboto', sans-serif;">Thông tin công ty</h3>
          <ul class="list-unstyled links">
            <li><a href="#">Trang chủ</a></li>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Dự án bất động sản</a></li>
            <li><a href="#">Tin tức</a></li>
            <li><a href="#">Liên hệ</a></li>
          </ul>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="widget">
          <h3 style="font-size: 18px; font-family: 'Roboto', sans-serif;">Kết nối với chúng tôi</h3>
          <ul class="list-unstyled social">
            <li><a href="#"><span class="icon-instagram"></span></a></li>
            <li><a href="#"><span class="icon-twitter"></span></a></li>
            <li><a href="#"><span class="icon-facebook"></span></a></li>
            <li><a href="#"><span class="icon-linkedin"></span></a></li>
            <li><a href="#"><span class="icon-pinterest"></span></a></li>
            <li><a href="#"><span class="icon-dribbble"></span></a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-12 text-center">
        <p>
          Copyright &copy; <script>document.write(new Date().getFullYear());</script>.
          All Rights Reserved. &mdash; Designed by <a href="#">Happy Team</a>
        </p>
      </div>
    </div>
  </div>
</div>

      <div id="overlayer"></div>
      <div class="loader">
        <div class="spinner-border" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
      </div>

      <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.request.contextPath}/js/tiny-slider.js"></script>
      <script src="${pageContext.request.contextPath}/js/aos.js"></script>
      <script src="${pageContext.request.contextPath}/js/custom.js"></script>

<script>
  function changeMainImage(imageSrc, thumbnail) {
    // Update main image
    document.getElementById('mainImage').src = imageSrc;

    // Update active thumbnail class
    const thumbnails = document.querySelectorAll('.thumbnail');
    thumbnails.forEach(thumb => {
      thumb.classList.remove('active-thumbnail');
    });
    thumbnail.classList.add('active-thumbnail');
  }

  // Initialize AOS animations
  document.addEventListener('DOMContentLoaded', function() {
    AOS.init({
      duration: 800,
      easing: 'ease',
      once: true,
      offset: 50
    });
  });
</script>

</body>

</html>
