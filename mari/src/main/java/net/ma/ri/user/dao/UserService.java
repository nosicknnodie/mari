package net.ma.ri.user.dao;

import net.ma.ri.user.vo.UserVo;

public interface UserService {
	public void addUser(UserVo vo) throws Exception;
	public UserVo loginCheck(UserVo vo) throws Exception;
	public boolean isIdCheck(String id) throws Exception;
	public boolean isEmailCheck(String email) throws Exception;
}
