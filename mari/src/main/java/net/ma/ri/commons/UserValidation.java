package net.ma.ri.commons;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import net.ma.ri.user.vo.UserVo;

@Component
public class UserValidation {
	/** 이메일 검증 */
	private final Pattern EMAIL_PATTEN = Pattern.compile("^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$"); 
	/** 비밀번호 검증  6자 이상 20자 이하*/
	private final Pattern PW_PATTEN = Pattern.compile("^[a-zA-Z0-9]{6,20}$"); 
	
	/** ID 검증 4자 이상 10자 이하*/
	private final Pattern ID_PATTEN = Pattern.compile("^[a-zA-Z0-9가-힣]{4,20}$"); 
	
	/**
	 * @param vo
	 * @return
	 * @설명 회원 정보 유효성 검사
	 */
	public boolean joinMember(UserVo vo){
		if(!EMAIL_PATTEN.matcher(vo.getEmail()).matches()) return false;
		if(!PW_PATTEN.matcher(vo.getPass()).matches()) return false;
		
		return true;
	}
	
	public boolean emailCheck(String email){
		if(EMAIL_PATTEN.matcher(email).matches()){	//정상적인 이메일
			return true;
		}else{
			return false;
		}
	}
	
	public boolean pwCheck(String pw){
		if(PW_PATTEN.matcher(pw).matches()){
			return true;
		}else {
			return false;
		}
	}
	
	public boolean idCheck(String id){
		if(ID_PATTEN.matcher(id).matches())
			return true;
		else
			return false;
	}
	
}
