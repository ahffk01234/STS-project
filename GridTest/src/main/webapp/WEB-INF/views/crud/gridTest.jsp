<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/tui-grid/dist/tui-grid.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/tui-pagination/dist/tui-pagination.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/tui-time-picker/dist/tui-time-picker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/tui-date-picker/dist/tui-date-picker.css" />

</head>
<body>
<form action="/crud/board/searchBoard" method="post" id="searchForm">
<select id="searchType" name="searchType">
    <option value="title">제목</option>
    <option value="writer">작성자</option>
    <option value="both">제목+작성자</option>
</select>
<input type="text" name="searchWord" id="searchWord"/>
<button type="button" id="search">검색</button>
</form>
<div id="grid">
</div>

<div id="insertForm" hidden>
<form action="/crud/board/register" method="post" id="registerForm">
	제목 : <input type="text" name="title">
	작성자 : <input type="text" name="writer">
	내용 : <input type="text" name="content">
<input type="submit" value="확인" id="registerBtn"/>
</form>
</div>
<button type="button" id="insertRows">등록</button>
<button type="button" id="deleteRows">삭제</button>

</body>
<script src="${pageContext.request.contextPath }/resources/tui-date-picker/dist/tui-date-picker.js"></script>
<script src="${pageContext.request.contextPath }/resources/tui-time-picker/dist/tui-time-picker.js"></script>
<script src="${pageContext.request.contextPath }/resources/tui-pagination/dist/tui-pagination.js"></script>
<script src="${pageContext.request.contextPath }/resources/tui-grid/dist/tui-grid.js"></script>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">

$(function() {
	var search = $("#search");
	var insertRows = $("#insertRows");
	var deleteRows = $("#deleteRows");
	var insertForm = $("#insertForm");
	var registerFlag = false; 
	var grid = $("#grid");
	
	
	insertRows.on("click", function(){
		registerFlag = !registerFlag;
		if(!registerFlag){
			insertForm.hide();
			return false;
		}
		insertForm.show();
	});
	
	search.on("click", function(){
		var searchType = $("#searchType").val();
		var searchWord = $("#searchWord").val();
		
		var data = {
			searchType : searchType, 
			searchWord : searchWord, 
		};
		$.ajax({
			method : "post",
			url : "/crud/board/searchBoard",
			data : JSON.stringify(data),
			dataType : "json",
			contentType : "application/json; charset=utf-8",
			success : function(result){
				console.log(result);
				grid.resetData(result);
			}
		});
	});
	
	var grid = new tui.Grid({
		el : document.getElementById('grid'),
		rowHeaders : [ 'checkbox' ],
		columns : [ {
			header : '번호',
			name : 'boardNo',
			align : 'center',
			editor : 'text',
			sortable : true,
			resizeable : true
		}, {
			header : '제목',
			name : 'title',
			align : 'center',
			editor : 'text',
			sortable : true
		}, {
			header : '내용',
			name : 'content',
			align : 'center',
			editor : 'text',
			sortable : true
		}, {
			header : '작성자',
			name : 'writer',
			align : 'center',
			editor : 'text',
			sortable : true
		}, {
			header : '수정일자',
			name : 'regDate',
			align : 'center',
			sortable : true
		}
		, 
// 		{
// 			header : '금액',
// 			name : 'amount',
// 			editor : 'text'
// 		}, 
		{
			header : '취미',
			name : 'hobby',
			align : 'center',
			editor : {
				type : 'checkbox',
				options : {
					listItems : [ {
						text : '축구',
						value : 'soccer'
					}, {
						text : '농구',
						value : 'basketball'
					} ,{
						text : '야구',
						value : 'baseball'
					}]
				}
			}
		}, 
		{
			header : '성별',
			name : 'gender',
			align : 'center',
			editor : {
				type : 'radio',
				options : {
					listItems : [ {
						text : '남성',
						value : 'Male'
					}, {
						text : '여성',
						value : 'Female'
					} ]
				}
			}
		}, 
		{
			header : '과일',
			name : 'Fruit',
			align : 'center',
			editor : {
				type : 'select',
				options : {
					listItems : [ {
						text : '사과',
						value : 'apple'
					}, {
						text : '바나나',
						value : 'banana'
					} ]
				}
			}
		}, 
// 		{
// 			name : 'timePickerWithTab',
// 			editor : {
// 				type : 'datePicker',
// 				options : {
// 					format : 'yyyy/MM/dd',
// 					TimePicker : true
// 				}
// 			}
// 		} 
		],
// 		summary : {
// 			height : 40,
// 			position : 'bottom', // or 'top'
// 			columnContent : {
// 				amount : {
// 					template : function(valueMap) {
// 						return `MAX: ${valueMap.max}<br>MIN: ${valueMap.min}`;
// 					}
// 				}
// 			}
// 		},
			pageOptions : {
				useClient : true,
				perPage : 5
			}
	});

		$.ajax({
			url : "/crud/board/getPreBoardList",
			method : "get",
			// 		dataType : "application/json",
			contentType : "application/json; charset=utf-8",
			//         data : JSON.stringify(form),
			success : function(result) {
				// 	     	   console.log(result);
				grid.resetData(result);

			}
		});

		deleteRows.on("click", function(){
			var data = grid.getCheckedRows();
			console.log(data);
			$.ajax({
				type : "post",
				url : "/crud/board/remove",
				data : JSON.stringify(data),
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				success : function(result){
					grid.resetData(result);
				}
				
			});
		});
		
		
			grid.on("editingFinish", function(event) { // 수정이 발생한 그리드 위치의 정보()
				// event.rowKey : editingFinish 이벤트가 발생한 row의 위치
				// 
				var grid_boardNo = event.rowKey;
				var grid_row_boardNo = grid.getValue(grid_boardNo, "boardNo"); // 이벤트가 발생된 row의 boardNo의 value
				var data = grid.getRow(grid_boardNo); // 이벤트가 발생한 row 정보

				$.ajax({
					method : "post",
					url : "/crud/board/modify",
					dataType : "json",
					data : JSON.stringify(data),
					contentType : "application/json; charset=utf-8",
					success : function(result) {
						grid.resetData(result);
					}
				});
			});
	});
</script>

</html>