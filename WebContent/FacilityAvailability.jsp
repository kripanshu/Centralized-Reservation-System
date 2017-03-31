<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.utdallas.models.GetDateString"%>
<%@page import="com.utdallas.classes.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String department = (String)request.getAttribute("department");
String facilityId = (String)request.getAttribute("facilityId");
String date1 = (String)request.getAttribute("date");
String facility = (String)request.getAttribute("facility");
ArrayList<Reservation> reservations = (ArrayList<Reservation>)request.getAttribute("reservations"); %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Check Availability of <%=department %> <%=facility %></title>
</head>
<body>
<table border="1">
	<tr>Schedules for <%=facility.toUpperCase() %> [<%=department %>] on <%=date1 %></tr>
	<tr><td>Date</td><td>Time</td><td>Available</td></tr>
	<%for (int i = 0; i < reservations.size(); i++){
		Reservation temp = reservations.get(i);
		String date = temp.getDate();
		String timeslot = temp.getTimeslot();
		String reserved = temp.getReserved();
		String username = temp.getUsername();
		%>
		<tr>
			<td><%=date %></td>
			<td><%=timeslot %></td>
			<td>YES</td>
		</tr>
		<%
	} %>
</table><br><br>
<h3>Check More Date</h3>

<p>Select Date:</p>

<form method="post" action="/CentralizedOnlineReservationSystem/FacilityAvailability?departmentName=<%=department %>&facilityId=<%=facilityId%>&facility=<%=facility %>">
	<table border="1">
		<tr><td>
			<select name="date">
				<%for (int i = 0; i <= 7; i++){
					String dateoption = GetDateString.getDateString(i);
					%>
					<option value="<%=dateoption %>"><%=dateoption %></option>
					<%
				} %>
			</select>
		</td><td>
		<button>Check </button>
		</td></tr>
	</table>
</form>

</body>
</html>