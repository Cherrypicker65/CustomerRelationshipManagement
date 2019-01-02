<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.util.*" %>
<%@ page import = "net.hufschmid.GetCustomers" %>
<html>
<head>
<title>Customer Search</title>
<jsp:useBean id="GetCustomers" scope="application" class="net.hufschmid.GetCustomers" />
<jsp:setProperty name="GetCustomers" property="*" />
<body>
<font size=4 face="Verdana" color=#112244>
<%
	GetCustomers.setUrl("jdbc:db2://hq:6789/sample");
	GetCustomers.reset();

	int i=0;
        String str=request.getParameter("Surname");
	if (str.length()>0)
		GetCustomers.setCustomerName(str);
	str=request.getParameter("Givenname");
	if (str.length()>0)
		GetCustomers.setGivenName(str);
	str=request.getParameter("Location");
	if (str.length()>0)
		GetCustomers.setDomicile(str);
	str=request.getParameter("Country");
	if (str.length()>0)
		GetCustomers.setCountryCode(str);
	Vector<GetCustomers> v = GetCustomers.getResult();
        if (v != null) {
	 out.println("<table>");
         for(i =0; i < v.size(); i++){
		out.println("<tr colspan=5>");
        	GetCustomers item=(GetCustomers)v.elementAt(i);
	  	out.println("<td>"+item.getCustomerName()+"</td><td>");
	  	out.println(item.getGivenName()+"</td><td>");
	  	out.println(item.getDomicile()+"</td><td>");
	  	out.println(item.getCountryCode()+"</td></tr>");
	 }
	 out.println("</table>");
	 out.println(i+" customers found");
	} else {
	 out.println("<p>technical error with application");
        }
%>
<br>
</body>
</head>
