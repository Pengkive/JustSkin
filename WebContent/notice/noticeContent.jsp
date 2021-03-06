<%@page import="com.notice.db.noticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>NOTICE | JUST SKIN</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="./img/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./css/util.css">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<!--===============================================================================================-->



<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>JUST SKIN</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="./css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="./css/nice-select.css" type="text/css">
<link rel="stylesheet" href="./css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="./css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="./css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="stylesheet" href="./css/topimage.css" type="text/css">



<!-- jquery ?????? ?????? -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!-- jquery ?????? ??? -->



</head>
<body>

	<!-- header ?????? -->
	<jsp:include page="../header/header.jsp" />
	<!-- header ??? -->

	
 <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row" >
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>NOTICE & EVENT<span>.</span></h2>
                        <a href="./Main.me">Home</a>
                        <a href="">NOTICE</a>
                        <a class="active" href="">????????????</a>
                    </div>
                </div>
                <div class="col-lg-8">
                     <div class="row">
                    <div class="col-lg-12" id="topimg_bg">
                       <div id="topimg_ch" >
                        <h1>2021</h1>
                        <h2>BEST SELLER.</h2>
                      </div>
                        </div>
               </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

	<!-- container ?????? -->
	<div class="container-fluid">

		<div class="row">
			<div class="col-2"></div>
			<!--??????  -->
			<div class="col-8">
				<%
					// ????????? ????????? ??????????????? ?????????(????????????) ?????? ???????????? ??????
					// num,pageNum
					String userId = (String) session.getAttribute("userId");

					String pageNum = request.getParameter("pageNum");
					String num = request.getParameter("noticeNum");
					// BoardDAO ?????? ??????

					noticeDTO notit = (noticeDTO) request.getAttribute("noti");
					// DB?????? ?????????(num)??? ????????? ???????????? ?????? ???????????? ??????

					if (userId == null) {
						userId = "null";
					}

					String type;
					if (notit.getNoticeType() == 1) {
						type = "??????";
					} else {
						type = "?????????";
					}

					/* if(notit.getNoticeFile().equals("null") || notit.getNoticeFile() == null ){
						notit.setNoticeFile("????????????");
						notit.setNoticeRealFileName("????????????");
					} */
				%>
				<br>

				<div>

					<table class="table">
						<tr>
							<td style="width: 30%"><%=type%></td>
							<td style="width: 70%"><%=notit.getNoticeTitle()%></td>
						</tr>


						<br>

						<tr>
							<td><b>???????????? </b></td>
							<td>
								<%
									 
							        if (notit.getNoticeFile()==null || notit.getNoticeFile().equals(null)
							        		||  notit.getNoticeFile().equals("null")){
									%> ???????????? ?????? <%
										} else {
									%><a
								href="./notice/filedown.jsp?filename=<%=notit.getNoticeFile()%>"><%=notit.getNoticeRealFileName()%></a>
								<%
										}
									%>

							</td>
						</tr>

						<tr>
							<td height="300px" colspan="2"
								style="position: static; top: 3px; left: 5px; text-align: inherit;">
								<%=notit.getNoticeContent()%><br> <%
										 
								        if (notit.getNoticeImg()==null || notit.getNoticeImg().equals(null)
								        		||  notit.getNoticeImg().equals("null")){
 %> <%
 	} else {
 %><img width="500px" height="500px"
								src="./upload/<%=notit.getNoticeImg()%>"> <%
 	}
 %>
							</td>

						</tr>
					</table>

					<div style="text-align: right;">
						<%
							if (userId.equals("admin")) {
						%>
						<button class="btn btn-danger"
							onclick="delact()">?????????</button>
						<button class="btn btn-warning"
							onclick="location.href='./noticeup.nos?noticeNum=<%=num%>&pageNum=<%=pageNum%>'">?????????</button>
						<%
							}
						%>
						<button class="btn btn-info"
							onclick="location.href='./notice.nos'">????????????</button>
					</div>
				</div>

			</div>
			<div class="col-2"></div>
			<!--??????  -->

		</div>

	</div>
	<!-- container ??? -->

	<!-- Page End Section Begin -->
	<section class="page-add">
	<div class="row">
		<div class="col-lg-3"></div>
		<div class="col-lg-9">
			<div class="page-breadcrumb"></div>
		</div>
	</div>
	</section>
	<!-- Page End Section End -->



	<!-- footer ?????? -->
	<jsp:include page="../footer/footer.jsp" />
	<!-- footer ?????? -->

</body>



<script type="text/javascript">

function delact() {
	var sure  = confirm("????????????????????????");
	if(sure == true){
	 location.href = "noticedelpro.nos?pageNum=<%=pageNum%>&noticeNum=<%=num%>";
	}else{
		
	}
	
	
}

function upact(x) {
	var sure  = confirm("??????????????????????????????");
	if(sure == true){
	 location.href = "noticeup.nos?pageNum=<%=pageNum%>&noticeNum=<%=num%>";
	}else{
		
	}
	
}


</script>


</html>