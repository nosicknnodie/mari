package net.ma.ri.user.dao.service;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;

import net.ma.ri.user.dao.UserService;
import net.ma.ri.user.dao.impl.UserDao;
import net.ma.ri.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
	
	@Resource
	private ShaPasswordEncoder pwEncoder;		//sha256 암호화 클래스.
	
	public void addUser(UserVo vo) throws Exception {
		//비밀번호 암호화 작업.
		vo.setPass(pwEncoder.encodePassword(vo.getPass(), null));
		userDao.insertUser(vo); 
	}

	public UserVo loginCheck(UserVo vo) throws Exception {
		vo.setPass(pwEncoder.encodePassword(vo.getPass(), null));
		return userDao.selectUser(vo);
	}

	public boolean isIdCheck(String id) throws Exception {
		if(userDao.selectCountId(id) > 0)
			return true;		//존재하면 true
		else 
			return false;	//존재하지 않으면 false;
	}

	public boolean isEmailCheck(String email) throws Exception {
		if(userDao.selectCountEmail(email) > 0)
			return true;		//존재하면 true
		else
			return false;	//존재하지 않으면 false;
	}
	
}
