package com.hereissue.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertMember implements Action {

		String id ="hgd4717";
	   String pw ="h47174717";
	   String name = "홍길동";
	   String nick = "사기꾼";
	   String addr = "전라남도 장성군";
	   String email = "honggildong@gmail.com";
	   String birth = "20181114";
	   String status = "N";
	   
	   
	
	
	
	
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
