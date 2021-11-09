<%@page import="com.sboot.matkit.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MatKiT</title>
<link rel="icon" href="./favicon.png"> <!-- title 탭에  파비콘(로고이미지) 띄우기 -->
</head>
<body>

	<!-- 세션 -->
	<%
		MemberDTO login = (MemberDTO) session.getAttribute("login");
	%>

	<!--HEADER-->
	<header>
		<div class="inner">

			<a href="/" class="logo"> <img
				src="./images/header_logo.png" alt="MatKiT_LOGO" />
			</a>


			<!--HEADER  sub-menu -->
			<div class="sub-menu">
				<ul class="menu">

					<li><a href=" <%=login == null ? "/login" : "/logout"%>">
							<%=login == null ? "로그인" : "로그아웃"%>
					</a></li>
					<% if (login == null) {%>
					<li><a href="/join">회원가입</a></li>
					<%} else {%>
					<li><a href="/order_check">주문내역</a></li>
					<li><a href="/cart_in">장바구니</a></li>
					<%} %>
				</ul>
				<br />
				<p>
					<%
						if (login == null) {
							out.println(" 로그인 중이 아님");
						} else {
							out.println("    " + login.getName() + "님 로그인중");
						}
					%>
				</p>

				<!-- <div class="search">
					<input type="text" /> <span class="material-icons">search</span>
				</div> -->
			</div>


			<!-- HEADER  main-menu -->

			<ul class="main-menu">
				<li class="item">
					<div class="item__name">MatKiT</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4>MatKiT</h4>
									<ul>
										<li><a href="/intro">MatKiT 소개</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<!-- ====================================================== -->
				<li class="item">
					<div class="item__name">BEST</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4 style="margin-left: 100px">BEST</h4>
									<ul>
										<li style="margin-left: 100px"><a href="/best">인기상품</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<!-- ====================================================== -->
				<li class="item">
					<div class="item__name">밀키트</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4 style="margin-left: 195px">밀키트</h4>
									<ul>
										<li style="margin-left: 195px"><a href="/cate_korean">한식</a></li>
										<li style="margin-left: 195px"><a href="/cate_china">중식</a></li>
										<li style="margin-left: 195px"><a href="/cate_italian">양식</a></li>
										<li style="margin-left: 195px"><a href="/cate_banchan">반찬</a></li>
										<li style="margin-left: 195px"><a href="/cate_salad">샐러드</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<!-- ====================================================== -->
				<li class="item">
					<div class="item__name">NEWS</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4 style="margin-left: 295px">NEWS</h4>
									<ul>
										<li style="margin-left: 295px"><a
											href="communi_notice.jsp">공지사항</a></li>
										<li style="margin-left: 295px"><a
											href="communi_event.jsp">이벤트</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<!-- ====================================================== -->
				<li class="item">
					<div class="item__name">FAQ</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4 style="margin-left: 395px">FAQ</h4>
									<ul>
										<li style="margin-left: 395px"><a href="communi_FAQ.jsp">자주하는
												질문</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<!-- ====================================================== -->
				<li class="item">
					<div class="item__name">REVIEW</div>
					<div class="item__contents">
						<div class="contents__menu">
							<ul class="inner">
								<li>
									<h4 style="margin-left: 480px">REVIEW</h4>
									<ul>
										<li style="margin-left: 480px"><a
											href="communi_review.jsp">상품후기</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>

			</ul>


		</div>


	</header>