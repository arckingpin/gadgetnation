package servlets;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/Logout")
public class Logout extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getSession().invalidate();
		
		Enumeration<String> headers = req.getHeaderNames();
		
		String redirect = "index.jsp";
		
		while( headers.hasMoreElements() ) {
			String header = headers.nextElement();
			
			System.out.printf("header: %s, value: %s",header, req.getHeader(header));
		
			if( header.equals("referer") )
				redirect = req.getHeader(header);
		}
		
		resp.sendRedirect(redirect);
		
	}

	
	
}
