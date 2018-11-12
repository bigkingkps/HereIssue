package com.hereissue.action;

public class ActionForward {
	
	
		//View Page (결과값을 어디로 전송할지)
		private String path; //"index.jsp"
		
		//페이지 이동하는 방법(sendRedirect, Forward)
		//true -> sendRedirect , false ->forward
		
		private boolean isRedirect; //false

		public String getPath() {
			return path;
		}

		public void setPath(String path) {//path ="index.jsp"
			this.path = path;
		}

		public boolean isRedirect() {
			return isRedirect;
		}

		public void setRedirect(boolean isRedirect) {//false
			this.isRedirect = isRedirect;
		}
		
		
}
