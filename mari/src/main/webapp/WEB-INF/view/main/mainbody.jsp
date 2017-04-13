<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
<!--
	.margin_top50{
		margin-top: 20px; 
	}
-->
</style>


<div class="container margin_top50">
	<div class="row">
		<div class="col-md-3 col-md-offset-9">
		<c:if test="${sessionScope.userVo == null }">
		<form class="form-horizontal" action="${pageContext.request.contextPath }/user/login/" method="post">
			<div class="form-group">
				<label for="inputEmail" class="col-sm-3 control-label">이메일</label>  
				<div class="col-sm-9">
					<input type="email" class="form-control" id="inputEmail" name="email" placeholder="이메일을 입력하세요" >
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-3 control-label">암호</label> 
				<div class="col-sm-9">
					<input type="password" class="form-control" id="inputPassword" name="pass" placeholder="암호">
				</div>
			</div>
			<div class="form-group">
			    <div class="col-sm-6">
			      <div class="checkbox">
			        <label>
			          <input type="checkbox"> ID 저장
			        </label>
			      </div>
			    </div>
			    <div class="col-sm-6"> 
					<button class="btn btn-default btn-block" type="submit">로그인</button>
				</div>
			  </div>
		</form>
		</c:if>
		<c:if test="${sessionScope.userVo != null }">
		<div class="panel panel-default">
			<div class="panel-heading">
				${sessionScope.userVo.id } 님 안녕하세요!
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-8">
						<button type="button" class="btn btn-default btn-xs btn-block" onclick="location.href='${pageContext.request.contextPath }/creative/we/'">작품 관리하러가기</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-default btn-xs" onclick="location.href='${pageContext.request.contextPath }/user/logout/'" >로그아웃</button>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8"> 
						
					</div>
				</div>
			</div>		
		</div>
		</c:if>
		</div>
	</div> 
	<div class="row">
	</div> 
  

</div>



