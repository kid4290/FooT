package work.com.byebye.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import work.com.byebye.dto.Reply;

@Repository
public class ReplyDao {
	private FactoryDAODataSource factory;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	public void setFactory(FactoryDAODataSource factory) {
		this.factory = factory;
	}

	private static ReplyDao instance = new ReplyDao();

	public static ReplyDao getInstance() {
		return instance;
	}

	/** 기본 생성자 */
	private ReplyDao() {
	}

	Reply dto = new Reply();

	/**
	 * @param dto
	 * @return
	 */
	public int replyInsert(String reCon, String docNum, String userId) {
		dto = new Reply(reCon, docNum, userId);

		return sqlSession.insert("replyInsert", dto);
	}

	public List<Reply> replySearch(String userid) {
		return sqlSession.selectList("replySearch", userid);
	}
	
	public Reply replyContent(String reNum) {
		return sqlSession.selectOne("replyContent", reNum);
	}
	
	public int replyUpdate(String reNum,String reCon) {
		dto = new Reply(reNum,reCon);
		
		return sqlSession.update("replyUpdate",dto);
	}
	

}
