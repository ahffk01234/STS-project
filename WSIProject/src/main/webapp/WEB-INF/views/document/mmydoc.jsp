<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<div class="row">
	<div>
		<div class="card">
			<div class="card-body">
				<div class="tab-content p-3 text-muted">
					<div id="table-search" class="table">
						<div role="complementary" class="gridjs gridjs-container" style="width: 100%;">
							<div class="row">
								<div class="col-md-3">
								</div>
								<div class="col-md-9">
									<div class="d-flex justify-content-end">
										<form method="post" id="searchForm">
											<ul class="nav nav-pills">
												<li class="nav-item">
													<input type="hidden" name="page" id="page" />
													<select class="form-select" name="searchType">
														<option value="2"
															<c:if test="${searchType eq '2' }">selected</c:if>>근무</option>
														<option value="1"
															<c:if test="${searchType eq '1' }">selected</c:if>>출장</option>
														<option value="3"
															<c:if test="${searchType eq '3' }">selected</c:if>>휴가</option>
														<option value="4"
															<c:if test="${searchType eq '4' }">selected</c:if>>추가근무</option>
														<option value="5"
															<c:if test="${searchType eq '5' }">selected</c:if>>경비</option>
												</select></li>
												<li class="nav-item">
												<input type="text" name="searchWord" id="searchWord" value="${searchWord }" class="form-control float-right" placeholder="문서제목을 입력하세요">
												</li>
												<li class="nav-item">
													<div class="input-group-append">
														<button type="submit" class="btn btn-primary">검색</button>
													</div>
												</li>
												<sec:csrfInput />
											</ul>
										</form>
									</div>
								</div>
							</div>
							<div class="gridjs-wrapper" style="height: auto;">
								<table role="grid" class="gridjs-table"
									style="height: auto;">
									<thead class="gridjs-thead">
										<tr class="gridjs-tr  text-center">
											<th data-column-id="title" class="gridjs-th">
												<div class="gridjs-th-content">기안제목</div>
											</th>
											<th data-column-id="gname" class="gridjs-th">
												<div class="gridjs-th-content">작성자</div>
											</th>
											<th data-column-id="mname" class="gridjs-th">
												<div class="gridjs-th-content">작성일자</div>
											</th>
											<th data-column-id="wdate" class="gridjs-th">
												<div class="gridjs-th-content">처리상태</div>
											</th>
											<th data-column-id="mdate" class="gridjs-th">
												<div class="gridjs-th-content">기안내용</div>
											</th>
										</tr>
									</thead>
										<c:set value="${docPagingVO.dataList }" var="myDocList" />
										<c:choose>
											<c:when test="${empty myDocList }">
											<tbody class="gridjs-tbody" id="docList">
													<tr class="gridjs-tr text-center">
														<td data-column-id="title" class="gridjs-td" colspan="5">해당 정보가 존재하지 않습니다</td>
													</tr>
												</tbody>
											</c:when>
											<c:otherwise>
												<tbody class="gridjs-tbody" id="docList">
													<c:forEach items="${myDocList }" var="myDoc">
														<tr class="gridjs-tr text-center">
															<td data-column-id="title" class="gridjs-td  text-left">${myDoc.docTitle }</td>
															<td data-column-id="gname" class="gridjs-td text-center">${myDoc.empName }</td>
															<td data-column-id="wdate" class="gridjs-td text-center"><fmt:formatDate
																	value="${myDoc.docDate}" pattern="yyyy-MM-dd(E) HH:mm" /></td>
															<td data-column-id="mdate" class="gridjs-td  text-center">
																<c:if test="${myDoc.docStat eq '대기중' }">
																	<h5><span class="badge badge-soft-warning">${myDoc.docStat }</span></h5>
																</c:if>
																<c:if test="${myDoc.docStat eq '반려' }">
																	<h5><span class="badge badge-soft-danger">${myDoc.docStat }</span></h5>
																</c:if>
																<c:if test="${myDoc.docStat eq '승인' }">
																	<h5><span class="badge badge-soft-primary">${myDoc.docStat }</span></h5>
																</c:if>
															</td>
															<td data-column-id="mname" class="gridjs-td text-center">
																<div class="icon-demo-content align-item-center">
																	<i class="uil-file-alt" data-bs-toggle="modal"
																		data-bs-target="#info${myDoc.docNo }"></i>
																</div>
															</td>
														</tr>
												</c:forEach>
													</tbody>
											</c:otherwise>
										</c:choose>
								</table>
							</div>
							<div class="row g-0 text-center text-sm-start">
								<div class="col-sm">
									<nav aria-label="Page navigation example" id="pagingArea">
										${docPagingVO.pagingHTML }</nav>
								</div>
							</div>
						</div>
					</div>
					<c:forEach items="${myDocList }" var="myDoc">
						<div class="modal fade bs-example-modal-lg"
							id="info${myDoc.docNo }" tabindex="-1"
							aria-labelledby="myLargeModalLabel" style="display: none;"
							aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="myLargeModalLabel">기안 내용</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="d-flex flex-wrap align-items-center align-content-center text-center">
											<div class="row">
												<div class="col-md-2"></div>
													<div class="col-md-8">
														${myDoc.docCont }
													</div>
												<div class="col-md-2"></div>
											</div>
										</div>
									</div> 
									<div class="modal-footer">
										<button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		var searchForm = $("#searchForm");
		var pagingArea = $("#pagingArea");

		pagingArea.on("click", "a", function(event) {
			event.preventDefault();
			var pageNo = $(this).data("page");
			searchForm.find("#page").val(pageNo);
			searchForm.submit();
		});

	});
	
function fn_apr(docNo){
	console.log(docNo);
}	

function fn_diss(docNo){
	console.log(docNo);
}
</script>


