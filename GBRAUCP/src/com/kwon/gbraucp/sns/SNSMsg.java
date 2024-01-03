package com.kwon.gbraucp.sns;

import java.math.BigDecimal;
import java.util.Date;

public class SNSMsg {
	private BigDecimal gs_no;
	private String gs_writer;
	private String gs_txt;
	private Date gs_date;

	private String gm_photo;

	// 댓글들

	public SNSMsg() {
		// TODO Auto-generated constructor stub
	}

	public SNSMsg(BigDecimal gs_no, String gs_writer, String gs_txt, Date gs_date, String gm_photo) {
		super();
		this.gs_no = gs_no;
		this.gs_writer = gs_writer;
		this.gs_txt = gs_txt;
		this.gs_date = gs_date;
		this.gm_photo = gm_photo;
	}

	public BigDecimal getGs_no() {
		return gs_no;
	}

	public void setGs_no(BigDecimal gs_no) {
		this.gs_no = gs_no;
	}

	public String getGs_writer() {
		return gs_writer;
	}

	public void setGs_writer(String gs_writer) {
		this.gs_writer = gs_writer;
	}

	public String getGs_txt() {
		return gs_txt;
	}

	public void setGs_txt(String gs_txt) {
		this.gs_txt = gs_txt;
	}

	public Date getGs_date() {
		return gs_date;
	}

	public void setGs_date(Date gs_date) {
		this.gs_date = gs_date;
	}

	public String getGm_photo() {
		return gm_photo;
	}

	public void setGm_photo(String gm_photo) {
		this.gm_photo = gm_photo;
	}

}
