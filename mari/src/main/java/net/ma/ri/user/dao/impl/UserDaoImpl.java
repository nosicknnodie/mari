package net.ma.ri.user.dao.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import net.ma.ri.user.vo.UserVo;


@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Resource
	private SqlSessionTemplate sqlSession;
	private final String SQL_PATH = "usersSql.";
	
	public UserVo selectUser(UserVo vo) throws Exception {
		return sqlSession.selectOne(SQL_PATH+"loginCheck", vo);
	}
	
	public void insertUser(UserVo vo) throws Exception {
		sqlSession.insert(SQL_PATH+"insertUser", vo);
	}
	
	public int selectCountId(String id) throws Exception {
		return sqlSession.selectOne(SQL_PATH+"selectIdCount", id);
	}
	
	public int selectCountEmail(String email) throws Exception {
		return sqlSession.selectOne(SQL_PATH+"selectEmailCount", email);
	}
	
}
