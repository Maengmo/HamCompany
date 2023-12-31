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
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4 p-height">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item bold text-danger" aria-current="page">포트폴리오</li>
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
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex justify-content-between pb-2">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">나의 포트폴리오</h3>
					</div>
					<div>
						<button class="btn" onclick="location.href='/addportfolio.do';">포트폴리오 등록</button>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-2">번호</td>
						<td class="col-6">포트폴리오 제목</td>
						<td class="col-2">서비스 종류</td>
						<td class="col-2">관리</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">${dto.p_seq}</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a class="text-black text-decoration-none text-hover" href="/portfolio_view.do?p_seq=${dto.p_seq}">${dto.p_subject}</a></td>
						<td class="col-2 text-truncate" style="height: 60px;">${dto.p_service}</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn" onclick="location.href='/editportfolio.do?p_seq=${dto.p_seq}';">수정</button>
							<button class="btn bg-secondary" onclick="location.href='delportfolio.do?p_seq=${dto.p_seq}';">삭제</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>