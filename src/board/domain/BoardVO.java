package board.domain;

import java.io.Serializable;
import java.sql.Date;

public class BoardVO implements Serializable {

	private int bNum;
	private String bTitle;
	private String bWriter;
	private String bContents;
	private String bFile;
	private String bPwd;
	private Date bDate;

	public BoardVO() {
	}

	public BoardVO(int bNum, String bTitle, String bWriter, String bContents, String bFile, String bPwd, Date bDate) {
		super();
		this.bNum = bNum;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContents = bContents;
		this.bFile = bFile;
		this.bPwd = bPwd;
		this.bDate = bDate;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	public String getbContents() {
		return bContents;
	}

	public void setbContents(String bContents) {
		this.bContents = bContents;
	}

	public String getbPwd() {
		return bPwd;
	}

	public void setbPwd(String bPwd) {
		this.bPwd = bPwd;
	}

	public String getbFile() {
		return bFile;
	}

	public void setbFile(String bFile) {
		this.bFile = bFile;
	}

	public int getbNum() {
		return bNum;
	}

	public void setbNum(int bNum) {
		this.bNum = bNum;
	}

	@Override
	public String toString() {
		return "BoardVO [bNum=" + bNum + ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContents=" + bContents
				+ ", bFile=" + bFile + ", bPwd=" + bPwd + ", bDate=" + bDate + "]";
	}

}
