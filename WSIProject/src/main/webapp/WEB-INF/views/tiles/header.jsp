<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="kr.or.ddit.vo.CustomUser"%>
<%
		CustomUser user = (CustomUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	%>
<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex">
        
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="index.html" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="${pageContext.request.contextPath }/resources/assets/images/wsi.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="${pageContext.request.contextPath }/resources/assets/images/wsi.png" alt="" height="22">
                    </span>
                </a>

                <a href="index.html" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="${pageContext.request.contextPath }/resources/assets/images/wsi.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="${pageContext.request.contextPath }/resources/assets/images/wsi.png" alt="" height="22">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
<!--                 <i class="fa fa-fw fa-bars"></i> -->
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
            </button>

        
        <nav class="navbar navbar-light bg-white flex-md-nowrap w-100 p-0 ">
			<ul id="menuList" class="nav px-4 col fs-3 fw-bold py-2">
				<c:if test="${not empty menuList}">
					<c:forEach items="${menuList}" var="menu" varStatus="status">
						<li id="menu${status.count }" class="nav-item text-nowrap headerMenu">
							<a class="nav-link" href="${pageContext.request.contextPath }${menu.menuUrl}">
								<span>${menu.menuName}</span>
							</a>
						</li>
					</c:forEach>
				</c:if>
			</ul>
		</nav>
        </div>
		
        <div class="d-flex">
		
		<div class="dropdown d-inline-block">
	        <div class="dropdown">
				<button type="button" class="btn header-item noti-icon empsearch"
					id="page-header-notifications-dropdown" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"
					 style="color:#555b6d;border:0;border-radius:0;text-align: right;">
					<span class="" id=""></span>
					<i class="icon-sm" data-feather="search"></i>
					<!-- noti-dot bg-danger -->
				</button>
			</div>
	    </div>
	    
		<div class="dropdown d-inline-block">
	        <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown"
	            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="getArmList()">
	            <i class="icon-sm" data-feather="bell"></i>
	            <span style="margin-top: 25px;" id="badge-notifications" class="position-absolute top-0 translate-middle rounded-pill"></span>
	        </button>
	        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
	            aria-labelledby="page-header-notifications-dropdown">
	            <div class="p-3">
	                <div class="row align-items-center">
	                    <div class="col">
	                        <h5 class="m-0 font-size-15"> 알림 </h5>
	                    </div>
	                    <div class="col-auto">
	                        <a href="#!" id="allReadBtn" class="small"> 모두 읽음 처리 </a>
	                    </div>
	                </div>
	            </div>
	            <div data-simplebar style="max-height: 250px;">
	                <h6 class="dropdown-header bg-light">새로운 알림</h6>
	                <div id="newArm"></div>
	                
	                <a href="javascript:void(0)" class="text-reset notification-item readArm" data-armno="69" data-url="/notice/detail?boardNo=116">
	                    <div class="d-flex border-bottom align-items-start">
		                    <div class="flex-shrink-0">
		                        <img src="/resources/profile\199404001\CY.jpg" class="me-3 rounded-circle avatar-sm" alt="user-pic">
		                    </div>
		                    <div class="flex-grow-1">
		                        <h6 class="mb-1 fw-bold">천용</h6>
		                        <div class="text-muted">
		                            <p class="mb-1 font-size-13">새로운 공지사항이 등록되었습니다.</p>
		                            <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i><small class="text-muted fw-bold"> 1일 전</small></p>
		                        </div>
		                    </div>
		                </div>
		            </a>
	                
	                <h6 class="dropdown-header bg-light">지난 알림</h6>
					<div id="oldArm"></div>
					
	                <a href="javascript:void(0)" class="text-reset notification-item readArm" data-armno="69" data-url="/notice/detail?boardNo=116">
	                    <div class="d-flex border-bottom align-items-start">
		                    <div class="flex-shrink-0">
		                        <img src="/resources/profile\199404001\CY.jpg" class="me-3 rounded-circle avatar-sm" alt="user-pic">
		                    </div>
		                    <div class="flex-grow-1">
		                        <h6 class="mb-1 fw-bold">천용</h6>
		                        <div class="text-muted">
		                            <p class="mb-1 font-size-13">새로운 공지사항이 등록되었습니다.</p>
		                            <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i><small class="text-muted fw-bold"> 1일 전</small></p>
		                        </div>
		                    </div>
		                </div>
		            </a>
		            
	            </div>
	            <div class="p-2 border-top d-grid">
	                <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
	                    <i class="uil-arrow-circle-right me-1"></i> <span>더보기</span>
	                </a>
	            </div>
	        </div>
	    </div>
		
		
	    <div class="dropdown d-inline-block">
	          <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
	              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              <img class="rounded-circle header-profile-user" style="width: 45px; height: 45px;" src="${pageContext.request.contextPath }<%=user.getEmp().getSavePath() %>"
	              alt="Header Avatar">
	              <span class="ms-2 d-none d-sm-block user-item-desc">
	                  <span class="user-name"><%=user.getEmp().getEmpName()%></span>
	                  <span class="user-sub-title">
							<%
								if (user.getEmp().getDeptName() != null) {
									out.print(user.getEmp().getDeptName());
							}
								else{
									out.print(" ");
								}
							%> <%
							 	if (user.getEmp().getJobName().startsWith("직")) {
								 	out.print(" ");
								} else {
									out.print(user.getEmp().getJobName());
								}
							%>
					</span>
	              </span>
	          </button>
	          <div class="dropdown-menu dropdown-menu-end pt-0">
	              <div class="p-3 bg-primary border-bottom">
	                  <h6 class="mb-0 text-white"><%=user.getEmp().getEmpName()%></h6>
	                  <p class="mb-0 font-size-11 text-white-50 fw-semibold"><%=user.getEmp().getEmpEmail()%></p>
	              </div>
	              <a class="dropdown-item" href="/mypage/main"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
				  <sec:authorize access="isAuthenticated()">
		          	<form action="/logout" method="post" id="logoutForm1">
<!-- 			                   <a style="width: 100px;" id="logoutBtn1" class="dropdown-item"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i>로그아웃</a>
 -->			                   <a class="dropdown-item" id="logoutBtn1"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Logout</span></a>
		            <sec:csrfInput/>
		            </form>
				  </sec:authorize>
	          </div>
	    	</div>
		</div>
    </div>
    
    <!-- Nav tabs -->
    <ul class="nav nav-tabs nav-tabs-custom" role="tablist">
    <c:if test="${not empty submenuList}">
        <c:forEach items="${submenuList}" var="submenu" varStatus="status">
            <c:set var="isActive" value="${submenu.menuUrl == currentURL}" />
	            <li class="nav-item" id="subMenu${status.count}">
	                <a class="nav-link <c:if test="${isActive}">active</c:if>" href="${submenu.menuUrl}" data-bs-toggle="${submenu.tab }" >
<!-- 		            <span class="d-block d-sm-none"><i class="fas"></i></span> -->
	                    <span class="d-none d-sm-block">${submenu.menuName}</span>
	                </a>
	            </li>
	        </c:forEach>
	    </c:if>
	</ul>
	
</header>

<!--  구성원 검색 창 -->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="opacity: 0.9;">
			<div class="modal-dialog modal-lg" style="width: 600px; height: 50px; text-align: center;">
					<div class="" style="padding: 0; width: 600px;">
						<span style="color: white;">　　　　　  　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　</span>
						<button style="margin-right: 1px; margin-bottom: 10px;" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button><br>
				<div class="modal-content" style="width: 600px;">
						<input class="transparent-focus" style="width: 590px; height: 35px; margin-top: 1px;" type="text" id="empsearchForm" name="empsearchForm" placeholder="구성원을 검색해주세요" autocomplete="off"/>
				<div id="empList"></div>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->


<div class="alertify-notifier ajs-bottom ajs-right"></div>

<!-- <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script> -->
<script type="text/javascript">
$(function(){
	connection();
// 	var empNo =  `${emp.empNo}`;
// 	var data = {
// 		empNo : empNo
// 	}

// setInterval(function(){
// 	$.ajax({
// 		type : "get",
// 		url : "/arm/List",
// 		beforeSend: function(xhr){
// 			xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
// 		},
// // 		data : JSON.stringify(data),
// // 		contentType : "application/json; charset=utf-8",
// 		success : function(rst){
// 			if(rst == null || rst.length == 0){
// 				console.log('null');
// 			}else{
// 				console.log("ajax로 가져온 result 값 확인 : ", rst);
// 				if(rst !== 0){
// // 				var msg = rst[0].alarmCnt+","+rst[0].acontent+","+ rst[0].memId+","+rst[0].ano
// // 					ws.send(msg); // 소켓으로 전송할 데이터를 () 안에 작성하시오 
// 				}	
// 			}
// 		}
// 	});
// }, 3000);
	$("#logoutBtn1").on("click", function(){
		disconnect();
		setTimeout(() => {
			$("#logoutForm1").submit();
		}, 100);
	});
});

var ws = null;
function connection(){
// 	if(!window.localStorage.getItem("create")){
		ws = new WebSocket("ws://localhost:80/alarm");
// 	}
	
	// 소켓을 오픈하는 부분
	ws.onopen = function(){
		console.log('Info : connection opend.');
// 		window.localStorage.setItem("create", "socket");	// 소켓이 오픈되었다면 localStorage에 socket 오픈 정보를 기입
	};
	
// 	console.log(`1 ${sendmessage}`);
// 	ws.send(`${sendmessage}`);
// 	console.log(`2 ${sendmessage}`);
	
	
	// handleTextMessage 핸들러 메소드에서 처리하여 보내준  Message를 받는 부분
	// split으로 잘라 배열에 담아 div 영역에 alert로 표시하였다.
	ws.onmessage = function(event){

		console.log("여기가 메세지를 받는 부분",event.data+'\n');
		var str = event.data.split("<br>");
		
//			var socketAlert = $("div#socketAlert");
//			var socketAlert2 = $("div#socketAlert2");
		
//			socketAlert.html(str[0]);
//			socketAlert2.html(str[1]);
		
//			socketAlert.css('display','block');
//			socketAlert2.css('display','block');
				
//					setTimeout(function(){
//						socketAlert.css('display','none');
//						socketAlert2.css('displays','none');
//					}, 3000);
	};
			 
	 // 세션이 연결이 종료되는 부분
	ws.onclose = function(event){
		console.log('Info : 세션이 연결이 종료되었습니다.');
// 		window.localStorage.removeItem("create");
	};

	// 소켓 에러가 발생했을 때 실행되는 부분
	ws.onerror = function(error){console.log('Error : ', error);};
};
	
function disconnect(){
	ws.close();
}
</script>

<script type="text/javascript">
getArmList();
//새로운 소식 목록
let newArm = $('#newArm');
//지난 알림 목록
let oldArm = $('#oldArm');

//알람 모두 읽기 버튼	
let allReadBtn = $('#allReadBtn').on('click', function() {
	$.ajax({
		url : "/arm/AllRead",
		method : "get",
		dataType : "json",
		success : function(resp) {
			if(resp == 'OK'){
// 	            toastr.success('새로운 알림을 모두 읽음 처리 했습니다.');
	            getArmList();
	        }else if(resp == 'FAIL'){ 
// 	            toastr.error('새로운 알림을 모두 읽음 처리 중 오류가 발생 했습니다.');
	        }
		},
		error : function(errorResp) {
			console.log(errorResp.status);
			toastr.error('새로운 알림을 모두 읽음 처리 중 오류가 발생 했습니다.');
		}
	});
});

//알림 삭제
$(document).on('click','.armDelBtn',function(event){
	event.stopPropagation(); 
	let armNo = $(this).data("armno");
	
	$.ajax({
		url : "/arm/Delete",
		method : "post",
		beforeSend: function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		},
		data : {armNo : armNo},
		dataType : "json",
		success : function(resp) {
			if(resp == 'OK'){
	        }else if(resp == 'FAIL'){ 
	            toastr.error('알림 삭제 중 오류가 발생 했습니다.');
	        }
		},
		error : function(errorResp) {
			console.log(errorResp.status);
			toastr.error('알림 삭제 중 오류가 발생 했습니다.');
		}
	});
	return false;
});

