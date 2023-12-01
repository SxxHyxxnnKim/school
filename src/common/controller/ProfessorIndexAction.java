package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfessorIndexAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("message", "TIS의 페이지입니다.");
		this.setViewPage("/index1.jsp"); //
		this.setRedirect(false);
	}

}
