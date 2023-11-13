package kr.or.ddit.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ChatVO {
	private int chatNo;
	private String chatWriter;
	private String chatContent;
	private Date chatDate;
}
