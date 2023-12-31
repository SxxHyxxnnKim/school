package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.base.CommonUtil;
import student.domain.StudentVO;
import student.persistence.StudentDAOMyBatis;

public class ChangePwdEndAction1 extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub\

		StudentDAOMyBatis dao = new StudentDAOMyBatis();
		HttpSession session = req.getSession();

		String pwd = req.getParameter("newPwd");
		StudentVO svo = (StudentVO) session.getAttribute("loginUser");

		int num = svo.getSnum();

		int n = dao.changePwd(num, pwd);

		String msg = (n > 0) ? "수정 성공" : "수정 실패";
		String loc = (n > 0) ? "mypage.do" : "javascript:history.back()";
		this.setViewPage(CommonUtil.addMsgLoc(req, msg, loc));
		this.setRedirect(false);

	}

}
