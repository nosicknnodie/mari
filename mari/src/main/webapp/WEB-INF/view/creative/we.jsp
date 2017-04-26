<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
	<ol class="breadcrumb">
		<li><a href="${pageContext.request.contextPath }/main/main/">Main</a></li>
		<li class="active">작품관리</li>
	</ol>
	
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="col-md-2 col-md-offset-10">
				<a href="#" class="btn btn-warning">새 작품 등록</a>
			</div>
		</div>
	</div>
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#1a">연재</a></li>
		<li><a data-toggle="tab" href="#2a">완결</a></li> 
		<li><a data-toggle="tab" href="#3a">습작</a></li>
	</ul> 
	<div class="tab-content">
		<div class="tab-pane fade in active" id="1a">
			<hr/>
			<div class="panel panel-primary"> 
				<div class="panel-heading">
					<h5 class="panel-title">나는 귀족이다</h5> 
					
				</div>
				<div class="panel-body">
					<div class="col-md-2 col-xs-4 col-sm-3">
						<a href="#" class="thumbnail">
							<img alt="" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTcxIiBoZWlnaHQ9IjE4MCIgdmlld0JveD0iMCAwIDE3MSAxODAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMTcxIiBoZWlnaHQ9IjE4MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjYxIiB5PSI5MCIgc3R5bGU9ImZpbGw6I0FBQUFBQTtmb250LXdlaWdodDpib2xkO2ZvbnQtZmFtaWx5OkFyaWFsLCBIZWx2ZXRpY2EsIE9wZW4gU2Fucywgc2Fucy1zZXJpZiwgbW9ub3NwYWNlO2ZvbnQtc2l6ZToxMHB0O2RvbWluYW50LWJhc2VsaW5lOmNlbnRyYWwiPjE3MXgxODA8L3RleHQ+PC9nPjwvc3ZnPg==">
						</a>
					</div>
					<div class="col-md-10 col-xs-8 col-sm-9">
						<h3>나는 귀족이다</h3>
						<p>줄거리 ~~~~..............................</p>
						<a class="btn btn-primary" href="#">작품설정<span class="glyphicon glyphicon-chevron-right"></span></a>
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/project/bbs/">프로젝트게시판<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="2a">
			<hr/>
			<h5> 완결된 작품이 없습니다. </h5>
		</div>
		<div class="tab-pane fade" id="3a">
			<hr/>
			<h5> 습작된 작품이 없습니다. </h5>
		</div>
	</div>
</div>

<!-- <p>작품 관리 하는 곳</p>
<p>작품 리스트를 보여주고 작품에 대한 세부통계</p>
<p>작품 추가</p>
<p></p>
 -->