//알람 모두 삭제 버튼
let armDelAllBtn = $('#armDelAllBtn').on('click', function() {
	$.ajax({
		url : "/arm/AllDelete",
		method : "post",
		beforeSend: function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		},
		dataType : "json",
		success : function(resp) {
			if(resp == 'OK'){
	            toastr.success('알림을 모두 삭제했습니다.');
	            getArmList();
	        }else if(resp == 'FAIL'){ 
	            toastr.error('알림 삭제 중 오류가 발생 했습니다.');
	        }
		},
		error : function(errorResp) {
			console.log(errorResp.status);
			toastr.error('알림 삭제 중 오류가 발생 했습니다.');
		}
	});
});

//알림 클릭
$(document).on('click','.readArm',function(){
	let armNo = $(this).data("armno");
	let url = $(this).data("url");
	$.ajax({
		url : "/arm/Read",
		method : "post",
		beforeSend: function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		},
		data : {"armNo" : armNo},
		dataType : "json",
		success : function(res) {
			location.href= `${pageContext.request.contextPath }`+url;
		},
		error : function(errorResp) {
			console.log(errorResp.status);
		}
	});
	
});
//새로운 소식 알림 숫자
let armCnt = $('#badge-notifications');

//#######################################################################################################################################
//알림목록 갱신 함수
function getArmList(){
	$.ajax({
		
		url : "/arm/List",
		method : "get",
		success : function(resp) {
			let newCnt = 0;
			let newCode ='';
			let oldCode ='';
			$(resp).each(function (i, arm) {
				// 프로필 유무로 이미지주소설정
// 				let empImg = `\${CONTEXTPATH}/resources/empImages/\${arm.empImg}`;
// 				if(!arm.empImg)
// 					empImg =`\${CONTEXTPATH}/resources/images/basicProfile.png`;
				// 읽음여부 표시	
// 				let readBadge = `<a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>`;
// 				if(arm.armStat == 'Y')
// 					readBadge = '';
				let listCode = `<a href="javascript:void(0)" class="text-reset notification-item readArm" data-armno="\${arm.armNo}" data-url="\${arm.armUrl}">
				                    <div class="d-flex border-bottom align-items-start">
					                    <div class="flex-shrink-0">
					                        <img src="${pageContext.request.contextPath }\${arm.armSenderimg}"
					                        class="me-3 rounded-circle avatar-sm" alt="user-pic">
					                    </div>
					                    <div class="flex-grow-1">
					                        <h6 class="mb-1 fw-bold">\${arm.armSendername}</h6>
					                        <div class="text-muted">
					                            <p class="mb-1 font-size-13">\${arm.armCont}</p>
					                            <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i><small class="text-muted fw-bold"> \${elapsedTimeA(arm.armTime)}</small></p>
					                        </div>
					                    </div>
					                </div>
					            </a>`;
								
				// 새로운 소식
				if(arm.armStat == 'N'){
					newCnt++;
					newCode += listCode;
					
				// 지난 알림
				}else{
					oldCode += listCode;
				}
				
			});
			if(newCnt == 0){
				armCnt.removeClass('badge bg-danger').html("");
			}else{
				armCnt.addClass('badge bg-danger').html(newCnt);
			}
			newArm.html(newCode).trigger("create");
			oldArm.html(oldCode).trigger("create");
		},
		error : function(errorResp) {
			console.log(errorResp.status);
		}
	});
}

