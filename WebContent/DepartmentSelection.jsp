<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.utdallas.classes.Department"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/TweenLite.min.js"></script>
<script type="text/javascript" src="js/TweenMax.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<%ArrayList<Department> departments = (ArrayList<Department>)request.getAttribute("departments"); %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Welcome to CRS</title>
<style>
body{
	margin:0;
	background-color:#e9e9e9;
	overflow:auto;
}

#btn1{
	background:#33b5e5;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;


}
#btn2{
	background:#33b5e5;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;
}

#btn3{
	background:#33b5e5;
	border-color:#F60;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;
}

#btn4{
	background:#33b5e5;
	border-color:#F60;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	margin-top:30px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;
}
#btn5{
	background:#33b5e5;
	border-color:#F60;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	margin-top:30px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;
}

#btn6{
	background:#33b5e5;
	height:200px;
	width:200px;
	position:relative;
	margin-left:10px;
	margin-top:30px;
	left:900px;
	cursor:pointer;

	color:#FFF;
	font-size:15px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
	line-height:300px;
	padding-left:10px;
	text-align:left;
}

#content{
	background:#369;
	height:480px;
	width:750px;
	position:relative;
	top:500px;
	z-index:0;
}

#backbutton{
	position:relative;
	left:760px;
	cursor:pointer;
}

#caption{
	position:relative;
	top:-60px;

	color:#FFF;
	font-size:25px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

#pagecaption{
	position:relative;
	top:-60px;

	color:#FFF;
	font-size:25px;
	font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
</style>
</head>
<body>
<div style="width:100%; height:80px; overflow:hidden; margin: 0 auto; background-color:#333">

  <div style="width:750px; height:80px; margin: 0 auto; overflow:hidden; position:relative">

        <div id="caption" style="height:44px; margin-top:20px;float:left; margin-left:12px; position:absolute"> Hello <%String name=request.getParameter("name"); %><%=name %>!</div>

        <div id="backbutton" style="height:44px; width:44px; margin-top:15px; float:left; position:absolute"> <img src="imgs/backbtn.png" width="44" height="44" /> </div>

       <div id="pagecaption" style="height:44px; margin-top:20px;float:left; margin-left:12px; position:absolute"> Caption </div>
  </div>

</div>

<div style="width:750px; height:450px; overflow:hidden; margin: 0 auto; position:relative; margin-top:35px;">

<%String img=null; %>

<%for(int i=0; i<departments.size(); i++){
	Department temp = departments.get(i);
	String departmentName = temp.getDepartmentName();
	String departmentID = temp.getDepartmentID();
	String address = temp.getDepartmentAddress();
	String email = temp.getContactEmail();
	String phone = temp.getContactPhone();
	img = temp.getImg();%>
		<a href="/CentralizedOnlineReservationSystem/ListFacilities?departmentName=<%=departmentName %>"><div id="btn1" style="float:left">

		<table style="margin:1px;">
		        <td>
		            <tr>
		                <p> <%=departmentName %></p>
		            </tr>

		        </td>
		    </table>
	</div> </a>
	
<%} %>




    <a href="2.html" target="main"><div id="btn2" style="float:left">

					<table style="margin:1px;">
					        <td>
					            <tr>
					                <p> Student Health Center</p>
					            </tr>

					        </td>
					    </table> </div> </a>
    <a href="3.html" target="main"><div id="btn3" style="float:left">
			<table style="margin:1px;">
						<td>
								<tr>
										<p> School Of Engnieering </p>
								</tr>

						</td>
				</table> </div> </a>
    <a href="4.html" target="main"><div id="btn4" style="float:left">
			<table style="margin:1px">
						<td>
								<tr>
									<p> School Of Management </p>
								</tr>

						</td>
				</table></div> </a>
    <a href="5.html" target="main"><div id="btn5" style="float:left">
			<table style="margin:1px">
						<td>
								<tr>
								<p> Sports Department </p>
								</tr>

						</td>
				</table> </div> </a>
    <a href="6.html" target="main"><div id="btn6" style="float:left">
			<table style="margin:1px">
						<td>
								<tr>
							<p> Career Department </p>
								</tr>

						</td>
				</table> </div> </a>
    <div id="content" style="position:absolute"> <iframe name="main" frameborder=0 height=450 width=750></iframe>  </div>

</div>

<!--footer-->
<div style="width:100%; height:220px; overflow:hidden; margin: 0 auto; background-color:#333; margin-top:20px;">
    <div style="width:750px; height:80px; margin: 0 auto;">
    <p style="text-align:center; color:#FFF; font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif; font-size:x-small">  <a href="http://www.utd.edu">UTD</a>  </p>

    </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
  TweenLite.to($("#caption"),2,{css:{top:0},delay:1, ease:Power2.easeOut});
  TweenLite.to($("#btn1"),2,{css:{left:0},delay:2, ease:Power2.easeOut});
  TweenLite.to($("#btn2"),2,{css:{left:20},delay:2.5, ease:Power2.easeOut});
  TweenLite.to($("#btn3"),2,{css:{left:40},delay:3, ease:Power2.easeOut});
  TweenLite.to($("#btn4"),2,{css:{left:0},delay:3.5, ease:Power2.easeOut});
  TweenLite.to($("#btn5"),2,{css:{left:20},delay:4, ease:Power2.easeOut});
  TweenLite.to($("#btn6"),2,{css:{left:40},delay:4.5, ease:Power2.easeOut});

  });


  $("#btn1").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("About Us");

  });

  $("#btn2").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("Our Products");

  });

  $("#btn3").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("Who We Are?");

  });

  $("#btn4").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("We on Map");

  });

  $("#btn5").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("Contact Us");

  });

   $("#btn6").click(function(){
	  TweenLite.to($("#content"),0.5,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#backbutton"),1,{css:{left:650, rotation:-180}, ease:Power2.easeOut});
	  TweenLite.to($("#pagecaption"),1,{css:{top:0}, ease:Power2.easeOut});
	  TweenLite.to($("#caption"),1,{css:{top:90}, ease:Power2.easeOut});
	  $("#pagecaption").text("Feedback");

  });


   $("#backbutton").click(function(){
	    TweenLite.to($("#content"),1,{css:{top:500}, ease:Power2.easeIn});
		TweenLite.to($("#backbutton"),1,{css:{left:760, rotation:0}, ease:Power2.easeIn});
		TweenLite.to($("#pagecaption"),1,{css:{top:-60}, ease:Power2.easeOut});
		TweenLite.to($("#caption"),1,{css:{top:0}, ease:Power2.easeOut});
	});
</script>



</body>
</html>