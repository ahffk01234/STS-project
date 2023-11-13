<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
<style>
td {
	word-wrap: break-word;
	text-align: center;
}
</style>
</head>
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<div class="row" style="display: flex;">
					<div class="col-lg-3 pt-5 pb-5">
						<h5 style="text-align: center;"><b>사원 성별 비율</b></h5>
						<canvas id="genderChart" style="width: 250px; height: 250px;"></canvas>
			        	<br>
<!-- 						<h5 style="text-align: center;"><b>사원 성별 비율</b></h5> -->
						<table class="table col-lg-12">
				        	<tr align="center" style="background: #E9ECF5;">
				        		<th style="width: 33%;">구분</th>
				        		<th style="width: 33%;">사원 수(명)</th>
				        		<th style="width: 33%;">비율(%)</th>
				        	</tr>
			        	<c:choose>
			        		<c:when test="${empty genderRateList }">
			        			<tr>
			        				<td align="center" colspan="3">조회할 데이터가 없습니다.</td>
			        			</tr>
			        		</c:when>
			        		<c:otherwise>
			        			<c:forEach items="${genderRateList }" var="genderRateList">
							        	<tr>
							        		<td align="center">${genderRateList.empGen }</td>
							        		<td style="text-align: right">
								        		<fmt:formatNumber value="${genderRateList.genCnt }" pattern="#,###" />명
							        		</td>
							        		<td style="text-align: right">${genderRateList.genRatio }%</td>
							        	</tr>
			        			</c:forEach>
			        		</c:otherwise>
			        	</c:choose>
			        </table>
					</div>
					
					<div class="col-lg-5 pt-5 pb-5">
						<h5 style="text-align: center;"><b>연도별 채용된 사원 수</b></h5>
						<canvas id="recruitChart" style="width: 500px; height: 500px;"></canvas>
					</div>
					<div class="col-lg-4 pt-5 pb-5">
						<h5 style="text-align: center;"><b>연도별 채용된 사원 수</b></h5>
						<table class="table col-lg-12">
				        	<tr align="center" style="background: #E9ECF5;">
				        		<th style="width: 20%;">연도</th>
				        		<th style="width: 20%;">신입</th>
				        		<th style="width: 20%;">경력</th>
				        		<th style="width: 35%;">총 채용 인원 수</th>
				        	</tr>
				        	<c:choose>
				        		<c:when test="${empty recuritList }">
				        			<tr>
				        				<td align="center" colspan="2">조회할 데이터가 없습니다.</td>
				        			</tr>
				        		</c:when>
				        		<c:otherwise>
				        			<c:forEach items="${recuritList }" var="recuritList">
								        	<tr>
								        		<td align="center">${recuritList.year }년</td>
								        		<td style="text-align: right">${recuritList.newCnt }명</td>
								        		<td style="text-align: right">${recuritList.carCnt }명</td>
								        		<td style="text-align: right">${recuritList.totalCnt }명</td>
								        	</tr>
				        			</c:forEach>
				        		</c:otherwise>
				        	</c:choose>
				        </table>
					</div>
					
					<div class="col-lg-3 pt-5 pb-5">
						<h5 style="text-align: center;"><b>근무 차트</b></h5>
						<canvas id="workChart" style="width: 500px; height: 500px;"></canvas>
					</div>
<!-- 					<div class="col-lg-4"> -->
<!-- 						<h5 style="text-align: center;"><b>일주일 근무 total</b></h5> -->
<%-- 						<canvas id="workinfochart" style="width: 250px; height: 250px;"></canvas> --%>
<!-- 					</div> -->
<!-- 					<div class="col-lg-4"> -->
<!-- 						<h5 style="text-align: center;"><b>근무 차트</b></h5> -->
<%-- 						<canvas id="my" style="width: 250px; height: 250px;"></canvas> --%>
<!-- 					</div> -->
<!-- 					<div class="col-lg-4 pb-5"> -->
<!-- 						<h5 style="text-align: center;"><b>부서별 급여</b></h5> -->
<%-- 						<canvas id="departmentPayChart" style="width: 250px; height: 250px;"></canvas> --%>
<!-- 					</div> -->
<!-- 					<div class="col-lg-4 pb-5"> -->
<!-- 						<h5 style="text-align: center;"><b>매출</b></h5> -->
<%-- 						<canvas id="departmentPayChart" style="width: 250px; height: 250px;"></canvas> --%>
<!-- 					</div> -->
				</div>
			</div>
		</div>
	</div>
</div>








<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script> -->
<script type="text/javascript">

