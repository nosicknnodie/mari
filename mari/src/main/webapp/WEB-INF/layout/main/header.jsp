<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
<!--
	$(function(){
		$("li a[href='"+$(location).attr('pathname')+"']").parent().addClass("active");
	});
//-->
</script>
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath }/main/main/">Mari Novel</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
	         <ul class="nav navbar-nav">
	           <li><a href="#">작품</a></li> 
	           <li><a href="#contact">게시판</a></li>
	         </ul>
	         <ul class="nav navbar-nav navbar-right">
	         	<c:if test="${sessionScope.userVo == null }">
	         	<li><a href="${pageContext.request.contextPath }/user/login/">login</a></li>
	         	<li><a href="${pageContext.request.contextPath }/user/join/">join</a></li>
	         	</c:if>
	         	<c:if test="${sessionScope.userVo != null }">
	         	<li><a href="${pageContext.request.contextPath }/user/logout/">log-out</a></li>
	         	</c:if> 
	         </ul>
	         <form class="navbar-form navbar-right">
		      <div class="form-group">
		        <input type="text" class="form-control" placeholder="작품 검색">
		      </div>
		      <button type="submit" class="btn btn-default">검색</button>
		    </form>
	       </div><!--/.nav-collapse -->
	</div>
