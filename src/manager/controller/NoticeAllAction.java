package manager.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manager.persistence.NoticeDAOMyBatis;
import common.controller.AbstractAction;

public class NoticeAllAction extends AbstractAction {

	NoticeDAOMyBatis dao = new NoticeDAOMyBatis();

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		// List<NoticeVO> arr = dao.getAllNotice();
		// req.setAttribute("noticeAll", arr);

		this.setViewPage("/manager/noticeAll.jsp");
		this.setRedirect(false);
	}

}
