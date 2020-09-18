package com.kh.tickets.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.tickets.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	private Logger log = 
			LoggerFactory.getLogger(getClass());

	@Override
	public int memberEnroll(Member member) {
		return sqlSession.insert("member.memberEnroll", member);
	}

	@Override
	public Member selectOneMember(String memberId) {
		return sqlSession.selectOne("member.selectOneMember", memberId);
	}

	@Override
	public List<Member> selectMemberList() {
		log.debug("memberList DAO@@");
		return sqlSession.selectList("member.selectMemberList");
	}

	@Override
	public int deleteMember(String memberId) {
		return sqlSession.delete("member.deleteMember", memberId);
	}

	@Override
	public int updatePassword(Member member) {
		return sqlSession.update("member.updatePassword", member);
	}


	
	
}