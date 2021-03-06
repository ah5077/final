package com.kh.tickets.performance.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Performance implements Serializable {
	
	private int perNo;
	private String memberId;
	private String categoryCode;
	private String locationCode;
	private String perTitle;
	private String perDirector;
	private String perActor;
	private String theaterNo;
	private int perTime;
	private String perContent;
	private String perImgOriginalFileName;
	private String perImgRenamedFileName;
	private String detailImgOriginalFileName;
	private String detailImgRenamedFileName;
	private int perRating;
	private String perDisplay;
	private String adminApproval;
	private Date perRegisterDate;
	private Date perStartDate;
	private Date perEndDate;
	private int saleCnt;
	private String aloneSale;
	private int price;
	private java.util.Date reservationStartDate;
	

}
