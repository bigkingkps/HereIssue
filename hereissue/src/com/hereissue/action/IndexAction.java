package com.hereissue.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hereissue.dao.IssueDAO;



public class IndexAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="index.jsp";

		IssueDAO iDao = new IssueDAO();
		
		ArrayList<String> list =iDao.keywordCrawling();
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
