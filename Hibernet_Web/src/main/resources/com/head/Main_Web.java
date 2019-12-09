package com.head;

@WebServlet
public class Main_Web extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 String Customer_name = request.getParameter("customerName");
		 String Email_Id = request.getParameter("email");
		 String city_name = request.getParameter("city");
		 
		 RequestDispatcher req = request.getRequestDispatcher("CustomerDao.java");
			req.include(request, response);
	 }

}
