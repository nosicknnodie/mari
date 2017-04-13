<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!--

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
-->
</style>



<div class="container">

      <form class="form-signin" action="${pageContext.request.contextPath }/user/login" method="post">
        <h2 class="form-signin-heading">로그인</h2>
        <label for="inputEmail" class="sr-only">Email 주소</label>
        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email 입력" required autofocus>
        <label for="inputPassword" class="sr-only">비밀 번호</label>
        <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="비밀번호 입력" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> ID 저장
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
	      <a href="#">비밀번호 찾기</a> / <a href='${pageContext.request.contextPath }/user/join'>회원가입</a>
		<label style="color: red">${message}</label>
      </form>
</div> <!-- /container -->