//#######################################################################################################################################
//경과시간 표현 함수
function elapsedTimeA(date) {
let start = new Date(date);
let end = new Date();

let diff = (end - start) / 1000;

let times = [
{ name: '년', milliSeconds: 60 * 60 * 24 * 365 },
{ name: '개월', milliSeconds: 60 * 60 * 24 * 30 },
{ name: '일', milliSeconds: 60 * 60 * 24 },
{ name: '시간', milliSeconds: 60 * 60 },
{ name: '분', milliSeconds: 60 },
];

for (let value of times) {
	let betweenTime = Math.floor(diff / value.milliSeconds);

	if (betweenTime > 0) {
		return `\${betweenTime}\${value.name} 전`;
	}
}
return '방금 전';
}
//#######################################################################################################################################
</script>

<script type="text/javascript" >
$(function(){
	var empsearch = $(".empsearch");
	var empsearchForm = $("#empsearchForm");
	var empList = $("#empList");
	   
	empsearch.on("click", function(){
		$("#empList").empty();
		empsearchForm.val("");
	});
	
	empsearchForm.keyup(function() {
		var name = $(this).val();
		
		var data = {
			empName : name
		}
		
		$.ajax({
			type : "post",
	  		url : "/empSearch",
	  		beforeSend: function(xhr){
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			data : JSON.stringify(data),
			contentType : "application/json;charset=utf-8",
			dataType: "JSON",
			success : function(res){
				$("#empList").empty();
				var str = "<table id='seachTable' style='color: dark; text-align: center;'>";
				for(var i in res){
					str += "<tr style='height: 50px;' onclick=\"location.href='/mypage/other?empNo="+res[i].empNo+"'\">";
					if(res[i].savePath == null){
						str += "<td style='width: 300px;'><img src='/resources/images/profile.jpg' class='me-3 rounded-circle avatar-sm' alt='user-pic'>"+res[i].empName+"</td>";
					}else{
						str += "<td style='width: 300px;'><img src='"+res[i].savePath+"' class='me-3 rounded-circle avatar-sm' alt='user-pic'>"+res[i].empName+"</td>";
					}
					str += "<td style='width: 300px;'>"+res[i].empDept+"</td>";
					str += "</tr>";
				}
				str += "</table>";     
				$("#empList").append(str);
			}
		});
	});
	
	function errPrint(idx, msg, color){
	   $(".error:eq("+idx+")").text(msg).attr("color", color);
	}

	function errInit(){
	   $(".error").text(""); //에러 메시지를 전부 초기화 
	}
	
});
</script>
<!-- 알림  -->
<script type="text/javascript">
$(function(){
	var okmessage = `${messageok}`;
	var messagee = `${messagee}`;
	var smessage = `${smessage}`;
	var wmessage = `${wmessage}`;
	var emessage = `${emessage}`;
	
	if(okmessage != null && okmessage != ""){
		alertify.alert(okmessage, function(){
		    alertify.smessage('성공');
		  });
	}
	if(messagee != null && messagee != ""){
		alertify.message(messagee);
	}
	if(smessage != null && smessage != ""){
		alertify.success(smessage);
	}
	if(wmessage != null && wmessage != ""){
		alertify.warning(wmessage);
	}
	if(emessage != null && emessage != ""){
		alertify.error(emessage);
	}
	
});
</script>

