package net.ma.ri.user.dao.impl;

import net.ma.ri.user.vo.UserVo;

public interface UserDao {
	public UserVo selectUser(UserVo vo)throws Exception;
	public void insertUser(UserVo vo) throws Exception;
	public int selectCountId(String id) throws Exception;
	public int selectCountEmail(String email) throws Exception;
}
