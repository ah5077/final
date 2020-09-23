package com.kh.tickets.performance.model.dao;

import java.util.List;

import com.kh.tickets.performance.model.vo.Performance;
import com.kh.tickets.performance.model.vo.PerformanceHall;

public interface PerformanceDAO {

	int performanceRegister(Performance performance);

	List<Performance> selectPerformanceList();

	List<Performance> categoryListView(String category);

	String getCategoryName(String category);

	int approvePerRegister(int perNo);

	List<Performance> adminApprovalPerList();


	List<Performance> companyPerList(String memberId);

	Performance selectOnePerformance(int perNo);

	List<PerformanceHall> searchHallName(String keyword);

	int perUpdate(Performance performance);


}