$(function() {
	// 성별 차트
	$.ajax({
        url: "/stats/genderchart",
        beforeSend: function(xhr){
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
         },
        async: true,
//         data: JSON.stringify(data),
        type: "POST",
        dataType: "json",
        contentType: "application/json;charset=utf-8",
        success: function(data) {
            var empGenlist = [];
            var countlist = [];
            var ratiolist = [];

            $.each(data, function(){
            	empGenlist.push(this["empGen"]);
                countlist.push(this["cnt"]);
                ratiolist.push(this["ratio"]);
            });

            console.log("Data received:", data);
            console.log("Gender Names:", empGenlist);
            console.log("Counts:", countlist);
            console.log("Ratios:", ratiolist);

            const ctx = document.getElementById('genderChart').getContext('2d');
            const myChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: empGenlist,
                    datasets: [{
                        label: '성별',
                        data: ratiolist,
                        backgroundColor: [
                            'gray',
                            '#54D4FF',
                            '#FF5454',
                        ],
//                         borderWidth: 1
                        hoverOffset: 4
                    }]
                },
                options: {
                	title: {
                		display: true,
                		text: '사원 성별 비율',
                		fontSize: 20
                	},
                	legend: {
                		display: true,
                		position: 'top',
                	},
//                 	tooltips: {
//                 		enabled: false
//                 	},
                }
            });
        }, // 성별 차트
        
        error: function(xhr, status, error) {
            console.log("AJAX Error: " + error);
            console.log(xhr.responseText);
        }
    });
	
	// 채용차트
	
	
	$.ajax({
        url: "/stats/recruityearchart",
        beforeSend: function(xhr){
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
         },
        async: true,
//         data: JSON.stringify(data),
        type: "POST",
        dataType: "json",
        contentType: "application/json;charset=utf-8",
        success: function(data) {
            var yearlist = [];
            var totalCntlist = [];
            var carCntlist = [];
            var newCntlist = [];

            $.each(data, function(){
            	yearlist.push(this["year"]);
            	totalCntlist.push(this["totalCnt"]);
            	carCntlist.push(this["carCnt"]);
            	newCntlist.push(this["newCnt"]);
            });

            console.log("Data received:", data);
            console.log("채용년도 :", yearlist);
            console.log("Counts:", totalCntlist);
            console.log("Counts:", carCntlist);
            console.log("Counts:", newCntlist);

            const ctx = document.getElementById('recruitChart').getContext('2d');
            const myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: yearlist,
                    datasets: [{
                    	label: '신입',
                    	data: newCntlist,
                    	backgroundColor: '#54D4FF',
                    	borderWidth: 1
                    }, {
                    	label: '경력',
                    	data: carCntlist,
                    	backgroundColor: '#54A7FF',
                    	borderWidth: 1
                    }]
                },
                options: {
                	scales: {
                		x: {
                			stacked: true,
                		},
                		y: {
                			stacked: true,
                		},
                	}
                }
            });
        },	// 채용 차트
        
        error: function(xhr, status, error) {
            console.log("AJAX Error: " + error);
            console.log(xhr.responseText);
        }
    });
	
	
	$.ajax({
        url: "/stats/workinfochart",
        beforeSend: function(xhr){
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
         },
        async: true,
//         data: JSON.stringify(data),
        type: "POST",
        dataType: "json",
        contentType: "application/json;charset=utf-8",
        success: function(data) {
            var empNolist = [];
            var totalWorklist = [];
            var workStimelist = [];

            $.each(data, function(){
            	empNolist.push(this["empNo"]);
            	totalWorklist.push(this["totalWork"]);
            	workStimelist.push(this["workStime"]);
            });

            console.log("Data received:", data);
            console.log("empNolist:", empNolist);
            console.log("totalWorklist:", totalWorklist);
            console.log("workStimelisst:", workStimelist);

            const ctx = document.getElementById('workinfochart').getContext('2d');
            const myChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: empNolist,
                    datasets: [{
                        label: '근무시간',
                        data: totalWorklist,
                        backgroundColor: [
                            'lightblue',
                        ],
                        hoverOffset: 4
                    }]
                }
            });
        }, // 근무 차트
        
        error: function(xhr, status, error) {
            console.log("AJAX Error: " + error);
            console.log(xhr.responseText);
        }
    });
	
	
	
});

	
new Chart(document.getElementById("workChart"), {
    type: 'doughnut',
    data: {
      labels: ["일반 근무", "추가 근무", "남은 시간"],
      datasets: [
        {
          label: "근무",
          backgroundColor: ["#54D4FF", "#54A7FF", "#9D9D9D"],
          data: [40, 4, 8]
        }
      ]
      
    },
});




</script>

