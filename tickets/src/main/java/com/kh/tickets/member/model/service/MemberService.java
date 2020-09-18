package com.kh.tickets.member.model.service;

import java.util.List;

import com.kh.tickets.member.model.vo.Member;

public interface MemberService {

	int memberEnroll(Member member);

	Member selectOneMember(String memberId);

	List<Member> selectMemberList();

	int deleteMember(String memberId);

	int updatePassword(Member member);

}