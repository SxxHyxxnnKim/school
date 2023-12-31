package manager.domain;

import java.io.Serializable;
import java.sql.Date;

public class NoticeVO implements Serializable {

	private String nnum;
	private String mnum;
	private String nwriter;
	private String ntitle;
	private String ncontents;
	private String nreference; //CLOB
	private Date ndate;
	
	public NoticeVO() {
		
	} //기본생성자---------

	public NoticeVO(String nnum, String mnum, String nwriter, String ntitle, String ncontents, String nreference,
			Date ndate) {
		super();
		this.nnum = nnum;
		this.mnum = mnum;
		this.nwriter = nwriter;
		this.ntitle = ntitle;
		this.ncontents = ncontents;
		this.nreference = nreference;
		this.ndate = ndate;
	} //전체 인자생성자---------

	
	public String getNnum() {
		return nnum;
	}

	public void setNnum(String nnum) {
		this.nnum = nnum;
	}

	public String getMnum() {
		return mnum;
	}

	public void setMnum(String mnum) {
		this.mnum = mnum;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontents() {
		return ncontents;
	}

	public void setNcontents(String ncontents) {
		this.ncontents = ncontents;
	}

	public String getNreference() {
		return nreference;
	}

	public void setNreference(String nreference) {
		this.nreference = nreference;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	
	
}
