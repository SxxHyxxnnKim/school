package prof.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractAction;
import prof.domain.ScoreViewVO;
import prof.persistence.ClassListDAOMyBatis;

public class StudentByClassAction extends AbstractAction {

	ClassListDAOMyBatis cdao = new ClassListDAOMyBatis();

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 과목명 불러오기
		String lname = req.getParameter("lname");
		String lnum = req.getParameter("lnum");
		// HttpSession session = req.getSession();
		// String lnum = session.getAttribute("lnum").toString();
		List<ScoreViewVO> sList = cdao.studentListByClass(Integer.parseInt(lnum));
		req.setAttribute("sList", sList);

		HttpSession ses = req.getSession();
		ses.setAttribute("lname", lname);
		ses.setAttribute("lnum", lnum);

		this.setViewPage("insertScore.jsp");
		this.setRedirect(false);
	}

}
