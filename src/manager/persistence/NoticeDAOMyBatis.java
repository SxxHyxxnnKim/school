package manager.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.base.DAOMyBatisBase;
import manager.domain.NoticeVO;

public class NoticeDAOMyBatis extends DAOMyBatisBase {

	private final String NS = "common.mapper.NoticeMapper";
	private SqlSession ses;

	/** 공지사항 글 작성하는 메소드 */
	public int noticeInsert(NoticeVO nlist) {
		try {
			ses = this.getSqlSessionFactory().openSession(true);
			int n = ses.insert(NS + ".noticeInsert", nlist);
			return n;
		} finally {
			close(ses);
		}
	} // noticeInsert()---------------

	/** 공지사항 글 불러오는 메소드 */
	public List<NoticeVO> getAllNotice() {
		try {
			ses = this.getSqlSessionFactory().openSession();
			List<NoticeVO> arr = ses.selectList(NS + ".getNoticeList");
			return arr;
		} finally {
			close(ses);
		}
	} // getNoticeList()--------------

	/** 공지사항 검색 정보 불러오는 메소드 */
	public List<NoticeVO> getFindNotice(String ntitle) {
		try {
			ses = this.getSqlSessionFactory().openSession();
			List<NoticeVO> arr = ses.selectList(NS + ".getFindNotice", ntitle);
			return arr;
		} finally {
			close(ses);
		}
	} // getFindNotice()--------------

}
