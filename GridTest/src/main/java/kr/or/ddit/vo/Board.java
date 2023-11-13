package kr.or.ddit.vo;


import org.hibernate.validator.constraints.NotBlank;

import lombok.Data;

@Data
public class Board {
	private int boardNo;
	@NotBlank
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String gender;
}
