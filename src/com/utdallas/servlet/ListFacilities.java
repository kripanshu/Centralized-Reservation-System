package com.utdallas.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utdallas.classes.Facility;
import com.utdallas.models.GetFacilities;

/**
 * Servlet implementation class ListFacilities
 */
@WebServlet("/ListFacilities")
public class ListFacilities extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListFacilities() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get department name
		String departmentName = request.getParameter("departmentName");
		//System.out.println(departmentName);
		GetFacilities getFacilities = new GetFacilities();
		ArrayList<Facility> facilities = new ArrayList<>();
		facilities = getFacilities.getFacilityList(departmentName);
		//System.out.println(facilities.size());
		request.setAttribute("facilities", facilities);
		request.getRequestDispatcher("Resource.jsp?departmentName="+departmentName).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
