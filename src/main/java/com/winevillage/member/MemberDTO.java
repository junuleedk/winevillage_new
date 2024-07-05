package com.winevillage.member;

import lombok.Data;

@Data
public class MemberDTO {
	private int memberNo;
	private String memberId;
	private String memberName;
	private String memberBirth;
	private String memberPhoneNumber;
	private String memberPassword;
	private String memberEmail;
	private String memberPostcode;
	private String memberAddress1;
	private String memberAddress2;
	private String memberGrade;
	private java.sql.Date memberJoinDate;
	private int memberPoints;
	private String memberRole;
	private String memberEnabled;
	private String memberMaritalStatus;
	private String memberAnniversary;
	private String memberStore;
	private String memberBizReferenceCode;
}
