package com.hereissue.controller;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hereissue.action.Action;
import com.hereissue.action.ActionForward;
import com.hereissue.action.IndexAction;



/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//GET, POST 둘다 받음
		
		//한글깨짐 방지(POST 방식): 가장 위에 적어주세요
		System.out.println("여기");
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;  //실제 동작하는 부분
		ActionForward forward = null; //forward, sendRedirect 설정
		
		//uri - ctx = 내가 원하는 Action 결로
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		
		/*System.out.println("uri:"+uri);
		System.out.println("ctx:"+ctx);*/
		System.out.println("페이지 이동 ====>"+command);
		
		//Action 이동
		
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction(); //객체 생성
			forward = action.excute(request, response); //객체(인스턴스) 사용
			//web에서는 무조건 request, response를 매개변수로 받아야 함
		}
		
		/*else if(command.equals("/constract.bizpoll")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		}*/
		
		
		
		
		//공통 분기 작업(페이지 이동)
		
		if(forward != null) {
			if(forward.isRedirect()) {//sendRedirect 방식
				response.sendRedirect(forward.getPath());
				
			}else {//false: forward방식
				
				//목적지 : index.jsp
				//짐 : bsetlist
				//이동수단 : forward
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
				
			}
			
		}
		
		
		
		
		
		
		
		
		
	}

}
