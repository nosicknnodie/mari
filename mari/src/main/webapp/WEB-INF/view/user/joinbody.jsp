<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!--
.wrapper {
	margin: 0 auto;
	width: 70%;
	height:500px;
	background-color: #fff;
	border-radius: 10px;
	text-align: center; 
	opacity: 0.8;
	vertical-align: middle;
	padding-top : 20px;
	box-sizing : border-box; 
}

.title {
	font-size: 24pt;
}
.input_c {
		height: 30px; 
		width: 200px;
	}
-->
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#email").css("ime-mode", "disabled").keyup(function(event){
			if($(this).val()!=null && $(this).val() != ""){
				$(this).val($(this).val().replace(/[^0-9a-zA-Z@.]/g,""));
			}
		});
		$("#id").css("ime-mode", "auto").keyup(function(event){
			if($(this).val()!=null && $(this).val() != ""){
				$(this).val($(this).val().replace(/[^0-9a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]/g,""));
			}
		});
	});
	function onSubmit(){
		if($("#id").val().trim().length < 4 || $("#id").val().trim().length > 20){
			alert("아이디는 4자 이상 20자 이하입니다.");
			$("#id").focus();
			return false;
		}else if($("#pw").val().length < 6){
			alert("비밀번호는 6자 이상 20자 이하입니다.");
			$("#pw").focus();
			return false;
		}else if($("#pw").val()!=$("#pw2").val()){
			alert("패스워드가 맞지 않습니다.");
			$("#pw").focus();
			return false;
		}
		return true;
	}
</script>
	<div class="wrapper"> 
	<form action='${pageContext.request.contextPath }/user/join/' method="post" onsubmit="return onSubmit();">
		<p class="title">회원 가입</p>
		<br /> <input type="email" id="email" name="email" value="${vo.email }" onblur="" onclick="emailCheck()" placeholder="이메일" class="input_c" required="required"><br />
					<c:if test="${error == 'email'}"><label style="color:red;">${message }</label></c:if>
		<br />
		<br /> <input type="text" id="id" name="id" value="${vo.id }" placeholder="닉네임" class="input_c" required="required"><br />
					<c:if test="${error == 'id'}"><label style="color:red;">${message }</label></c:if>
		<br />
		<br /> <input type="password" id="pw" name="pass" placeholder="비밀번호 입력해주세요 (6자 이상)" required="required" class="input_c"><br />
					<c:if test="${error == 'pw'}"><label style="color:red;">${message }</label></c:if>
		<br />
		<br /> <input type="password" id="pw2"	placeholder="비밀번호 재입력" required="required" class="input_c"><br />
		<br />
		<br />
		<button type="submit" class="input_c"><span >회원 가입</span></button>
	</form>
	</div>
