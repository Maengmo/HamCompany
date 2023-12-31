<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HamCompany</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/myprofile.css" />
	<link rel="stylesheet" href="/resources/css/myportfolio.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item" aria-current="page">포트폴리오</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/user_profile.do">프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mycs_list.do">문의 내역</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/myportfolio.do">포트폴리오</a></li>
				</ul>
				<div class="mb-1 fw-bold">지원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/support_detail.do">지원 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">들어볼텨</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class=" container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="w-75 text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">포트폴리오 작성하기</h3>
					</div>
				</div>
			</div>
			
			<form method="POST" class="form-control p-3 bg-secondary bg-opacity-10" action="/storeportfolio.do" enctype="multipart/form-data" id="p-form">
			<div class="container-lg">
				<div class="mb-3">
					<div class="mb-2 fw-bold">제목</div>
					<input type="text" class="form-control" name="p_subject" required>
				</div>
				<div class="mb-2 fw-bold p-matop p-mabottom">작업정보</div>				
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">서비스 종류</div>
						<input type="text" class="form-control" name="p_service" required>
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">지역정보</div>
						<input type="text" class="form-control" name="p_location" required>
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">작업 소요 시간</div>
						<input type="text" class="form-control" name="p_time" required>
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">작업 년도</div>
						<input type="text" class="form-control" name="p_year" required>
					</div>
					<div class="mb-3 w-100 p-matop">
						<label for="formFile" class="form-label fw-bold">이미지 첨부</label> 
						<input class="form-control" type="file" id="formFile" name="attach" multiple required>
					</div>									
				</div>
				<div class="p-right p-matop">
					<button type="submit" class="btn btn-primary w-5 fs-5 p-maright"style="background-color: #5179D9;">등록</button>
				</div>
				
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			</form>
		</div>

	</div>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>