package com.kwon.gbraucp.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kwon.gbraucp.member.MemberDAO;
import com.kwon.gbraucp.sns.SNSDAO;

import kiung.kwon.db.manager.KwonDBManager;

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeController() {
		KwonDBManager.getKdbm().setSqlSessionFactory("com/kwon/gbraucp/main/config.xml");
		SNSDAO.getSdao().setAllMsgCount();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO.getMdao().isLogined(request);
		request.setAttribute("contentPage", "home.jsp");
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
	}
}
