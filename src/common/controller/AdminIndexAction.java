package common.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.domain.BoardVO;
import board.persistence.FreeBoardDAOMyBatis;

public class AdminIndexAction extends AbstractAction {

	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		System.out.println("adminIndexAction의 execute...");
		req.setAttribute("msg", "TIS의 페이지입니다.");

		FreeBoardDAOMyBatis dao = new FreeBoardDAOMyBatis();
		List<BoardVO> board = dao.getBoardByDate();
		req.setAttribute("board", board);

		this.setViewPage("/mindex.jsp"); //
		this.setRedirect(false);
	}

}/////////////////
